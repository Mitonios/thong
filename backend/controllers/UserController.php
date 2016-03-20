<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 12/11/2015
 * Time: 10:34 AM
 */

namespace backend\controllers;

use common\models\User;
use Yii;
use yii\helpers\Html;
use yii\web\Response;

class UserController extends BackendController
{
    public function actionIndex()
    {
        $models = User::find()->orderBy(['id' => 'desc'])->all();
        return $this->render("index", ['models' => $models]);
    }

    public function actionCreate()
    {
        $request = Yii::$app->request;
        $model = new \backend\models\User(null);

        if ($request->isAjax) {
            /*
             *   Process for ajax request
             */
            Yii::$app->response->format = Response::FORMAT_JSON;
            if ($request->isGet) {
                return [
                    'title' => "Tạo tài khoản mới",
                    'content' => $this->renderPartial('create', [
                        'model' => $model,
                    ]),
                    'footer' => Html::button("Đóng", ['class' => 'btn btn-default pull-left', 'data-dismiss' => "modal"]) .
                        Html::button("Lưu", ['class' => 'btn btn-primary', 'type' => "submit"])
                ];
            } else if ($model->load($request->post()) && $model->save()) {
                return [
                    'forceReload' => 'true',
                    'title' => "Tạo tài khoản mới",
                    'content' => '<span class="text-success">Tạo tài khoản mới thành công</span>',
                    'footer' => Html::button("Đóng", ['class' => 'btn btn-default pull-left', 'data-dismiss' => "modal"]) .
                        Html::a("Tiếp tục tạo mới", ['create'], ['class' => 'btn btn-primary', 'role' => 'modal-remote'])
                ];
            } else {
                return [
                    'title' => "Tạo tài khoản mới",
                    'content' => $this->renderPartial('create', [
                        'model' => $model,
                    ]),
                    'footer' => Html::button("Đóng", ['class' => 'btn btn-default pull-left', 'data-dismiss' => "modal"]) .
                        Html::button("Lưu", ['class' => 'btn btn-primary', 'type' => "submit"])
                ];
            }
        } else {
            /*
             *   Process for non-ajax request
             */
            if ($model->load($request->post()) && $model->save()) {
                return $this->redirect(['view', 'name' => $model->username]);
            } else {
                return $this->render('create', [
                    'model' => $model,
                ]);
            }
        }
    }

    public function actionUpdate($id)
    {
        $request = Yii::$app->request;
        $user = User::findOne($id);
        $model = new \backend\models\User(null);
        $model->setUser($user);

        if ($request->isAjax) {
            /*
             *   Process for ajax request
             */
            Yii::$app->response->format = Response::FORMAT_JSON;
            if ($request->isGet) {
                return [
                    'title' => "Tạo tài khoản mới",
                    'content' => $this->renderPartial('update', [
                        'model' => $model,
                    ]),
                    'footer' => Html::button("Đóng", ['class' => 'btn btn-default pull-left', 'data-dismiss' => "modal"]) .
                        Html::button("Lưu", ['class' => 'btn btn-primary', 'type' => "submit"])
                ];
            } else if ($model->load($request->post()) && $model->save()) {
                return [
                    'forceReload' => 'true',
                    'title' => "Tạo tài khoản mới",
                    'content' => '<span class="text-success">Cập nhật tài khoản thành công</span>' .
                        $this->renderPartial('update', [
                            'model' => $model,
                        ]),
                    'footer' => Html::button("Đóng", ['class' => 'btn btn-default pull-left', 'data-dismiss' => "modal"]) .
                        Html::button("Lưu", ['class' => 'btn btn-primary', 'type' => "submit"])
                ];
            } else {
                return [
                    'title' => "Tạo tài khoản mới",
                    'content' => $this->renderPartial('update', [
                        'model' => $model,
                    ]),
                    'footer' => Html::button("Đóng", ['class' => 'btn btn-default pull-left', 'data-dismiss' => "modal"]) .
                        Html::button("Lưu", ['class' => 'btn btn-primary', 'type' => "submit"])
                ];
            }
        } else {
            /*
             *   Process for non-ajax request
             */
            if ($model->load($request->post()) && $model->save()) {
                return $this->redirect(['view', 'name' => $model->username]);
            } else {
                return $this->render('create', [
                    'model' => $model,
                ]);
            }
        }
    }

    public function actionDelete($id)
    {
        User::deleteAll(['id' => $id]);
        Yii::$app->session->setFlash("success", "Delete User successful");
        return $this->redirect(\Yii::$app->request->getReferrer());
    }
}