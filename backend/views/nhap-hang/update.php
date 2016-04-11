<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2/24/2016
 * Time: 6:59 PM
 */
use yii\bootstrap\Html;
use yii\helpers\Url;

$this->title = "Cập nhật phiếu nhập #" . $model->id;
?>
    <div class="page-bar">
        <ul class="page-breadcrumb">
            <li>
                <a href="<?= Url::home() ?>">Home</a>
                <i class="fa fa-circle"></i>
            </li>
            <li>
                <a href="#">Kho hàng</a>
                <i class="fa fa-circle"></i>
            </li>
            <li>
                <a href="<?= Url::to(['index']) ?>">Phiếu nhập</a>
                <i class="fa fa-circle"></i>
            </li>
            <li>
                <span><?= $this->title ?></span>
            </li>
        </ul>
        <div class="page-toolbar">
            <div class="pull-right">
                <a href="<?= Url::to(['index']) ?>" class="btn btn-primary">Danh sách</a>
            </div>
        </div>
    </div>
    <h3 class="page-title"> <?= $this->title ?>
        <small></small>
    </h3>
<?php
echo $this->render('_form', ['model' => $model]);