<?php
/**
 * Created by PhpStorm.
 * User: Mitonios-Tofu
 * Date: 2/22/2016
 * Time: 5:34 PM
 */

namespace backend\controllers;

use Yii;
use common\models\Category;

class CategoryController extends BackendController
{
    public function actionList()
    {

    }

    public function actionAjaxView()
    {
        $model = new Category();
        return $this->renderPartial("ajax_view", ['model' => $model]);
    }

    public function actionCreate()
    {
        $model = new Category();
        if ($model->load(Yii::$app->request->post())) {
            if ($model->save()) {
                Yii::$app->session->setFlash("success", "Tạo nhóm hàng thành công");
            } else {
                Yii::$app->session->setFlash("error", "Không thể tạo được nhóm hàng");
            }
        }
        return $this->redirect(Yii::$app->request->getReferrer());
    }
}