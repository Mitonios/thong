<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 4/5/2016
 * Time: 2:34 PM
 * @var $model PhieuNhapHang
 */
use common\models\NhaCungCap;
use common\models\PhieuNhapHang;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;

?>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
    <h4 class="modal-title">Cập nhật thông tin phiếu nhập #<?= $model->id ?></h4>
</div>

<?php $form = ActiveForm::begin(['options' => [],
    'layout' => 'horizontal',
    'fieldConfig' => [
        'horizontalCssClasses' => [
            'label' => 'col-sm-3',
            'wrapper' => 'col-sm-9',
        ],
    ],
]); ?>
<div class="modal-body">
    <div class="row">
        <div class="col-md-12">
            <div class="form-body">
                <?= $form->field($model, 'ghi_chu', [])->textarea(['placeholder' => $model->getAttributeLabel('ghi_chu')]); ?>
                <?= $form->field($model, 'ngay_nhap', [])->textInput(['placeholder' => $model->getAttributeLabel('ghi_chu'), 'class' => 'date-picker form-control']); ?>
                <?= $form->field($model, 'nha_cung_cap_id', [])->dropDownList(ArrayHelper::map(NhaCungCap::find()->all(), 'id', 'ten'),
                    ['placeholder' => $model->getAttributeLabel('ghi_chu'), 'prompt' => '(Chọn)']); ?>
            </div>
        </div>
    </div>
</div>
<div class="modal-footer">
    <button type="button" data-dismiss="modal" class="btn dark btn-outline">Close</button>
    <button type="submit" class="btn green">Save changes</button>
</div>
<?php ActiveForm::end(); ?>
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