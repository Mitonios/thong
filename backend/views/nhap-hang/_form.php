<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2/24/2016
 * Time: 6:59 PM
 */
/**
 * @var $model PhieuNhapHang
 * @var $this View
 * @var $metadata Metadata[]
 */
use common\models\base\Metadata;
use common\models\NhaCungCap;
use common\models\PhieuNhapHang;
use yii\bootstrap\Html;
use yii\helpers\ArrayHelper;
use yii\helpers\Json;
use yii\helpers\Url;
use yii\web\View;

$metadata = Metadata::find()->all();
?>
<div class="row">
    <div class="col-md-10">
        <form action="" method="post" id="ticket-content">
            <input type="submit" class="hidden">
            <?= Html::hiddenInput('_csrf', Yii::$app->request->getCsrfToken()) ?>
            <input type="hidden" name="status" id="form-submit" value="0">
            <input type="hidden" name="PhieuNhapHang" value="1">
            <input type="hidden" name="temp_data" value="" id="temp_data">
            <div class="table-responsive">
                <div id="example"></div>
            </div>
            <input type="hidden" name="PhieuNhapHang[other]" value="" id="other-data">
        </form>
    </div>
    <div class="col-md-2">
        <?php if (!$model->isNewRecord) { ?>
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
                                <td><?= number_format($model->tong_gia_nhap_vn) ?></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        <?php } ?>
        <div class="portlet box blue">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-gift"></i>Thông tin phiếu
                </div>
            </div>
            <div class="portlet-body form">
                <form action="" class="" id="other-form">
                    <div class="form-body">
                        <div class="form-group">
                            <?php
                            if ($model->isNewRecord)
                                echo "<label class=\"btn btn-transparent red btn-outline btn-circle btn-sm active\">Chưa lưu</label>";
                            else if ($model->status == $model::STATUS_DRAFT)
                                echo "<label class=\"btn btn-transparent green btn-outline btn-circle btn-sm active\">Đã lưu tạm</label>";

                            ?>
                        </div>
                        <div class="form-group">
                            <label for="">Ghi chú</label>
                            <textarea class="form-control maxlength" id="note" name="ghi_chu" placeholder="Ghi chú" rows="4" maxlength="500"><?= $model->ghi_chu ?></textarea>
                        </div>
                        <div class="form-group">
                            <label for="">Ngày nhập</label>
                            <div class="input-group">
                                <input type="text" id="date_import" name="ngay_nhap" class="form-control" value="<?= $model->ngay_nhap ?>" placeholder="Ngày nhập hàng">
                                <span class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="">Tỷ giá NDT/VNĐ</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="ty-gia" name="ty_gia_cn_vn" value="<?= $model->ty_gia_cn_vn ?>" placeholder="Tỷ giá Tàu/VNĐ">
                                <span class="input-group-addon">
                                    <i class="fa fa-dollar"></i>
                                </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="">Nhà cung cấp</label>
                            <?= Html::dropDownList('nha_cung_cap_id', $model->nha_cung_cap_id, ArrayHelper::map(NhaCungCap::find()->all(), 'id', 'ten'), ['prompt' => '(Chọn)', 'class' => 'form-control']) ?>
                        </div>
                    </div>
                    <?php if ($model->status == $model::STATUS_DRAFT) { ?>
                        <div class="form-actions">
                            <button class="btn btn-success btn-bordered btn-block" id="btn-f9" type="button" onclick="submitForm(0)">Lưu tạm [F9]</button>
                            <?php if (!$model->isNewRecord) { ?>
                                <a href="<?= Url::to(['delete', 'id' => $model->id]) ?>" class="btn btn-danger btn-bordered btn-block" onclick="return confirm('Hủy thật đấy?')">Hủy phiếu</a>
                                <button class="btn btn-primary btn-bordered btn-block" type="button" onclick="if(confirm('Chốt hạ chưa?')){submitForm(1)}">Chốt phiếu</button>
                            <? } ?>
                        </div>
                    <? } ?>
                </form>

            </div>
        </div>

    </div>
</div>

<?php
$this->registerJsFile(Url::home() . "js/jquery.hotkeys.js");
$this->registerJsFile(Url::home() . "js/numeral.min.js");
$this->registerJsFile(Url::home() . "plugins/handsontable/handsontable.full.js");
$this->registerCssFile(Url::home() . "plugins/handsontable/handsontable.full.min.css");
?>
<script>
    function submitForm(status) {
        $('#form-submit').val(status);
        $('#other-data').val($('#other-form').serialize())
        var json = JSON.stringify($('#example').handsontable('getData'))
        $('#temp_data').val(json)
        $('#ticket-content').submit();
    }

    $(function () {
        <? if(!empty($model->temp_data)){?>
        var data = <?=$model->temp_data ?>;
        <?}?>
        $('#example').handsontable({
            height: window.innerHeight - 220,
            <? if(!empty($model->temp_data)){?>
            data: JSON.parse(JSON.stringify(data)),
            <?}?>
            startRows: 400,
            startCols: 8,
            stretchH: 'all',
            colWidths: [10, null, 10, 11, 10, 10, 10, null],
            colHeaders: ['Mã nhập', 'Tên sản phẩm', 'Màu', 'Kích cỡ', 'Giá VN', 'Số lượng', 'Giá TQ', 'Ghi chú'],
            rowHeaders: true,
            afterChange: function (change, source) {
                <? if(!$model->isNewRecord){ ?>
                $.ajax({
                    type: "POST",
                    url: '<?=Url::to(['quick-update'])?>',
                    data: {data: change, _csrf: "<?= Yii::$app->request->csrfToken; ?>", id:<?=$model->id?>},
                    dataType: 'json',
                    error: function (xhr, ajaxOptions, thrownError) {
                        // console.error(xhr.responseText);
                    },
                    success: function (data) {
                        //console.log(data)
                    }
                });
                <? } ?>

                console.log('after change')
            },
            columns: [
                {},
                {},
                {},
                {
                    type: 'dropdown',
                    source: ["Freesize", "S", "M", "L", "XL"]
                },
                {type: 'numeric'},
                {type: 'numeric'},
                {type: 'numeric'},
                {},
            ]
        });


        $('#btn-f9').click(function () {
            submitForm(0)
        })

        $(document).bind('keydown', 'f9', function checkKey() {
            $('#btn-f9').click()
            return false;
        });
        jQuery.hotkeys.options.filterContentEditable =
            jQuery.hotkeys.options.filterInputAcceptingElements =
                jQuery.hotkeys.options.filterTextInputs = false;
        $("#date_import").datepicker({
            dateFormat: 'dd/mm/yyyy',
            orientation: "right",
            todayBtn: "linked",
            language: "vi",
            autoclose: true,
            todayHighlight: true
        });
    })
</script>