<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 3/22/2016
 * Time: 3:30 PM
 */

namespace backend\controllers;

use common\models\NhaCungCap;
use Yii;
use yii\db\ActiveQuery;

class NhaCungCapController extends BackendController
{
    public function actionIndex()
    {
        $model = new NhaCungCap();
        if ($model->load(Yii::$app->request->post())) {
            if ($model->save()) {
                Yii::$app->session->setFlash("success", "Tạo mới thành cmn công");
                return $this->redirect(\Yii::$app->request->getReferrer());
            }
        }
        if (Yii::$app->request->post('Batch')) {
            foreach (Yii::$app->request->post('Batch') as $id => $attr) {
                $item = NhaCungCap::findOne($id);
                $item->setAttributes($attr);
                $item->update();
                //NhaCungCap::updateAll($attr, ['id' => $id]);
            }
            Yii::$app->session->setFlash("success", "Cập nhật tất cả thành cmn công");
        }
        /**
         * @var $query ActiveQuery
         */
        $query = NhaCungCap::find();

        $models = $query->orderBy(['id' => SORT_DESC])->all();

        return $this->render("index", ['model' => $model, 'models' => $models]);
    }

}