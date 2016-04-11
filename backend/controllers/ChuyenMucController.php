<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 4/5/2016
 * Time: 5:26 PM
 */

namespace backend\controllers;

use common\models\ChuyenMuc;
use Yii;

class ChuyenMucController extends BackendController
{
    public function actionIndex()
    {
        $model = Yii::$app->request->get('id') ? ChuyenMuc::findOne(Yii::$app->request->get('id')) : new ChuyenMuc();
        if ($model->load(Yii::$app->request->post())) {
            if ($model->save()) {
                Yii::$app->session->setFlash("success", "Cập nhật thành cmn công");
                return $this->redirect(\Yii::$app->request->getReferrer());
            }
        }
        if (Yii::$app->request->post('Batch')) {
            foreach (Yii::$app->request->post('Batch') as $id => $attr) {
                $chuyen_muc = ChuyenMuc::findOne($id);
                $chuyen_muc->setAttributes($attr);
                $chuyen_muc->update();
                //ChuyenMuc::updateAll($attr, ['id' => $id]);
            }
            Yii::$app->session->setFlash("success", "Cập nhật tất cả thành cmn công");
        }
        return $this->render("index", ['model' => $model]);
    }

    public function actionDelete($id)
    {
        $model = ChuyenMuc::findOne($id);
        if ($model->delete())
            echo "Xóa thành công";
        else
            throw new CHttpException(404, $model->errors);
    }
}