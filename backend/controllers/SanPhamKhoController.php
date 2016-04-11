<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 3/22/2016
 * Time: 3:30 PM
 */

namespace backend\controllers;

use common\models\PhieuXuatKho;
use common\models\SanPhamKho;
use common\models\SanPhamKhoSearchForm;
use common\models\SanPhamMetadata;
use Yii;
use yii\data\Pagination;
use yii\db\ActiveQuery;
use yii\db\Expression;
use yii\helpers\ArrayHelper;
use yii\helpers\Json;
use yii\web\HttpException;

class SanPhamKhoController extends BackendController
{
    public function actionIndex()
    {
        /**
         * @var $query ActiveQuery
         */
        $model = new SanPhamKhoSearchForm();

        $query = SanPhamKho::find();
        $query->andFilterWhere(['deleted' => SanPhamKho::DELETED_FALSE]);
        if (Yii::$app->request->get('chuyen_muc_id'))
            $query->andFilterWhere(['chuyen_muc_id' => Yii::$app->request->get('chuyen_muc_id')]);

        if ($model->load(Yii::$app->request->get())) {
            if ($model->validate()) {
                if ($model->id)
                    $query->andFilterWhere(['id' => $model->id]);
                if ($model->ten)
                    $query->andFilterWhere(['like', 'ten', $model->ten]);
                if ($model->status)
                    $query->andFilterWhere(['status' => $model->status]);
                if ($model->chuyen_muc_id)
                    $query->andFilterWhere(['chuyen_muc_id' => $model->chuyen_muc_id]);
                if ($model->ma_nhap)
                    $query->andFilterWhere(['like', 'ma_nhap', $model->ma_nhap]);
                if ($model->phieu_nhap_id)
                    $query->andFilterWhere(['phieu_nhap_id' => $model->phieu_nhap_id]);
            }
        }
        $count = $query->count();
        $pagination = new Pagination(['totalCount' => $count]);
        $pagination->pageSize = Yii::$app->config->get(Yii::$app->user->id . 'list_item_limit', 20);
        $models = $query->orderBy(['id' => SORT_DESC])->offset($pagination->offset)
            ->limit($pagination->limit)->all();

        return $this->render("index", [
            'model' => $model,
            'models' => $models,
            'count' => $count,
            'pagination' => $pagination
        ]);
    }

    public function actionCreate()
    {
        $model = new SanPhamKho();
        if ($model->save()) {
            Yii::$app->session->setFlash("success", "Vui lòng điền thông tin sản phẩm");
        } else {
            Yii::$app->session->setFlash("error", Json::encode($model->errors));
        }
        return $this->redirect(['update', 'id' => $model->id]);
    }


    public function actionUpdate($id)
    {
        /**
         * @var $model SanPhamKho
         */
        $model = SanPhamKho::findOne($id);
        if ($model->load(Yii::$app->request->post())) {
            if ($model->save()) {
                if (Yii::$app->request->post('SanPhamMetadata')) {
                    foreach (Yii::$app->request->post('SanPhamMetadata') as $id => $value) {
                        $item = SanPhamMetadata::findOne($id);
                        $item->setAttributes($value);
                        $item->update();
                        //SanPhamMetadata::updateAll(['value' => $value], ['id' => $id]);
                    }
                }
                Yii::$app->session->setFlash("success", "Cập nhật thành công " . $model->ten);
                if (Yii::$app->request->post('save')) {
                    return $this->redirect(['index']);
                }
            } else {
                Yii::$app->session->setFlash("error", "Không cập nhật được " . $model->ten);
            }
            return $this->redirect(\Yii::$app->request->getReferrer());
        }
        return $this->render("update", ['model' => $model]);
    }

    public function actionChangeAttribute()
    {
        $model = SanPhamKho::findOne(Yii::$app->request->post('id'));
        $attr = Yii::$app->request->post('attr');
        $model->$attr = Yii::$app->request->post('value');
        if ($model->save()) {
            echo "Đổi ảnh thành công " . $model->ten;
        } else {
            throw new HttpException(404, Json::encode($model->errors));
        }
    }

    public function actionDelete($id)
    {
        $model = SanPhamKho::findOne($id);
        $model->updateAttributes(['deleted' => $model::DELETED_TRUE]);
        Yii::$app->session->setFlash("success", "Xóa thành công " . $model->ten);
        return $this->redirect(['index']);
    }

    public function actionBatchAction()
    {
        /**
         * @var $activeRecord SanPhamKho
         */
        switch (Yii::$app->request->post('type')) {
            case 'update_all':
                foreach (Yii::$app->request->post('SanPhamKho') as $id => $attr) {
                    $model = SanPhamKho::findOne($id);
                    $model->setAttributes($attr);
                    $model->update();
                }
                Yii::$app->session->setFlash("success", "Cập nhật tất cả thành cmn công");
                break;
            case 'delete':
                if (Yii::$app->request->post('id')) {
                    $models = SanPhamKho::find()->where(['id' => Yii::$app->request->post('id')])->all();
                    foreach ($models as $activeRecord) {
                        $activeRecord->deleted = SanPhamKho::DELETED_TRUE;
                        $activeRecord->save();
                    }
                }
                Yii::$app->session->setFlash("success", "Xóa thành công");
                break;
            case 'active':
                if (Yii::$app->request->post('id')) {
                    $models = SanPhamKho::find()->where(['id' => Yii::$app->request->post('id')])->all();
                    foreach ($models as $activeRecord) {
                        $activeRecord->status = SanPhamKho::STATUS_FINISH;
                        $activeRecord->save();
                    }
                }
                Yii::$app->session->setFlash("success", "Kích hoạt thành công");
                break;
            case 'deactive':
                if (Yii::$app->request->post('id')) {
                    $models = SanPhamKho::find()->where(['id' => Yii::$app->request->post('id')])->all();
                    foreach ($models as $activeRecord) {
                        $activeRecord->status = SanPhamKho::STATUS_DRAFT;
                        $activeRecord->save();
                    }
                }
                Yii::$app->session->setFlash("success", "Dừng xuất kho thành công");
                break;
        }
        return $this->redirect(\Yii::$app->request->getReferrer());
    }

    public function actionTaoPhieuXuatKho()
    {
        $model = new PhieuXuatKho();
        $model->ngay_xuat = date("Y-m-d");

        $models = SanPhamKho::find()->where(['id' => Yii::$app->request->post('ids')])->all();
        $data = [];

        foreach ($models as $item) {
            /**
             * @var $item SanPhamKho
             */
            if ($item->so_luong_ton > 0 && $item->status == $item::STATUS_FINISH) {
                $data[$item->id] = ArrayHelper::toArray($item);
                $data[$item->id]['so_luong_xuat'] = 1;
            }
        }
        $model->temp_data = Json::encode($data);
        if (!$model->save()) {
            throw new HttpException(404, Json::encode($model->errors));
        }
        return $this->renderPartial("phieu_xuat_kho", [
            'model' => $model,
        ]);
    }
}