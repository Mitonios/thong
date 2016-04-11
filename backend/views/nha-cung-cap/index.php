<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 3/22/2016
 * Time: 3:50 PM
 * @var $model PhieuNhapHangSearchForm
 */
use common\components\Mitonios;
use common\models\NhaCungCap;
use common\models\PhieuNhapHang;
use common\models\PhieuNhapHangSearchForm;
use yii\bootstrap\ActiveForm;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\LinkPager;

$this->title = "Nhà cung cấp";
?>
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
<h3 class="page-title"> <?= $this->title ?>
    <small></small>
</h3>
<div class="row">
    <div class="col-md-9">
        <div class="portlet box blue">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-list-ol"></i>Danh sách
                </div>
            </div>
            <div class="portlet-body">
                <form action="" method="post">
                    <div class="table-scrollable">
                        <?= Html::hiddenInput('_csrf', Yii::$app->request->getCsrfToken()) ?>
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th width="10">Mã</th>
                                <th>Tên</th>
                                <th>SĐT</th>
                                <th>Địa chỉ</th>
                                <th>Chi chú</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            foreach ($models as $item) {
                                /**
                                 * @var $item NhaCungCap
                                 */
                                ?>
                                <tr>
                                    <td><?= $item->ma_nha_cung_cap ?></td>
                                    <td><input type="text" class="form-control" name="Batch[<?= $item->id ?>][ten]" value="<?= $item->ten ?>"></td>
                                    <td><input type="text" class="form-control" name="Batch[<?= $item->id ?>][so_dien_thoai]" value="<?= $item->so_dien_thoai ?>"></td>
                                    <td>
                                        <textarea class="form-control" name="Batch[<?= $item->id ?>][dia_chi]" rows="2"><?= $item->dia_chi ?></textarea>
                                    </td>
                                    <td>
                                        <textarea class="form-control" name="Batch[<?= $item->id ?>][ghi_chu]" rows="2"><?= $item->ghi_chu ?></textarea>
                                    </td>
                                </tr>
                                <?
                            }
                            ?>
                            <tr>
                                <td colspan="5">
                                    <div class="btn-group">
                                        <button type="submit" name="update" class="btn green">Cập nhật tất cả</button>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </form>

            </div>
        </div>
    </div>
    <div class="col-md-3 hidden-xs">
        <div class="portlet box purple">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-pencil"></i>Thêm mới
                </div>
            </div>
            <div class="portlet-body form">
                <?php $form = ActiveForm::begin(['options' => [],
                    /*'layout' => 'horizontal',
                    'fieldConfig' => [
                        'horizontalCssClasses' => [
                            'label' => 'col-sm-4',
                            'wrapper' => 'col-sm-8',
                        ],
                    ],*/
                ]); ?>
                <div class="form-body">
                    <?= $form->field($model, 'ten', [])->textInput(['placeholder' => $model->getAttributeLabel('ten')]); ?>
                    <?= $form->field($model, 'so_dien_thoai', [])->textInput(['placeholder' => $model->getAttributeLabel('so_dien_thoai')]); ?>
                    <?= $form->field($model, 'dia_chi', [])->textarea(['placeholder' => $model->getAttributeLabel('dia_chi')]); ?>
                    <?= $form->field($model, 'ghi_chu', [])->textarea(['placeholder' => $model->getAttributeLabel('ghi_chu')]); ?>
                </div>
                <div class="form-actions right1">
                    <button type="submit" class="btn blue"><i class="fa fa-save"></i>Tạo mới</button>
                </div>
                <?php ActiveForm::end(); ?>
            </div>
        </div>
    </div>

</div>