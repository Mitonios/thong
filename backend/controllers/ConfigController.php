<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 4/9/2016
 * Time: 12:25 PM
 */

namespace backend\controllers;


class ConfigController extends BackendController
{
    public function actionSet()
    {
        if (\Yii::$app->request->post('config')) {
            foreach (\Yii::$app->request->post('config') as $k => $v)
                \Yii::$app->config->set($k, $v);
        }
        return $this->redirect(\Yii::$app->request->getReferrer());
    }

}