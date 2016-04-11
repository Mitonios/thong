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
<body class="page-sidebar-closed-hide-logo page-content-white page-md page-header-fixed">
<?php $this->beginBody() ?>
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
    <!-- BEGIN HEADER INNER -->
    <div class="page-header-inner ">
        <!-- BEGIN LOGO -->
        <div class="page-logo">
            <div class="menu-toggler sidebar-toggler"></div>
        </div>
        <!-- END LOGO -->
        <!-- BEGIN RESPONSIVE MENU TOGGLER -->
        <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
        <!-- END RESPONSIVE MENU TOGGLER -->
        <!-- BEGIN TOP NAVIGATION MENU -->
        <div class="top-menu">
            <ul class="nav navbar-nav pull-right">
                <!-- BEGIN USER LOGIN DROPDOWN -->
                <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                <li class="dropdown dropdown-user">
                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                        <img alt="" class="img-circle" src="<?= Mitonios::getUserAvatar(Yii::$app->user->id) ?>"/>
                        <span class="username username-hide-on-mobile"><?= !Yii::$app->user->isGuest ? Yii::$app->user->identity->username : "" ?></span>
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-default">
                        <li>
                            <a href="<?= Url::to(['/site/logout']) ?>">
                                <i class="icon-key"></i> Thoát tài khoản</a>
                        </li>
                    </ul>
                </li>
                <!-- END USER LOGIN DROPDOWN -->
                <li class="dropdown dropdown-quick-sidebar-toggler">
                    <a href="<?= Url::to(['/metronic_v4.5.5/admin_1_material_design/']) ?>" class="dropdown-toggle" target="_blank">
                        <i class="icon-action-redo"></i>
                    </a>
                </li>
                <li class="dropdown dropdown-quick-sidebar-toggler">
                    <a href="<?= Url::to(['/site/logout']) ?>" class="dropdown-toggle">
                        <i class="icon-action-redo"></i>
                    </a>
                </li>
            </ul>
        </div>
        <!-- END TOP NAVIGATION MENU -->
    </div>
    <!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<!-- BEGIN HEADER & CONTENT DIVIDER -->
<div class="clearfix"></div>
<!-- END HEADER & CONTENT DIVIDER -->
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar-wrapper">
        <div class="page-sidebar navbar-collapse collapse">
            <ul class="page-sidebar-menu  page-header-fixed page-sidebar-menu-hover-submenu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200" style="padding-top: 20px">
                <!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
                <li class="sidebar-toggler-wrapper hide">
                    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                    <div class="sidebar-toggler"></div>
                    <!-- END SIDEBAR TOGGLER BUTTON -->
                </li>
                <!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
                <li class="sidebar-search-wrapper">
                    <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
                    <!-- DOC: Apply "sidebar-search-bordered" class the below search form to have bordered search box -->
                    <!-- DOC: Apply "sidebar-search-bordered sidebar-search-solid" class the below search form to have bordered & solid search box -->
                    <form class="sidebar-search  " action="" method="POST">
                        <a href="javascript:;" class="remove">
                            <i class="icon-close"></i>
                        </a>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <a href="javascript:;" class="btn submit">
                                    <i class="icon-magnifier"></i>
                                </a>
                            </span>
                        </div>
                    </form>
                    <!-- END RESPONSIVE QUICK SEARCH FORM -->
                </li>
                <li class="nav-item start">
                    <a href="<?= Url::home() ?>" class="nav-link">
                        <i class="icon-screen-desktop"></i>
                        <span class="title">Tổng quan</span>
                    </a>
                </li>
                <li class="nav-item start">
                    <a href="<?= Url::to(['/chuyen-muc']) ?>" class="nav-link">
                        <i class="icon-folder-alt"></i>
                        <span class="title">Phân loại sản phẩm</span>
                    </a>
                </li>
                <li class="nav-item start">
                    <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="icon-home"></i>
                        <span class="title">Cửa hàng</span>
                        <span class="arrow open"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item">
                            <a href="<?= Url::to(['/san-pham']) ?>" class="nav-link">
                                <span class="title">Sản phẩm</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item start">
                    <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="icon-umbrella"></i>
                        <span class="title">Kho hàng</span>
                        <span class="arrow open"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item">
                            <a href="<?= Url::to(['/san-pham-kho']) ?>" class="nav-link">
                                <span class="title">Sản phẩm kho</span>
                            </a>
                        </li>
                        <li class="nav-item start">
                            <a href="<?= Url::to(['/nhap-hang']) ?>" class="nav-link">
                                <span class="title">Phiếu nhập</span>
                            </a>
                        </li>
                        <li class="nav-item start">
                            <a href="<?= Url::to(['/phieu-xuat-kho']) ?>" class="nav-link">
                                <span class="title">Phiếu xuất</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item start">
                    <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="icon-users"></i>
                        <span class="title">Đối tác</span>
                        <span class="arrow open"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item start">
                            <a href="<?= Url::to(['/nha-cung-cap']) ?>" class="nav-link">
                                <span class="title">Nhà cung cấp</span>
                            </a>

                        </li>
                        <li class="nav-item">
                            <a href="<?= Url::to(['/dai-ly']) ?>" class="nav-link">
                                <span class="title">Đại lý</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item start">
                    <a href="<?= Url::to(['/user']) ?>" class="nav-link">
                        <i class="icon-user"></i>
                        <span class="title">Tài khoản</span>
                    </a>
                </li>
            </ul>
        </div>
        <!-- END SIDEBAR -->
    </div>
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <!-- BEGIN CONTENT BODY -->
        <div class="page-content">
            <?= $content ?>
        </div>
        <!-- END CONTENT BODY -->
    </div>

    <div id="modal-responsive" class="modal fade" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            </div>
        </div>
    </div>

    <div class="modal fade bs-modal-lg" id="modal-large" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

            </div>
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
    <div class="page-footer-inner"> <?= date('Y') ?> &copy; Quản lý SHOP.
        <a href="http://mitonios.com" target="_blank">Mitonios</a>
    </div>
    <div class="scroll-to-top">
        <i class="icon-arrow-up"></i>
    </div>
</div>
<!-- END FOOTER -->
<script>
    <?php if (Yii::$app->session->getFlash('error')) {?>
    toastr.error('<?=Yii::$app->session->getFlash('error')?>', 'Lỗi')
    <?} elseif(Yii::$app->session->getFlash('success')) {?>
    toastr.success('<?=Yii::$app->session->getFlash('success')?>', 'Thành công')
    <?}    ?>
    function showModal(url, type) {
        type = !type ? "responsive" : type;
        $.ajax({
            type: "POST",
            url: url,
            data: {_csrf: '<?=Yii::$app->request->getCsrfToken()?>'},
            beforeSend: function () {
                App.startPageLoading({animate: true});
            },
            error: function (xhr, ajaxOptions, thrownError) {
                toastr.error(xhr.responseText, 'Lỗi')
                App.stopPageLoading()
            },
            success: function (data) {
                $('#modal-' + type).find('.modal-content').html(data)
                $('#modal-' + type).modal('show')
                App.stopPageLoading()
            }
        });
        return false
    }
</script>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
