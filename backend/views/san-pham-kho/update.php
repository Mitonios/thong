<?php
use common\components\Mitonios;
use common\models\Metadata;
use common\models\PhieuNhapHang;
use common\models\SanPhamKho;
use common\models\SanPhamMetadata;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Json;
use yii\helpers\Url;

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 4/5/2016
 * Time: 4:50 PM
 * @var $model SanPhamKho
 */
$this->title = "Cập nhật sản phẩm #" . $model->ma_goc;
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
            <a href="<?= Url::to(['index']) ?>" class="btn btn-primary btn-bordered ml10">Danh sách</a>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <!--<form class="form-horizontal form-row-seperated" action="#">-->

        <?php $form = ActiveForm::begin(['options' => ['class' => 'form-horizontal form-row-seperated'],
            'layout' => 'horizontal',
            'fieldConfig' => [
                'horizontalCssClasses' => [
                    'label' => 'col-md-4',
                    'wrapper' => 'col-md-8',
                ],
            ],
        ]);
        /**
         * @var $form ActiveForm
         */
        ?>
        <div class="portlet">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-shopping-cart"></i>Sản phẩm #<?= $model->ma_goc ?>
                </div>
                <div class="actions btn-set">
                    <a class="btn btn-secondary-outline" href="<?= Url::to(['index']) ?>"><i class="fa fa-angle-left"></i> Quay lại</a>
                    <button class="btn btn-success" type="submit" name="save" value="1">
                        <i class="fa fa-check"></i> Lưu
                    </button>
                    <button class="btn btn-success" type="submit" name="save_and_continue" value="1">
                        <i class="fa fa-check-circle"></i> Lưu và tiếp tục cập nhật
                    </button>
                    <div class="btn-group">
                        <a class="btn btn-info dropdown-toggle" href="javascript:;" data-toggle="dropdown">
                            <i class="fa fa-share"></i> More
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <div class="dropdown-menu pull-right">
                            <li>
                                <a href="javascript:;"> Sao chép</a>
                            </li>
                            <li>
                                <a href="<?= Url::to(['delete', 'id' => $model->id]) ?>" onclick="return confirm('Bạn có chắc muốn xóa sản phẩm này?')"> Xóa</a>
                            </li>
                            <li class="dropdown-divider"></li>
                            <li>
                                <a href="javascript:;"> In</a>
                            </li>
                        </div>
                    </div>
                </div>
            </div>
            <div class="portlet-body">
                <div class="tabbable-bordered">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="#tab_general" data-toggle="tab"> Thông tin chung </a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_general">
                            <div class="form-body">
                                <div class="row">
                                    <div class="col-md-4">
                                        <?= $form->field($model, 'ten', [])->textInput(['placeholder' => $model->getAttributeLabel('ten')]); ?>
                                        <?= $form->field($model, 'mo_ta', [])->textarea(['placeholder' => $model->getAttributeLabel('mo_ta')]); ?>
                                        <?= $form->field($model, 'chuyen_muc_id', [])->dropDownList(Mitonios::convertCategoryToDropdown()
                                            , []) ?>
                                        <?= $form->field($model, 'status', [])->dropDownList($model->getStatusList()) ?>
                                        <?= $form->field($model, 'gia_ban', [])->textInput(['placeholder' => $model->getAttributeLabel('gia_ban')]); ?>
                                        <?= $form->field($model, 'so_luong_ton', [])->textInput(['placeholder' => $model->getAttributeLabel('so_luong_ton')]); ?>
                                    </div>
                                    <div class="col-md-4">
                                        <?= $form->field($model, 'ma_nhap', [])->textInput(['placeholder' => $model->getAttributeLabel('ten')]); ?>
                                        <?= $form->field($model, 'phieu_nhap_id', [])->dropDownList(
                                            ArrayHelper::map(PhieuNhapHang::find()->where(['status' => PhieuNhapHang::STATUS_FINISH, 'deleted' => PhieuNhapHang::DELETED_FALSE])->all(),
                                                'id', 'ma_phieu_nhap'), ['prompt' => '(Chọn)']) ?>
                                        <?= $form->field($model, 'gia_nhap', [])->textInput(['placeholder' => $model->getAttributeLabel('gia_nhap')]); ?>
                                        <?= $form->field($model, 'so_luong_nhap', [])->textInput(['placeholder' => $model->getAttributeLabel('so_luong_nhap')]); ?>
                                        <?= $form->field($model, 'ghi_chu', [])->textarea(['placeholder' => $model->getAttributeLabel('ghi_chu')]); ?>
                                    </div>
                                    <div class="col-md-4">
                                        <?php
                                        $metadata = Metadata::find()->all();
                                        $model_metadata = $model->getMetadata();
                                        $tmp = [];
                                        foreach ($model_metadata as $item) {
                                            /**
                                             * @var $item SanPhamMetadata
                                             */
                                            $tmp[$item->metadata_id] = ['id' => $item->id, 'value' => $item->value];
                                        }
                                        foreach ($metadata as $item) {
                                            /**
                                             * @var $item Metadata
                                             */
                                            ?>
                                            <div class="form-group">
                                                <label class="control-label col-md-4"><?= $item->name ?></label>
                                                <div class="col-md-8">
                                                    <?
                                                    $data = Json::decode($item->data);
                                                    if (is_array($data)) {
                                                        $tmp_2 = [];
                                                        foreach ($data as $d) {
                                                            $tmp_2[$d] = $d;
                                                        }
                                                        echo Html::dropDownList("SanPhamMetadata[" . $tmp[$item->id]['id'] . "]", $tmp[$item->id]['value'], $tmp_2, ['class' => 'form-control']);
                                                    } else {
                                                        echo Html::textInput("SanPhamMetadata[" . $tmp[$item->id]['id'] . "]", $tmp[$item->id]['value'], ['class' => 'form-control']);
                                                    }
                                                    ?>
                                                </div>
                                            </div>
                                            <?php
                                        }
                                        ?>
                                        <div class="form-group">
                                            <?= $form->field($model, 'avatar', ['template' => '{input}'])->hiddenInput() ?>

                                            <label class="control-label col-md-4">Ảnh sản phẩm</label>
                                            <div class="col-md-8">
                                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                                    <div class="fileinput-new thumbnail">
                                                        <img src="<?= !empty($model->avatar) ? $model->avatar : "http://www.placehold.it/300x300/EFEFEF/AAAAAA&amp;text=no+image" ?>"
                                                             id="avatar_url" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php ActiveForm::end(); ?>
    </div>
