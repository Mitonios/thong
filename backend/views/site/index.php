<?php
/* @var $this yii\web\View */

use yii\helpers\Url;

$this->title = "Tổng quan";
?>
<!-- BEGIN PAGE HEADER-->
<!-- BEGIN PAGE BAR -->
<div class="page-bar">
    <ul class="page-breadcrumb">
        <li>
            <a href="<?= Url::home() ?>">Home</a>
            <i class="fa fa-circle"></i>
        </li>
        <li>
            <span><?= $this->title ?></span>
        </li>
    </ul>
</div>
<!-- END PAGE BAR -->
<!-- BEGIN PAGE TITLE-->
<h3 class="page-title"> <?= $this->title ?>
    <small></small>
</h3>
<!-- END PAGE TITLE-->
<!-- END PAGE HEADER-->