<?php
/**
 *
 */
use yii\helpers\Url;

$this->title = "Thêm sản phẩm";
?>
<!-- -------------- Topbar -------------- -->
<header id="topbar" class="alt">
    <div class="topbar-left">
        <ol class="breadcrumb">
            <li class="breadcrumb-icon">
                <span class="fa fa-archive"></span>
            </li>
            <li class="breadcrumb-active">
                <a href="#">Thêm sản phẩm</a>
            </li>
            <li class="breadcrumb-link">
                <a href="<?= Url::home() ?>">Tổng quan</a>
            </li>
            <li class="breadcrumb-link">
                <a href="#">Cửa hàng</a>
            </li>
            <li class="breadcrumb-link">
                <a href="<?= Url::to(['list']) ?>">Danh mục hàng</a>
            </li>
            <li class="breadcrumb-current-item">Thêm mới</li>
        </ol>
    </div>
</header>
<!-- -------------- /Topbar -------------- -->
<?
echo $this->render("_form", ['model' => $model]);
?>
