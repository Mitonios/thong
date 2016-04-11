<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 4/9/2016
 * Time: 4:40 PM
 */

namespace backend\controllers;

use common\models\SanPham;
use common\models\SanPhamKho;
use Yii;
use common\models\PhieuXuatHangSearchForm;
use common\models\PhieuXuatKho;
use yii\data\Pagination;
use yii\helpers\Json;
use yii\web\HttpException;

class PhieuXuatKhoController extends BackendController
{
    public function actionIndex()
    {
        $model = new PhieuXuatHangSearchForm();
        /**
         * @var $query ActiveQuery
         */
        $query = PhieuXuatKho::find();
        $query->andFilterWhere(['deleted' => PhieuXuatKho::DELETED_FALSE]);
        if ($model->load(Yii::$app->request->get())) {
            if ($model->validate()) {
                if ($model->id)
                    $query->andFilterWhere(['id' => $model->id]);
                if ($model->ma_phieu_xuat)
                    $query->andFilterWhere(['like', 'ma_phieu_xuat', $model->ma_phieu_xuat]);
                if ($model->tong_hang_from)
                    $query->andFilterWhere(['>=', 'tong_hang', $model->tong_hang_from]);
                if ($model->tong_hang_to)
                    $query->andFilterWhere(['<=', 'tong_hang', $model->tong_hang_to]);
                if ($model->ngay_xuat_from)
                    $query->andFilterWhere(['>=', 'ngay_xuat', date("Y-m-d", strtotime(str_replace("/", '-', $model->ngay_xuat_from)))]);
                if ($model->ngay_xuat_to)
                    $query->andFilterWhere(['<=', 'ngay_xuat', date("Y-m-d", strtotime(str_replace("/", '-', $model->ngay_xuat_to)))]);
                if ($model->tong_gia_from)
                    $query->andFilterWhere(['>=', 'tong_gia_xuat_vn', $model->tong_gia_from]);
                if ($model->tong_gia_to)
                    $query->andFilterWhere(['<=', 'tong_gia_xuat_vn', $model->tong_gia_to]);
            }
        }
        $count = $query->count();
        $pagination = new Pagination(['totalCount' => $count]);
        $models = $query->orderBy(['ngay_xuat' => SORT_DESC])->offset($pagination->offset)
            ->limit($pagination->limit)->all();

        return $this->render("index", [
            'model' => $model,
            'models' => $models,
            'pagination' => $pagination
        ]);
    }

    public function actionCreate()
    {
        $model = new PhieuXuatKho();
        if ($model->save()) {
            Yii::$app->session->setFlash("success", "Tạo phiếu thành công, vui lòng cập nhật");
            return $this->redirect(['update', 'id' => $model->id]);
        } else {
            throw new HttpException(404, Json::encode($model->errors));
        }
    }

    public function actionDelete($id)
    {
        $model = PhieuXuatKho::findOne($id);
        $model->deleted = $model::DELETED_TRUE;
        $model->update();
        \Yii::$app->session->setFlash("success", "Hủy phiếu #" . $model->ma_phieu_xuat . " thành công");
        return $this->redirect(\Yii::$app->request->getReferrer());
    }

    public function actionUpdate($id)
    {
        $model = PhieuXuatKho::findOne($id);
        if ($model->load(\Yii::$app->request->post())) {
            $model->temp_data = null;
            if (\Yii::$app->request->post('SanPhamKho'))
                $model->temp_data = Json::encode(\Yii::$app->request->post('SanPhamKho'));

            $model->ngay_xuat = date("Y-m-d");
            if (\Yii::$app->request->post('save') && \Yii::$app->request->post('save') == 'publish') {
                $model->status = $model::STATUS_FINISH;
                if ($model->temp_data) {
                    $items = Json::decode($model->temp_data);
                    foreach ($items as $item) {
                        $san_pham = new SanPham();
                        $san_pham->setAttributes($item);
                        $san_pham->phieu_xuat_kho_id = $model->id;
                        $san_pham->dai_ly_id = $model->dai_ly_id;
                        $san_pham->ngay_xuat = date("Y-m-d");
                        $san_pham->so_luong_ton = $san_pham->so_luong_nhap = $item['so_luong_xuat'];
                        /**
                         * @var $sp_kho SanPhamKho
                         */
                        $sp_kho = SanPhamKho::find()->where(['ma_goc' => $san_pham->ma_goc])->one();
                        if ($sp_kho->so_luong_ton >= $san_pham->so_luong_nhap) {
                            if (!$san_pham->save()) {
                                throw new HttpException(404, Json::encode($model->errors));
                            }
                            $sp_kho->updateCounters(['so_luong_ton' => -$san_pham->so_luong_nhap]);
                        }

                    }
                }
            }
            if ($model->save()) {
                if (\Yii::$app->request->isAjax)
                    echo "Lưu thành công";

            } else {
                throw new HttpException(404, Json::encode($model->errors));
            }
        }
        if (!Yii::$app->request->isAjax)
            return $this->render("update", ['model' => $model]);
    }
}