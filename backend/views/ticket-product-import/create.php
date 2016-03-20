<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2/24/2016
 * Time: 6:59 PM
 */
use yii\bootstrap\Html;
use yii\helpers\Url;

$this->title = "Nhập hàng mới";
?>
<!-- -------------- Topbar -------------- -->
<header id="topbar" class="alt">
    <div class="topbar-left">
        <ol class="breadcrumb">
            <li class="breadcrumb-icon">
                <span class="fa fa-archive"></span>
            </li>
            <li class="breadcrumb-active">
                <a href="#">Nhập hàng</a>
            </li>
            <li class="breadcrumb-link">
                <a href="<?= Url::home() ?>">Tổng quan</a>
            </li>
            <li class="breadcrumb-link">
                <a href="#">Kho hàng</a>
            </li>
            <li class="breadcrumb-link">
                <a href="<?= Url::to(['index']) ?>">Phiếu nhập hàng</a>
            </li>
            <li class="breadcrumb-current-item">Nhập hàng mới</li>
        </ol>
    </div>
</header>
<!-- -------------- /Topbar -------------- -->
<?php
echo $this->render('_form', ['model' => $model]);