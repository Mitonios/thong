<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\LoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\helpers\Url;

$this->title = 'Login';
?>
<!DOCTYPE html>
<html>

<head>
    <!-- -------------- Meta and Title -------------- -->
    <meta charset="utf-8">
    <title><?= Yii::$app->name ?></title>
    <meta name="author" content="ThemeREX">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- -------------- Fonts -------------- -->
    <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,300italic,400italic,700,700italic' rel='stylesheet'
          type='text/css'>

    <!-- -------------- CSS - theme -------------- -->
    <link rel="stylesheet" type="text/css" href="<?= Url::home() ?>alliance/assets/skin/default_skin/css/theme.css">

    <!-- -------------- CSS - allcp forms -------------- -->
    <link rel="stylesheet" type="text/css" href="<?= Url::home() ?>alliance/assets/allcp/forms/css/forms.css">

    <!-- -------------- Favicon -------------- -->
    <link rel="shortcut icon" href="<?= Url::home() ?>alliance/assets/img/favicon.ico">

    <!-- -------------- IE8 HTML5 support  -------------- -->
    <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="utility-page sb-l-c sb-r-c">

<!-- -------------- Body Wrap  -------------- -->
<div id="main" class="animated fadeIn">

    <!-- -------------- Main Wrapper -------------- -->
    <section id="content_wrapper">

        <div id="canvas-wrapper">
            <canvas id="demo-canvas"></canvas>
        </div>

        <!-- -------------- Content -------------- -->
        <section id="content">

            <!-- -------------- Login Form -------------- -->
            <div class="allcp-form theme-primary mw320" id="login">
                <div class="panel mw320">
                    <?php $form = ActiveForm::begin([
                        'id' => 'login-form',
                        'options' => ['class' => 'login-form'],
                        'fieldConfig' => [
                            'labelOptions' => ['class' => 'col-lg-1 control-label'],
                        ],
                    ]); ?>
                    <div class="panel-body pn mv10">
                        <?= $form->errorSummary($model); ?>
                        <div class="section">
                            <label for="username" class="field prepend-icon">
                                <?= Html::activeTextInput($model, 'username', ['class' => 'gui-input', 'placeholder' => 'Username']) ?>
                                <label for="username" class="field-icon">
                                    <i class="fa fa-user"></i>
                                </label>
                            </label>
                        </div>
                        <!-- -------------- /section -------------- -->

                        <div class="section">
                            <label for="password" class="field prepend-icon">
                                <?= Html::activePasswordInput($model, 'password', ['class' => 'gui-input', 'placeholder' => 'Password']) ?>
                                <label for="password" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <!-- -------------- /section -------------- -->

                        <div class="section">
                            <div class="pull-left pt5">
                                <div class="radio-custom radio-primary mb5 lh25">
                                    <input type="radio" id="remember" name="remember">
                                    <label for="remember">Remember me</label>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-bordered btn-primary pull-right">Log in</button>
                        </div>
                        <!-- -------------- /section -------------- -->

                    </div>
                    <!-- -------------- /Form -------------- -->
                    <?php ActiveForm::end(); ?>
                </div>
                <!-- -------------- /Panel -------------- -->
            </div>
            <!-- -------------- /Spec Form -------------- -->

        </section>
        <!-- -------------- /Content -------------- -->

    </section>
    <!-- -------------- /Main Wrapper -------------- -->

</div>
<!-- -------------- /Body Wrap  -------------- -->

<!-- -------------- Scripts -------------- -->

<!-- -------------- jQuery -------------- -->
<script src="<?= Url::home() ?>alliance/assets/js/jquery/jquery-1.11.3.min.js"></script>
<script src="<?= Url::home() ?>alliance/assets/js/jquery/jquery_ui/jquery-ui.min.js"></script>

<!-- -------------- CanvasBG JS -------------- -->
<script src="<?= Url::home() ?>alliance/assets/js/plugins/canvasbg/canvasbg.js"></script>

<!-- -------------- Theme Scripts -------------- -->
<script src="<?= Url::home() ?>alliance/assets/js/utility/utility.js"></script>
<script src="<?= Url::home() ?>alliance/assets/js/main.js"></script>

<!-- -------------- Page JS -------------- -->
<script type="text/javascript">
    jQuery(document).ready(function () {
        "use strict";
        // Init Theme Core
        Core.init();
        // Init Demo JS
        // Init CanvasBG
        CanvasBG.init({
            Loc: {
                x: window.innerWidth / 5,
                y: window.innerHeight / 10
            }
        });
    });
</script>
<!-- -------------- /Scripts -------------- -->
</body>
</html>
