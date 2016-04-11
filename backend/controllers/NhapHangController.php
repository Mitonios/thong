<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 3/22/2016
 * Time: 3:30 PM
 */

namespace backend\controllers;

use common\models\base\Metadata;
use common\models\PhieuNhapHangSearchForm;
use common\models\SanPhamGhiChu;
use common\models\SanPhamKho;
use common\models\SanPhamMetadata;
use Yii;
use common\models\PhieuNhapHang;
use yii\data\Pagination;
use yii\db\ActiveQuery;
use yii\helpers\Json;
use yii\helpers\Url;
use yii\web\HttpException;

class NhapHangController extends BackendController
{
    public function actionIndex()
    {
        $model = new PhieuNhapHangSearchForm();
        /**
         * @var $query ActiveQuery
         */
        $query = PhieuNhapHang::find();
        $query->andFilterWhere(['deleted' => PhieuNhapHang::DELETED_FALSE]);
        if ($model->load(Yii::$app->request->get())) {
            if ($model->validate()) {
                if ($model->id)
                    $query->andFilterWhere(['id' => $model->id]);
                if ($model->ma_phieu_nhap)
                    $query->andFilterWhere(['like', 'ma_phieu_nhap', $model->ma_phieu_nhap]);
                if ($model->tong_hang_from)
                    $query->andFilterWhere(['>=', 'tong_hang', $model->tong_hang_from]);
                if ($model->tong_hang_to)
                    $query->andFilterWhere(['<=', 'tong_hang', $model->tong_hang_to]);
                if ($model->ngay_nhap_from)
                    $query->andFilterWhere(['>=', 'ngay_nhap', date("Y-m-d", strtotime(str_replace("/", '-', $model->ngay_nhap_from)))]);
                if ($model->ngay_nhap_to)
                    $query->andFilterWhere(['<=', 'ngay_nhap', date("Y-m-d", strtotime(str_replace("/", '-', $model->ngay_nhap_to)))]);
                if ($model->tong_gia_from)
                    $query->andFilterWhere(['>=', 'tong_gia_nhap_vn', $model->tong_gia_from]);
                if ($model->tong_gia_to)
                    $query->andFilterWhere(['<=', 'tong_gia_nhap_vn', $model->tong_gia_to]);
            }
        }
        $count = $query->count();
        $pagination = new Pagination(['totalCount' => $count]);
        $models = $query->orderBy(['ngay_nhap' => SORT_DESC])->offset($pagination->offset)
            ->limit($pagination->limit)->all();

        return $this->render("index", [
            'model' => $model,
            'models' => $models,
            'pagination' => $pagination
        ]);
    }

    public function actionCreate()
    {
        $check = PhieuNhapHang::findOne(['status' => PhieuNhapHang::STATUS_DRAFT, 'created_by' => Yii::$app->user->id, 'deleted' => PhieuNhapHang::DELETED_FALSE]);
        if ($check) {
            return $this->redirect(Url::to(['update', 'id' => $check->id]));
        } else {
            $model = new PhieuNhapHang();
            $model->ngay_nhap = date("d/m/Y");
            if (Yii::$app->request->post()) {
                $model->status = (int)Yii::$app->request->post('status');
                if ($model->deleted == $model::DELETED_TRUE)
                    $this->redirectUrl = Url::to(['index']);
                else
                    if ($model->save()) {
                        $model = self::afterSave($model);
                        Yii::$app->session->setFlash("success", "Lưu thành công");
                        if ($model->status == $model::STATUS_DRAFT)
                            $this->redirectUrl = Url::to(['update', 'id' => $model->id]);
                    } else
                        Yii::$app->session->setFlash("error", Json::encode($model->errors));

                return $this->redirect($this->redirectUrl);
            }
            return $this->render("create", ['model' => $model]);
        }

    }

    public function actionUpdate($id)
    {
        /**
         * @var $model PhieuNhapHang
         */
        $model = PhieuNhapHang::findOne($id);
        if ($model->deleted == $model::DELETED_TRUE)
            throw new HttpException(404, 'Phiếu này đã bị xóa rồi, đào mộ làm gì');

        if (Yii::$app->request->post()) {
            $model->status = Yii::$app->request->post('status');
            if ($model->save()) {
                $model = self::afterSave($model);
                Yii::$app->session->setFlash("success", "Lưu thành công");
                if ($model->status == $model::STATUS_FINISH)
                    $this->redirectUrl = Url::to(['index']);
            } else
                Yii::$app->session->setFlash("error", Json::encode($model->errors));
            return $this->redirect($this->redirectUrl);
        }
        return $this->render("update", ['model' => $model]);
    }

