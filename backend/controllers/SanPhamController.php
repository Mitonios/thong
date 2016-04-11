<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 3/22/2016
 * Time: 3:30 PM
 */

namespace backend\controllers;

use common\models\PhieuXuatKho;
use common\models\SanPham;
use common\models\SanPhamSearchForm;
use common\models\SanPhamMetadata;
use Yii;
use yii\data\Pagination;
use yii\db\ActiveQuery;
use yii\db\Expression;
use yii\helpers\ArrayHelper;
use yii\helpers\Json;
use yii\web\HttpException;

class SanPhamController extends BackendController
{
    public function actionIndex()
    {
        /**
         * @var $query ActiveQuery
         */
        $model = new SanPhamSearchForm();

        $query = SanPham::find();
        $query->andFilterWhere(['deleted' => SanPham::DELETED_FALSE]);
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

    public function actionChangeAttribute()
    {
        $model = SanPham::findOne(Yii::$app->request->post('id'));
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
        $model = SanPham::findOne($id);
        $model->updateAttributes(['deleted' => $model::DELETED_TRUE]);
        Yii::$app->session->setFlash("success", "Xóa thành công " . $model->ten);
        return $this->redirect(['index']);
    }

    public function actionBatchAction()
    {
        /**
         * @var $activeRecord SanPham
         */
        switch (Yii::$app->request->post('type')) {
            case 'update_all':
                foreach (Yii::$app->request->post('SanPham') as $id => $attr) {
                    $model = SanPham::findOne($id);
                    $model->setAttributes($attr);
                    $model->update();
                }
                Yii::$app->session->setFlash("success", "Cập nhật tất cả thành cmn công");
                break;
            case 'delete':
                if (Yii::$app->request->post('id')) {
                    $models = SanPham::find()->where(['id' => Yii::$app->request->post('id')])->all();
                    foreach ($models as $activeRecord) {
                        $activeRecord->deleted = SanPham::DELETED_TRUE;
                        $activeRecord->save();
                    }
                }
                Yii::$app->session->setFlash("success", "Xóa thành công");
                break;
            case 'active':
                if (Yii::$app->request->post('id')) {
                    $models = SanPham::find()->where(['id' => Yii::$app->request->post('id')])->all();
                    foreach ($models as $activeRecord) {
                        $activeRecord->status = SanPham::STATUS_FINISH;
                        $activeRecord->save();
                    }
                }
                Yii::$app->session->setFlash("success", "Kích hoạt thành công");
                break;
            case 'deactive':
                if (Yii::$app->request->post('id')) {
                    $models = SanPham::find()->where(['id' => Yii::$app->request->post('id')])->all();
                    foreach ($models as $activeRecord) {
                        $activeRecord->status = SanPham::STATUS_DRAFT;
                        $activeRecord->save();
                    }
                }
                Yii::$app->session->setFlash("success", "Dừng xuất kho thành công");
                break;
        }
        return $this->redirect(\Yii::$app->request->getReferrer());
    }
}