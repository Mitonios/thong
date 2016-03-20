<?php
/**
 * @var $model User
 */
use backend\models\User;
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

?>

<?php $form = ActiveForm::begin(['layout' => "horizontal",
    'fieldConfig' => [
        'template' => "{label}\n{beginWrapper}\n{input}\n{hint}\n{error}\n{endWrapper}",
        'horizontalCssClasses' => [
            'label' => 'col-md-3',
            //'offset' => 'col-sm-offset-4',
            'wrapper' => 'col-md-9',
            'error' => '',
            'hint' => '',
        ],
    ]]); ?>

<?= $form->field($model, 'username')->textInput(['maxlength' => true, 'readonly' => !$model->getIsNew()]) ?>
<?= $form->field($model, 'email')->textInput(['maxlength' => true, 'readonly' => !$model->getIsNew()]) ?>
<?= $form->field($model, 'password')->passwordInput()->hint($model->getIsNew() ? "" : "Nhập mật khẩu mới"); ?>

<?php if (!Yii::$app->request->isAjax) { ?>
    <?= Html::submitButton('Save', ['class' => $model->getIsNew() ? 'btn btn-success' : 'btn btn-primary']) ?>
<?php } ?>
<?php ActiveForm::end(); ?>

