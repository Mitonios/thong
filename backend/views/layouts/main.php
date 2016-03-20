<?php

/* @var $this \yii\web\View */
/* @var $content string */

use backend\assets\AppAsset;
use common\components\Mitonios;
use yii\helpers\Html;
use yii\helpers\Url;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <link rel="shortcut icon" href="<?= Url::home() ?>favicon.ico">
    <?php $this->head() ?>
</head>
<body class="dashboard-page sb-l-m">
<?php $this->beginBody() ?>
<!-- -------------- Customizer -------------- -->
<?= $this->render("_customizer_tool") ?>
<!-- -------------- /Customizer -------------- -->

<!-- -------------- Body Wrap  -------------- -->
<div id="main">

    <!-- -------------- Header  -------------- -->
    <header class="navbar bg-dark">
        <div class="navbar-logo-wrapper">
            <a class="navbar-logo-text" href="<?= Url::home() ?>">
                <b><?= Yii::$app->name ?></b>
            </a>
            <span id="sidebar_left_toggle" class="ad ad-lines"></span>
        </div>
        <ul class="nav navbar-nav navbar-left">
            <li class="dropdown dropdown-fuse hidden-xs">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                    Action
                    <span class="fa fa-chevron-down"></span>
                </a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="<?= Url::to(['/order/create']) ?>">Tạo đơn hàng</a></li>
                    <li><a href="<?= Url::to(['/customer/create']) ?>">Tạo khách hàng</a></li>
                    <li><a href="<?= Url::to(['/product/create']) ?>">Tạo sản phẩm</a></li>
                    <li class="divider"></li>
                    <li><a href="<?= Url::to(['/ticket-product-import/create']) ?>">Nhập hàng</a></li>
                </ul>
            </li>
            <li class="hidden-xs">
                <a class="navbar-fullscreen toggle-active" href="#">
                    <span class="glyphicon glyphicon-fullscreen"></span>
                </a>
            </li>
        </ul>
        <!--<form class="navbar-form navbar-left search-form square" role="search">
            <div class="input-group add-on">
                <input type="text" class="form-control" placeholder="Tìm sản phẩm/khách hàng..." onfocus="this.placeholder=''"
                       onblur="this.placeholder='Tìm sản phẩm/khách hàng...'">
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                </div>

            </div>
        </form>-->
        <ul class="nav navbar-nav navbar-right">
            <li class="hidden-xs">
                <div class="navbar-btn btn-group">
                    <a href="#" class="topbar-dropmenu-toggle btn" data-toggle="button">
                        <span class="fa fa-magic fs20 text-info"></span>
                    </a>
                </div>
            </li>
            <li>
                <div class="navbar-btn btn-group">
                    <a class="btn btn-md dropdown-toggle" target="_blank"
                       href="<?= Url::to('/sale/web') ?>"><span class="fa fa-shopping-cart fs20 text-danger"></span></a>
                </div>
            </li>
            <li class="dropdown dropdown-fuse">
                <a href="#" class="dropdown-toggle fw600" data-toggle="dropdown">
                    <span class="hidden-xs"><name><?= Yii::$app->user->identity->username ?></name> </span>
                    <span class="fa fa-caret-down hidden-xs mr15"></span>
                    <img src="<?= Mitonios::getUserAvatar(Yii::$app->user->id) ?>" alt="avatar" class="mw55">
                </a>
                <ul class="dropdown-menu list-group keep-dropdown w250" role="menu">
                    <li class="dropdown-header clearfix">
                        <div class="pull-left">
                            <a href="<?= Url::to(['/site/logout']) ?>" class="btn btn-primary btn-sm btn-bordered">
                                <span class="imoon imoon-key2"></span> Đổi mật khẩu </a>
                        </div>
                        <div class="pull-right">
                            <a href="<?= Url::to(['/site/logout']) ?>" class="btn btn-primary btn-sm btn-bordered">
                                <span class="fa fa-power-off pr5"></span> Thoát</a>
                        </div>
                    </li>
                </ul>
            </li>
        </ul>
    </header>
    <!-- -------------- /Header  -------------- -->

    <!-- -------------- Sidebar  -------------- -->
    <aside id="sidebar_left" class="nano nano-light affix">
        <!-- -------------- Sidebar Left Wrapper  -------------- -->
        <div class="sidebar-left-content nano-content">

            <!-- -------------- Sidebar Menu  -------------- -->
            <ul class="nav sidebar-menu">
                <li class="sidebar-label pt30">Menu</li>
                <li class="">
                    <a class="" href="<?= Url::home() ?>">
                        <span class="fa fa-dashboard"></span>
                        <span class="sidebar-title">Tổng quan</span>
                    </a>
                </li>
                <li class="">
                    <a class="" href="#">
                        <span class="fa fa-home"></span>
                        <span class="sidebar-title">Cửa hàng</span>
                    </a>
                    <ul class="nav sub-nav">
                        <li><a href="<?= Url::to(['/product/list']) ?>">Danh mục hàng</a></li>
                        <li><a href="">Trả hàng</a></li>
                        <li><a href="">Kiểm hàng</a></li>
                    </ul>
                </li>
                <li class="">
                    <a class="" href="#">
                        <span class="fa fa-shopping-cart"></span>
                        <span class="sidebar-title">Kho hàng</span>
                    </a>
                    <ul class="nav sub-nav">
                        <li><a href="<?= Url::to(['/ticket-product-import/index']) ?>">Phiếu nhập hàng</a></li>
                        <li><a href="">Trả hàng nhập</a></li>
                        <li><a href="">Thiết lập giá</a></li>
                        <li><a href="">Kiểm kho</a></li>
                        <li><a href="">Chuyển hàng</a></li>
                        <li><a href="">Hủy hàng</a></li>
                    </ul>
                </li>
                <li class="">
                    <a class="" href="<?= Url::to(['/order']) ?>">
                        <span class="fa fa-file-text-o"></span>
                        <span class="sidebar-title">Hóa đơn</span>
                    </a>
                </li>
                <li class="">
                    <a class="" href="#">
                        <span class="fa fa-user"></span>
                        <span class="sidebar-title">Đối tác</span>
                    </a>
                    <ul class="nav sub-nav">
                        <li><a href="">Khách hàng</a></li>
                        <li><a href="">Nhà cung cấp</a></li>
                    </ul>
                </li>
                <li class="">
                    <a class="" href="#">
                        <span class="fa fa-dollar"></span>
                        <span class="sidebar-title">Sổ quỹ</span>
                    </a>
                    <ul class="nav sub-nav">
                        <li><a href="">Tiền mặt</a></li>
                        <li><a href="">Ngân hàng</a></li>
                        <li><a href="">Tổng quỹ</a></li>
                    </ul>
                </li>
                <li class="">
                    <a class="" href="#">
                        <span class="fa fa-bar-chart-o"></span>
                        <span class="sidebar-title">Thống kê/Báo cáo</span>
                    </a>
                    <ul class="nav sub-nav">
                        <li><a href="">Cuối ngày</a></li>
                        <li><a href="">Tài chính</a></li>
                        <li><a href="">Khách hàng</a></li>
                    </ul>
                </li>
            </ul>
            <!-- -------------- /Sidebar Menu  -------------- -->
        </div>
        <!-- -------------- /Sidebar Left Wrapper  -------------- -->
    </aside>
    <!-- -------------- /Sidebar -------------- -->
    <!-- -------------- Main Wrapper -------------- -->
    <section id="content_wrapper">
        <!-- -------------- Topbar Menu Wrapper -------------- -->
        <div id="topbar-dropmenu-wrapper">
            <div class="topbar-menu row">
                <div class="col-xs-4 col-sm-2">
                    <a href="#" class="service-box bg-danger">
                        <span class="fa fa-music"></span>
                        <span class="service-title">Audio</span>
                    </a>
                </div>
                <div class="col-xs-4 col-sm-2">
                    <a href="#" class="service-box bg-success">
                        <span class="fa fa-picture-o"></span>
                        <span class="service-title">Images</span>
                    </a>
                </div>
                <div class="col-xs-4 col-sm-2">
                    <a href="#" class="service-box bg-primary">
                        <span class="fa fa-video-camera"></span>
                        <span class="service-title">Videos</span>
                    </a>
                </div>
                <div class="col-xs-4 col-sm-2">
                    <a href="#" class="service-box bg-alert">
                        <span class="fa fa-envelope"></span>
                        <span class="service-title">Messages</span>
                    </a>
                </div>
                <div class="col-xs-4 col-sm-2">
                    <a href="#" class="service-box bg-system">
                        <span class="fa fa-cog"></span>
                        <span class="service-title">Settings</span>
                    </a>
                </div>
                <div class="col-xs-4 col-sm-2">
                    <a href="<?= Url::to(['/user/index']) ?>" class="service-box bg-dark">
                        <span class="fa fa-user"></span>
                        <span class="service-title">Tài khoản</span>
                    </a>
                </div>
            </div>
        </div>
        <!-- -------------- /Topbar Menu Wrapper -------------- -->
        <!--<div class="alert alert-danger dark alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <i class="fa fa-info pr10"></i>
            <strong>Dark Shade.</strong> Use class <code class="ml5">.dark</code>
        </div>
        <div class="alert alert-info dark alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <i class="fa fa-info pr10"></i>
            <strong>Dark Shade.</strong> Use class <code class="ml5">.dark</code>
        </div>-->
        <script>
            function showAlert(title, text, type) {
                new PNotify({
                    title: title,
                    text: text,
                    type: type,
                    addclass: 'stack_bar_top',
                    stack: {
                        "dir1": "down",
                        "dir2": "right",
                        "push": "top",
                        "spacing1": 0,
                        "spacing2": 0
                    },
                    width: '100%',
                    delay: 1000
                });
            }
            $(function () {
                <?php
                if (Yii::$app->session->getFlash('error')){
                ?>
                showAlert('Lỗi!', '<?=Yii::$app->session->getFlash('error')?>', 'danger')
                <?
                }elseif (Yii::$app->session->getFlash('success')) {
                ?>
                showAlert('Thành công!', '<?=Yii::$app->session->getFlash('success')?>', 'primary')
                <?
                }
                ?>

            })
        </script>

        <?= $content ?>
        <!-- -------------- Panel popup -------------- -->
        <div id="modal-panel" class="popup-basic popup-xl bg-none mfp-with-anim mfp-hide"></div>
    </section>
    <!-- -------------- /Main Wrapper -------------- -->
</div>
<!-- -------------- /Body Wrap  -------------- -->

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
