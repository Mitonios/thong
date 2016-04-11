<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 4/9/2016
 * Time: 4:37 PM
 * @var $model PhieuXuatKho
 */
use common\components\Mitonios;
use common\models\DaiLy;
use common\models\PhieuXuatKho;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Json;
use yii\helpers\Url;

$this->title = "Phiếu xuất kho #" . $model->ma_phieu_xuat;
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
                <a href="<?= Url::to(['index']) ?>">Phiếu xuất</a>
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
<?php $form = ActiveForm::begin([
    'id' => 'phieu-xuat-kho-form',
    /*'options' => [],
    'layout' => 'horizontal',
    'fieldConfig' => [
        'horizontalCssClasses' => [
            'label' => 'col-sm-4',
            'wrapper' => 'col-sm-8',
        ],
    ],*/
]); ?>
    <div class="row">
        <div class="col-md-10">
            <div class="table-scrollable">
                <table class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th width="10">#</th>
                        <th width="10"></th>
                        <th>Mã gốc</th>
                        <th>Tên SP</th>
                        <th>Ghi chú</th>
                        <th class="text-right" width="80">SL xuất</th>
                        <th class="text-right">Tồn</th>
                        <th class="text-right" width="100">Giá bán</th>
                        <th class="text-right">Giá nhập</th>
                        <th width="10"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
                    $data = Json::decode($model->temp_data);
                    if (!empty($data)) {
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
        <div class="col-md-2">
            <div class="portlet box green">
                <div class="portlet-title">
                    <div class="caption">Thống kê</div>
                </div>
                <div class="portlet-body ">
                    <div class="table-scrollable">
                        <table class="table table-striped table-bordered table-hover">
                            <tbody>
                            <tr>
                                <td>Số lượng</td>
                                <td><?= number_format($model->tong_hang) ?></td>
                            </tr>
                            <tr>
                                <td>Tổng giá nhập</td>
                                <td><?= number_format($model->tong_gia_nhap) ?></td>
                            </tr>
                            <tr>
                                <td>Tổng giá bán</td>
                                <td><?= number_format($model->tong_gia_ban) ?></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="portlet box blue">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-gift"></i>Thông tin phiếu
                    </div>
                </div>
                <div class="portlet-body form">
                    <div class="form-body">
                        <?= $form->field($model, 'ghi_chu', [])->textarea(['placeholder' => $model->getAttributeLabel('ghi_chu')]); ?>
                        <?= $form->field($model, 'dai_ly_id', [])->dropDownList(ArrayHelper::map(DaiLy::find()->all(), 'id', 'ten')); ?>
                    </div>
                    <?php if ($model->status == $model::STATUS_DRAFT) { ?>
                        <div class="form-actions">
                            <a href="<?= Url::to(['/phieu-xuat-kho/delete', 'id' => $model->id]) ?>" class="btn red btn-bordered btn-block" onclick="return confirm('Bạn chắc chắn muốn xóa đơn này?')">Hủy
                                phiếu</a>
                            <button type="submit" class="btn green btn-bordered btn-block" onclick="$('#save-type').val('temp');return true;">Lưu tạm</button>
                            <button type="submit" class="btn blue btn-bordered btn-block"
                                    onclick="if(confirm('Bạn chắc chắn muốn chốt đơn này?')){$('#save-type').val('publish');return true;}else{return false}">Chốt đơn
                            </button>
                        </div>
                    <? } ?>
                </div>
            </div>
        </div>
    </div>
<?= Html::hiddenInput('save', '', ['id' => 'save-type']) ?>
<?php ActiveForm::end(); ?>