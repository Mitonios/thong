<?php
use yii\authclient\widgets\AuthChoice;
use yii\bootstrap\ActiveForm;
use yii\helpers\Url;

?>
<!DOCTYPE html>
<html lang="en">
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title><?= Yii::$app->name ?> | Login</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
    <link href="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
    <link href="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <link href="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <link href="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css"/>
    <link href="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN THEME GLOBAL STYLES -->
    <link href="<?= Url::home() ?>metronic_v4.5.5/assets/global/css/components-md.min.css" rel="stylesheet" id="style_components" type="text/css"/>
    <link href="<?= Url::home() ?>metronic_v4.5.5/assets/global/css/plugins-md.min.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME GLOBAL STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="<?= Url::home() ?>metronic_v4.5.5/assets/pages/css/login-2.min.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME LAYOUT STYLES -->
    <!-- END THEME LAYOUT STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<body class=" login">

<!-- BEGIN LOGIN -->
<div class="content">
    <!-- BEGIN LOGIN FORM -->
    <?php $form = ActiveForm::begin([
        'id' => 'login-form',
        'options' => ['class' => 'login-form'],
        'fieldConfig' => [
            'labelOptions' => ['class' => 'control-label visible-ie8 visible-ie9'],
        ],
    ]); ?>
    <div class="form-title">
        <span class="form-title">Chào bợm!</span>
        <span class="form-subtitle">Vui lòng đăng nhập.</span>
    </div>
    <div class="alert alert-danger display-hide">
        <button class="close" data-close="alert"></button>
        <span> Enter any username and password. </span>
    </div>
    <?= $form->field($model, 'username', [
        'template' => "{label}{input}\n{error}"
    ])->textInput(['placeholder' => 'Username', 'class' => 'form-control form-control-solid placeholder-no-fix']); ?>

    <?= $form->field($model, 'password', [
        'template' => "{label}{input}\n{error}"
    ])->passwordInput(['placeholder' => 'Password', 'class' => 'form-control form-control-solid placeholder-no-fix']); ?>
    <div class="form-actions">
        <button type="submit" class="btn red btn-block uppercase">Đăng nhập</button>
    </div>
    <div class="login-options">
        <h4 class="pull-left">Or login with</h4>
        <?
        $authAuthChoice = AuthChoice::begin([
            'baseAuthUrl' => ['site/auth'],
            'popupMode' => false,
        ])
        ?>
        <ul class="social-icons pull-right">
            <?php foreach ($authAuthChoice->getClients() as $client): ?>
                <li><?php $authAuthChoice->clientLink($client) ?></li>
            <?php endforeach; ?>
        </ul>
        <?php AuthChoice::end(); ?>

    </div>
    <?php ActiveForm::end(); ?>
    <!-- END LOGIN FORM -->
</div>
<div class="copyright hide"><?= date('Y') ?> &copy; Quản lý SHOP.
    <a href="http://mitonios.com" target="_blank">Mitonios</a></div>
<!-- END LOGIN -->
<!--[if lt IE 9]>
<script src="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/respond.min.js"></script>
<script src="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/excanvas.min.js"></script>
<![endif]-->
<!-- BEGIN CORE PLUGINS -->
<script src="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
<script src="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
        type="text/javascript"></script>
<script src="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/jquery-validation/js/additional-methods.min.js" type="text/javascript"></script>
<script src="<?= Url::home() ?>metronic_v4.5.5/assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="<?= Url::home() ?>metronic_v4.5.5/assets/global/scripts/app.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<?= Url::home() ?>metronic_v4.5.5/assets/pages/scripts/login.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
</body>
</html>