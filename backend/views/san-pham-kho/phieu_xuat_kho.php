<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 4/9/2016
 * Time: 3:22 PM
 * @var $model PhieuXuatKho
 */
use common\components\Mitonios;
use common\models\base\DaiLy;
use common\models\PhieuXuatKho;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Json;
use yii\helpers\Url; ?>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
    <h4 class="modal-title">Phiếu xuất kho <?= $model->ma_phieu_xuat ?></h4>
</div>
<?php $form = ActiveForm::begin([
    'id' => 'phieu-xuat-kho-form',
    'options' => [],
    'layout' => 'horizontal',
    'fieldConfig' => [
        'horizontalCssClasses' => [
            'label' => 'col-sm-4',
            'wrapper' => 'col-sm-8',
        ],
    ],
]); ?>
<div class="modal-body">
    <div class="form-body">
        <?= $form->field($model, 'ghi_chu', [])->textarea(['placeholder' => $model->getAttributeLabel('ghi_chu')]); ?>
        <?= $form->field($model, 'dai_ly_id', [])->dropDownList(ArrayHelper::map(DaiLy::find()->all(), 'id', 'ten')); ?>
    </div>
    <div class="table-scrollable">
        <table class="table table-striped table-bordered table-hover">
            <thead>
            <tr>
                <th width="10">#</th>
                <th width="10"></th>
                <th>Mã gốc</th>
                <th>Tên SP</th>
                <th>Ghi chú</th>
                <th class="text-right">SL xuất</th>
                <th class="text-right">Tồn</th>
                <th class="text-right" width="100">Giá bán</th>
                <th class="text-right">Giá nhập</th>
                <th width="10"></th>
            </tr>
            </thead>
            <tbody>
            <?php
            $data = Json::decode($model->temp_data);
            $i = 0;
            foreach ($data as $id => $item) {
                $i++;
                ?>
                <tr>
                    <td>
                        <?= $i ?>
                        <?= Html::hiddenInput('SanPhamKho[' . $id . '][chuyen_muc_id]', $item['chuyen_muc_id']) ?>
                        <?= Html::hiddenInput('SanPhamKho[' . $id . '][id]', $id) ?>
                    </td>
                    <td>
                        <img src="<?= Mitonios::thumbnail($item['avatar']) ?>" alt="" height="40">
                        <?= Html::hiddenInput('SanPhamKho[' . $id . '][avatar]', $item['avatar']) ?>
                    </td>
                    <td>
                        <?= $item['ma_goc'] ?>
                        <?= Html::hiddenInput('SanPhamKho[' . $id . '][ma_goc]', $item['ma_goc']) ?>
                    </td>
                    <td>
                        <?= $item['ten'] ?>
                        <?= Html::hiddenInput('SanPhamKho[' . $id . '][ten]', $item['ten']) ?>
                    </td>
                    <td>
                        <textarea name="SanPhamKho[<?= $id ?>][ghi_chu]" rows="1" class="form-control"><?= $item['ghi_chu'] ?></textarea>
                    </td>
                    <td class="text-right">
                        <?= Html::dropDownList("SanPhamKho[" . $id . "][so_luong_xuat]", $item['so_luong_xuat'], Mitonios::convertArrayToDropdown(range(1, $item['so_luong_ton'])),
                            ['class' => 'form-control']) ?>
                    </td>
                    <td class="text-right">
                        <?= number_format($item['so_luong_ton']) ?>
                        <?= Html::hiddenInput('SanPhamKho[' . $id . '][so_luong_ton]', $item['so_luong_ton']) ?>
                    </td>
                    <td class="text-right">
                        <input type="text" value="<?= $item['gia_ban'] ?>" class="form-control text-right" name="SanPhamKho[<?= $id ?>][gia_ban]">
                        <?= Html::hiddenInput('SanPhamKho[' . $id . '][gia_ban]', $item['gia_ban']) ?>
                    </td>
                    <td class="text-right">
                        <?= number_format($item['gia_nhap']) ?>
                        <?= Html::hiddenInput('SanPhamKho[' . $id . '][gia_nhap]', $item['gia_nhap']) ?>
                    </td>
                    <td>
                        <a href="" class="btn-xs btn red btn-outline"
                           onclick="$(this).parent().parent().remove();return false;"><i class="fa fa-trash"></i></a>
                    </td>
                </tr>
                <?php
            }
            ?>
            <tr class="result-row">
                <td colspan="5">Tổng</td>
                <td class="text-right"><?= number_format($model->tong_hang) ?></td>
                <td></td>
                <td class="text-right"><?= number_format($model->tong_gia_ban) ?></td>
                <td class="text-right"><?= number_format($model->tong_gia_nhap) ?></td>
                <td></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<div class="modal-footer">
    <a href="<?= Url::to(['/phieu-xuat-kho/delete', 'id' => $model->id]) ?>" class="btn red" onclick="return confirm('Bạn chắc chắn muốn xóa đơn này?')">Hủy phiếu</a>
    <button type="submit" class="btn green" onclick="$('#save-type').val('temp');return true;">Lưu tạm</button>
    <button type="submit" class="btn blue" onclick="if(confirm('Bạn chắc chắn muốn chốt đơn này?')){$('#save-type').val('publish');return true;}else{return false}">Chốt đơn</button>
</div>
<?= Html::hiddenInput('save', '', ['id' => 'save-type']) ?>
<?php ActiveForm::end(); ?>
<script>
    $(function () {
        $('#phieu-xuat-kho-form').submit(function () {
            $.ajax({
                type: "POST",
                url: "<?=Url::to(['/phieu-xuat-kho/update', 'id' => $model->id])?>",
                data: $('#phieu-xuat-kho-form').serialize(),
                beforeSend: function () {
                    App.startPageLoading({animate: true});
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    toastr.error(xhr.responseText, 'Lỗi')
                    App.stopPageLoading()
                },
                success: function (data) {
                    toastr.success(data)
                    if ($('#save-type').val() == 'publish') {
                        window.location.reload()
                    }
                    App.stopPageLoading()
                }
            });
            return false;
        })
    })
</script>