    public function actionDelete($id)
    {

        $model = PhieuNhapHang::findOne($id);
        $model->deleted = $model::DELETED_TRUE;
        $model->save();
        Yii::$app->session->setFlash("success", "Xóa phiếu thành công");
        return $this->redirect(['index']);

    }

    private function afterSave($model)
    {
        /**
         * @var $model PhieuNhapHang
         */
        if (Yii::$app->request->post('PhieuNhapHang')['other']) {
            parse_str(Yii::$app->request->post('PhieuNhapHang')['other'], $data);
            $model->attributes = $data;
        }

        $model->temp_data = Yii::$app->request->post('temp_data');

        $model->tong_hang = 0;
        $model->tong_gia_nhap_vn = 0;
        if (!empty($model->temp_data)) {
            $items = Json::decode($model->temp_data, true);
            foreach ($items as $item) {
                $model->tong_hang += (int)$item[5];
                $model->tong_gia_nhap_vn += (int)$item[4] * $item[5];
            }
        }
        if ($model->status == $model::STATUS_FINISH) {
            $metadata = Metadata::find()->all();
            $san_pham_ids = [];
            //Tao item
            $items = Json::decode($model->temp_data);
            foreach ($items as $item) {
                $ma = trim($item[0]);
                $ten = trim($item[1]);
                $gia = $item[4];
                $so_luong = $item[5];
                $ghi_chu = trim($item[7]);
                if (!empty($ten) && !empty($gia) && !empty($so_luong)) {
                    $san_pham = new SanPhamKho();
                    $san_pham->ma_nhap = $ma;
                    $san_pham->ten = $ten;
                    $san_pham->gia_nhap = $gia;
                    $san_pham->so_luong_nhap = $san_pham->so_luong_ton = $so_luong;
                    $san_pham->ghi_chu = $ghi_chu;
                    $san_pham->ngay_nhap = date("Y-m-d", strtotime(str_replace("/", '-', $model->ngay_nhap)));
                    $san_pham->phieu_nhap_id = $model->id;
                    if ($san_pham->save()) {
                        $san_pham_ids[] = $san_pham->id;
                        if (!empty($ghi_chu)) {
                            $ghi_chu_model = new SanPhamGhiChu();
                            $ghi_chu_model->ma_goc = $san_pham->ma_goc;
                            $ghi_chu_model->ghi_chu = $ghi_chu;
                            $ghi_chu_model->san_pham_nhap_id = $san_pham->id;
                            if (!$ghi_chu_model->save()) {
                                Yii::$app->session->setFlash("error", Json::encode($ghi_chu_model->errors));
                            }
                        }
                        if (!empty($metadata)) {
                            foreach ($metadata as $meta_item) {
                                /**
                                 * @var $meta_item Metadata
                                 */
                                $san_pham_meta = new SanPhamMetadata();
                                $san_pham_meta->ma_goc = $san_pham->ma_goc;
                                $san_pham_meta->san_pham_nhap_id = $san_pham->id;
                                $san_pham_meta->metadata_id = $meta_item->id;
                                $san_pham_meta->metadata_name = $meta_item->name;
                                $san_pham_meta->value = $item[$meta_item->position];
                                if (!$san_pham_meta->save()) {
                                    Yii::$app->session->setFlash("error", Json::encode($san_pham_meta->errors));
                                }
                            }
                        }
                    } else {
                        if (!empty($san_pham_ids))
                            SanPhamKho::deleteAll(['id' => $san_pham_ids]);
                        $model->status = $model::STATUS_DRAFT;
                        Yii::$app->session->setFlash("error", "Không thể tạo sản phẩm Model");
                    }
                }
            }
        }

        $model->update();


        return $model;
    }

    public function actionQuickUpdate()
    {
        if (!empty(Yii::$app->request->post('data'))) {
            /**
             * @var $model PhieuNhapHang
             */
            $model = PhieuNhapHang::findOne(Yii::$app->request->post('id'));
            $data = Json::decode($model->temp_data, true);
            foreach (Yii::$app->request->post('data') as $item) {
                $data[$item[0]][$item[1]] = $item[3];
            }
            $model->updateAttributes(['temp_data' => Json::encode($data)]);
        }
    }

    public function actionUpdateInfo($id)
    {

        /**
         * @var $model PhieuNhapHang
         */
        $model = PhieuNhapHang::findOne($id);
        if ($model->load(Yii::$app->request->post())) {
            if ($model->save()) {
                Yii::$app->session->setFlash("success", "Cập nhật thành công phiếu nhập #" . $id);
            } else {
                Yii::$app->session->setFlash("error", Json::encode($model->errors));
            }
            return $this->redirect(\Yii::$app->request->getReferrer());
        }
        return $this->renderPartial("update_info", ['model' => $model]);
    }
}