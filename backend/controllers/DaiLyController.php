<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 4/8/2016
 * Time: 7:29 PM
 */

namespace backend\controllers;

use Yii;
use common\models\DaiLy;

class DaiLyController extends BackendController
{
    public function actionIndex()
    {
        $model = Yii::$app->request->get('id') ? DaiLy::findOne(Yii::$app->request->get('id')) : new DaiLy();

        if ($model->load(Yii::$app->request->post())) {
            if ($model->save()) {
                Yii::$app->session->setFlash("success", "Cập nhật thành cmn công");
                return $this->redirect(\Yii::$app->request->getReferrer());
            }
        }
        if (Yii::$app->request->post('Batch')) {
            foreach (Yii::$app->request->post('Batch') as $id => $attr) {
                $item = DaiLy::findOne($id);
                $item->setAttributes($attr);
                $item->update();
                //DaiLy::updateAll($attr, ['id' => $id]);
            }
            Yii::$app->session->setFlash("success", "Cập nhật tất cả thành cmn công");
        }
        $models = DaiLy::find()->all();

        return $this->render("index", ['model' => $model, 'models' => $models]);
    }

    public function actionDelete($id)
    {
        $model = DaiLy::findOne($id);
        if ($model->delete())
            echo "Xóa thành công";
        else
            throw new CHttpException(404, $model->errors);
    }
}