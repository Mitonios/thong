<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace backend\assets;

use yii\web\AssetBundle;
use yii\web\View;

/**
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        /*<!-- -------------- Fonts -------------- -->*/
        'http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700',
        'https://fonts.googleapis.com/css?family=Lato:400,300,300italic,400italic,700,700italic',
        /*<!-- -------------- Icomoon -------------- -->*/
        'alliance/assets/fonts/icomoon/icomoon.css',
        /*<!-- -------------- Plugins -------------- -->*/
        'alliance/assets/js/plugins/ladda/ladda.min.css',
        'alliance/assets/js/plugins/magnific/magnific-popup.css',
        /*<!-- -------------- CSS - theme -------------- -->*/
        'alliance/assets/skin/default_skin/css/theme.css',
        /*<!-- -------------- CSS - allcp forms -------------- -->*/
        'alliance/assets/allcp/forms/css/forms.css',
        'css/custom.css',
    ];
    public $js = [
        /*<!-- -------------- jQuery -------------- -->*/
        'alliance/assets/js/jquery/jquery_ui/jquery-ui.min.js',
        /*<!-- -------------- Theme Scripts -------------- -->*/
        'alliance/assets/js/plugins/holder/holder.min.js',
        'alliance/assets/js/plugins/ladda/ladda.min.js',
        'alliance/assets/js/plugins/pnotify/pnotify.js',
        'alliance/assets/allcp/forms/js/jquery.validate.min.js',
        'alliance/assets/allcp/forms/js/additional-methods.min.js',
        'alliance/assets/js/plugins/magnific/jquery.magnific-popup.js',
        'alliance/assets/js/utility/utility.js',
        'alliance/assets/js/demo/demo.js',
        'js/autosize.min.js',
        'js/jquery.hotkeys.js',
        'js/main.js',
        /*<!-- -------------- Widget JS -------------- -->*/
        'alliance/assets/js/demo/widgets.js',
        'js/dashboard1.js',
        'js/custom.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
    public $jsOptions = [
        'position' => View::POS_HEAD
    ];
}

