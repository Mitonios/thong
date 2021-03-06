<?php
/**
 * Created by PhpStorm.
 * User: Mitonios-Tofu
 * Date: 2/19/2016
 * Time: 2:29 PM
 */

namespace backend\controllers;

use yii\web\Controller;

class BackendController extends Controller
{
    public $redirectUrl;

    public function beforeAction($action)
    {
        if (\Yii::$app->user->isGuest)
            return $this->redirect(['/site/login']);
        $this->redirectUrl = \Yii::$app->request->getReferrer();
        return parent::beforeAction($action); // TODO: Change the autogenerated stub
    }
}