</div>
<?php
$this->registerCssFile(Url::home() . "metronic_v4.5.5/assets/global/plugins/jquery-ui/jquery-ui.min.css");
$this->registerJsFile(Url::home() . "metronic_v4.5.5/assets/global/plugins/jquery-ui/jquery-ui.min.js");

$this->registerCssFile(Url::home() . "plugins/elfinder-2.x/css/elfinder.full.css");
$this->registerJsFile(Url::home() . "plugins/elfinder-2.x/js/elfinder.full.js");
?>
<script>
    $(function () {
        $('#avatar_url').click(function () {
            $('<div id="file_manager" />').dialogelfinder({
                url: '<?=Url::home()?>plugins/elfinder-2.x/php/connector.php',
                width: '80%',
                height: '600px',
                getFileCallback: function (file) {
                    var filePath = file; //file contains the relative url.
                    //console.log(filePath)
                    $("#avatar_url").attr('src', filePath.url)
                    $('#sanphamkho-avatar').val(filePath.url)
                    $('#file_manager').remove();
                    return false;
                }
            });
            return false;
        })

        $("#sanphamkho-ngay_nhap").datepicker({
            dateFormat: 'dd/mm/yyyy',
            orientation: "left",
            todayBtn: "linked",
            language: "vi",
            autoclose: true,
            todayHighlight: true
        });
    })

</script>