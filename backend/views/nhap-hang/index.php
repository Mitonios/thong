<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 3/22/2016
 * Time: 3:50 PM
 * @var $model PhieuNhapHangSearchForm
 */
use common\components\Mitonios;
use common\models\PhieuNhapHang;
use common\models\PhieuNhapHangSearchForm;
use yii\bootstrap\ActiveForm;
use yii\helpers\Url;
use yii\widgets\LinkPager;

$this->title = "Quản lý phiếu nhập";
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
            <span><?= $this->title ?></span>
        </li>
    </ul>
    <div class="page-toolbar">
        <div class="pull-right">
            <a href="<?= Url::to(['create']) ?>" class="btn btn-primary btn-bordered ml10"><span class="fa fa-plus pr5"></span> Tạo phiếu nhập</a>
        </div>
    </div>
</div>
<h3 class="page-title"> <?= $this->title ?>
    <small></small>
</h3>
<div class="row">
    <div class="col-md-3 hidden-xs">
        <div class="portlet box green-meadow">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-search"></i>Tìm kiếm
                </div>
            </div>
            <div class="portlet-body form">
                <?php $form = ActiveForm::begin(['options' => [], 'method' => 'GET']); ?>
                <div class="form-body">
                    <div class="row">
                        <div class="col-md-6">
                            <?= $form->field($model, 'id', ['template' => "{input}\n{error}"])->textInput(['placeholder' => $model->getAttributeLabel('id')]); ?>
                        </div>
                        <div class="col-md-6">
                            <?= $form->field($model, 'ma_phieu_nhap', ['template' => "{input}\n{error}"])->textInput(['placeholder' => $model->getAttributeLabel('ma_phieu_nhap')]); ?>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <?= $form->field($model, 'ngay_nhap_from', ['template' => "{input}\n{error}"])->textInput([
                                'class' => 'form-control date-picker', 'placeholder' => $model->getAttributeLabel('ngay_nhap_from')]); ?>
                        </div>
                        <div class="col-md-6">
                            <?= $form->field($model, 'ngay_nhap_to', ['template' => "{input}\n{error}"])->textInput([
                                'class' => 'form-control date-picker', 'placeholder' => $model->getAttributeLabel('ngay_nhap_to')]); ?>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <?= $form->field($model, 'tong_hang_from', ['template' => "{input}\n{error}"])->textInput(['placeholder' => $model->getAttributeLabel('tong_hang_from')]); ?>
                        </div>
                        <div class="col-md-6">
                            <?= $form->field($model, 'tong_hang_to', ['template' => "{input}\n{error}"])->textInput(['placeholder' => $model->getAttributeLabel('tong_hang_to')]); ?>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <?= $form->field($model, 'tong_gia_from', ['template' => "{input}\n{error}"])->textInput(['placeholder' => $model->getAttributeLabel('tong_gia_from')]); ?>
                        </div>
                        <div class="col-md-6">
                            <?= $form->field($model, 'tong_gia_to', ['template' => "{input}\n{error}"])->textInput(['placeholder' => $model->getAttributeLabel('tong_gia_to')]); ?>
                        </div>
                    </div>
                </div>
                <div class="form-actions right1">
                    <button type="submit" class="btn green"><i class="fa fa-search"></i>Tìm</button>
                    <a href="<?= Url::to(['index']) ?>" class="btn default">Clear</a>
                </div>
                <?php ActiveForm::end(); ?>
            </div>
        </div>
    </div>
    <div class="col-md-9">
        <div class="portlet box blue">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-list-ol"></i>Danh sách
                </div>
            </div>
            <div class="portlet-body">
                <?php
                echo LinkPager::widget([
                    'pagination' => $pagination,
                ]);
                ?>
                <div class="table-scrollable">
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                          
                            <th>Mã</th>
                            <th>Ngày nhập</th>
                            <th class="text-right">SL Hàng</th>
                            <th class="text-right">Tổng tiền</th>
                            <th>Ngày tạo</th>
                            <th>Ngày sửa</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        foreach ($models as $model) {
                            /**
                             * @var $model PhieuNhapHang
                             */
                            ?>
                            <tr class="<?= $model->status == $model::STATUS_DRAFT ? "danger" : "" ?>">
                                <td><?= $model->ma_phieu_nhap ?></td>
                                <td><?= $model->ngay_nhap ?><br><i><?= $model->ghi_chu ?></i></td>
                                <td class="text-right"><?= number_format($model->tong_hang) ?>
                                </td>
                                <td class="text-right"><?= number_format($model->tong_gia_nhap_vn) ?></td>
                                <td><?= date("H:i:s d/m/Y", $model->created_at) ?><br><i><?= Mitonios::getUser($model->created_by) ?></i></td>
                                <td><?= date("H:i:s d/m/Y", $model->updated_at) ?><br><i><?= Mitonios::getUser($model->updated_by) ?></i></td>
                                <td class="text-right">
                                    <div class="btn-group btn-group-solid">
                                        <a href="<?= Url::to(['delete', 'id' => $model->id]) ?>" class="btn red btn-outline" onclick="return confirm('Chắc không?')"><i class="fa fa-trash"></i>Xóa</a>
                                        <a href="<?= Url::to(['update', 'id' => $model->id]) ?>" class="btn blue btn-outline">
                                            <?= $model->status == $model::STATUS_DRAFT ? "<i class=\"fa fa-pencil\"></i>Cập nhật" : "<i class=\"fa fa-search\"></i>Xem" ?>
                                        </a>
                                        <a href="#" class="btn btn-outline green" onclick="return showModal('<?= Url::to(['update-info', 'id' => $model->id]) ?>');">Cập nhật nhanh</a>
                                    </div>
                                </td>
                            </tr>
                            <?
                        }
                        ?>
                        </tbody>
                    </table>
                </div>
                <?php
                echo LinkPager::widget([
                    'pagination' => $pagination,
                ]);
                ?>
            </div>
        </div>

    </div>
</div>
<script>

    $(function () {
        $(".date-picker").datepicker({
            dateFormat: 'dd/mm/yyyy',
            orientation: "left",
            todayBtn: "linked",
            language: "vi",
            autoclose: true,
            todayHighlight: true
        });
    })
</script>