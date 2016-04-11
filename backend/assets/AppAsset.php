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
        //'http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all',
        //'https://fonts.googleapis.com/css?family=Lato:400,300,300italic,400italic,700,700italic',
        'metronic_v4.5.5/assets/global/plugins/font-awesome/css/font-awesome.min.css',
        'metronic_v4.5.5/assets/global/plugins/simple-line-icons/simple-line-icons.min.css',
        'metronic_v4.5.5/assets/global/plugins/bootstrap/css/bootstrap.min.css',
        'metronic_v4.5.5/assets/global/plugins/uniform/css/uniform.default.css',
        'metronic_v4.5.5/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css',
        'metronic_v4.5.5/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css',
        'metronic_v4.5.5/assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css',
        'metronic_v4.5.5/assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css',
        'metronic_v4.5.5/assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css',
        'metronic_v4.5.5/assets/global/plugins/bootstrap-toastr/toastr.min.css',
        'metronic_v4.5.5/assets/global/plugins/fancybox/source/jquery.fancybox.css',
        'metronic_v4.5.5/assets/global/css/components-md.min.css',
        'metronic_v4.5.5/assets/global/css/plugins-md.min.css',
        'metronic_v4.5.5/assets/layouts/layout/css/layout.min.css',
        'metronic_v4.5.5/assets/layouts/layout/css/themes/darkblue.min.css',
        'metronic_v4.5.5/assets/layouts/layout/css/custom.min.css',
        'css/custom.css',
    ];
    public $js = [
        'metronic_v4.5.5/assets/global/plugins/jquery.min.js',
        'metronic_v4.5.5/assets/global/plugins/bootstrap/js/bootstrap.min.js',
        'metronic_v4.5.5/assets/global/plugins/js.cookie.min.js',
        'metronic_v4.5.5/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js',
        'metronic_v4.5.5/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js',
        'metronic_v4.5.5/assets/global/plugins/jquery.blockui.min.js',
        'metronic_v4.5.5/assets/global/plugins/uniform/jquery.uniform.min.js',
        'metronic_v4.5.5/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js',
        'metronic_v4.5.5/assets/global/plugins/moment.min.js',
        'metronic_v4.5.5/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js',
        'metronic_v4.5.5/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js',
        'metronic_v4.5.5/assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js',
        'metronic_v4.5.5/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js',
        'metronic_v4.5.5/assets/global/plugins/bootstrap-toastr/toastr.min.js',
        'metronic_v4.5.5/assets/global/plugins/fancybox/source/jquery.fancybox.pack.js',
        'metronic_v4.5.5/assets/global/scripts/app.min.js',
        'metronic_v4.5.5/assets/layouts/layout/scripts/layout.min.js',
        'metronic_v4.5.5/assets/layouts/layout/scripts/demo.min.js',
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

