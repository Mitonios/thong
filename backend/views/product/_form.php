<?php
/**
 * @var $this View
 * @var $model Product
 */
use backend\assets\AppAsset;
use common\components\Mitonios;
use common\models\Product;
use common\models\ProductImage;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\web\View;
use yii\widgets\ActiveForm;

?>
    <section id="content" class="table-layout">
        <div class="chute chute-center pt30 ">
            <div class="panel mb25 ">
                <div class="panel-body pn mn">

                    <?php $form = ActiveForm::begin([
                        'id' => 'validate-form',
                        'errorSummaryCssClass' => 'alert alert-danger pastel alert-dismissable',
                        'options' => ['class' => 'form-horizontal', 'enctype' => 'multipart/form-data'],
                    ]); ?>

                    <div class=" pn br-n allcp-form theme-primary">
                        <div class="section row mbn">
                            <div class="col-md-8 ph10">
                                <?= $form->errorSummary($model); ?>

                                <div class="section row mb10">
                                    <div class="col-md-2 ph10">
                                        <label class="field prepend-icon">
                                            <?= Html::activeTextInput($model, 'code', ['class' => 'gui-input', 'placeholder' => $model->getAttributeLabel('code'), 'readonly' => 'readonly']) ?>
                                            <label for="product-sku" class="field-icon">
                                                <i class="fa fa-barcode"></i>
                                            </label>
                                        </label>
                                    </div>
                                    <div class="col-md-7 ph10">
                                        <label class="field prepend-icon">
                                            <?= Html::activeTextInput($model, 'name', ['class' => 'gui-input', 'placeholder' =>
                                                $model->getAttributeLabel('name'),
                                                'required' => 'required']) ?>
                                            <label class="field-icon">
                                                <i class="fa fa-pencil"></i>
                                            </label>
                                        </label>
                                    </div>
                                    <div class="col-md-3 ph10">
                                        <div class="smart-widget sm-right smr-50">
                                            <label class="field select">
                                                <?=
                                                Html::activeDropDownList($model, 'category_id', Mitonios::getCategoryList(), ['prompt' => "(Chọn nhóm)"])
                                                ?>
                                                <i class="arrow double"></i>
                                            </label>
                                            <a href="<?= Url::to(['/category/ajax-view']) ?>" class="button btn-primary open-modal">
                                                <i class="fa fa-folder"></i>
                                            </a>
                                        </div>

                                    </div>
                                </div>
                                <div class="section mb10">
                                    <label class="field prepend-icon">
                                        <?= Html::activeTextarea($model, 'description', ['class' => 'gui-textarea br-light bg-light maxlength',
                                            'placeholder' => $model->getAttributeLabel('description'), 'maxlength' => 500]) ?>
                                        <label class="field-icon">
                                            <i class="fa fa-file"></i>
                                        </label>
                                    </label>
                                </div>

                                <div class="section row mb10">
                                    <div class="col-md-4 ">
                                        <div class="form-group mn">
                                            <label class="col-lg-4 control-label"><?= $model->getAttributeLabel('price_sale') ?></label>

                                            <div class="col-lg-8">
                                                <div class="smart-widget sm-right smr-90">
                                                    <label class="field prepend-icon">
                                                        <?= Html::activeTextInput($model, 'price_sale', ['class' => 'gui-input', 'placeholder' =>
                                                            $model->getAttributeLabel('price_sale')]) ?>
                                                        <label class="field-icon">
                                                            <i class="fa fa-usd"></i>
                                                        </label>
                                                    </label>
                                                    <label class="button">.000 VNĐ</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group mn">
                                            <label class="col-lg-4 control-label"><?= $model->getAttributeLabel('price_store') ?></label>

                                            <div class="col-lg-8">
                                                <div class="smart-widget sm-right smr-100">
                                                    <label class="field prepend-icon">
                                                        <?= Html::activeTextInput($model, 'price_store', ['class' => 'gui-input', 'placeholder' =>
                                                            $model->getAttributeLabel('price_store'), 'readonly' => true]) ?>
                                                        <label class="field-icon">
                                                            <i class="fa fa-usd"></i>
                                                        </label>
                                                    </label>
                                                    <label class="button">.000 VNĐ</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 ">
                                        <div class="form-group mn">
                                            <label class="col-lg-4 control-label">Tồn kho</label>

                                            <div class="col-lg-8">
                                                <label class="field prepend-icon">
                                                    <?= Html::activeTextInput($model, 'stock', ['class' => 'gui-input text-right', 'placeholder' =>
                                                        $model->getAttributeLabel('stock')]) ?>
                                                    <label class="field-icon">
                                                        <i class="imoon imoon-cart2"></i>
                                                    </label>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php
                                if (!$model->isNewRecord) {
                                    ?>
                                    <hr class="short alt">
                                    <h6 class="mb20">Ảnh mô tả sản phẩm</h6>
                                    <div class="dropzone dz-clickable" id="myDrop" action="<?= Url::to(['upload-image', 'id' => $model->id]) ?>">
                                        <div class="dz-default dz-message" data-dz-message="">
                                            <span>Drop files here to upload</span>
                                        </div>
                                    </div>
                                    <?php
                                    if ($model->getImages()) {
                                        $images = $model->getImages();
                                        foreach ($images as $image) {
                                            /**
                                             * @var $image ProductImage
                                             */
                                            ?>
                                            <div class="dz-preview dz-processing dz-error dz-image-preview hidden example-preview">
                                                <div class="dz-details">
                                                    <div class="dz-filename">
                                                        <span data-dz-name=""></span>
                                                    </div>
                                                    <img data-dz-thumbnail="" alt="avatar" src="<?= Yii::$app->params['uploadUrl'] . $image->url ?>"
                                                         class="img-responsive magnificPopup">
                                                </div>
                                                <a class="dz-remove" href="<?= Url::to(['delete-image', 'id' => $image->id]) ?>" data-dz-remove>Remove file</a>
                                            </div>
                                            <?php
                                        }
                                    }
                                }
                                ?>
                                <hr class="short alt">
                                <div class="section mbn text-right ">
                                    <div class="text-right ">
                                        <button class="btn btn-bordered btn-success ladda-button  progress-button" type="submit" data-style="zoom-out" name="redirect"
                                                value="update">
                                            <span class="ladda-label">Lưu và tiếp tục cập nhật</span>
                                        </button>
                                        <button class="btn btn-bordered btn-primary ladda-button progress-button" type="submit" data-style="zoom-out" name="redirect"
                                                value="create">
                                            <span class="ladda-label">Lưu và tiếp tục tạo mới</span>
                                        </button>
                                        <a href="<?= Url::to(['list']) ?>" class="btn btn-bordered btn-default ladda-button">Danh mục</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 ph10">
                                <div class="fileupload fileupload-new allcp-form" data-provides="fileupload">
                                    <div class="fileupload-preview thumbnail mb20">
                                        <?= Html::img(Yii::$app->params['uploadUrl'] . $model->avatar, ['data-src' => 'holder.js/200%x150']) ?>
                                    </div>
                                    <span class="button btn-default btn-file btn-block">
                                      <span class="fileupload-new">Chọn ảnh đại diện</span>
                                      <span class="fileupload-exists">Đổi ảnh đại diện</span>
                                        <?= Html::activeFileInput($model, "avatarFile") ?>
                                    </span>
                                </div>
                            </div>
                        </div>

                        <!-- -------------- /section -------------- -->

                    </div>
                    <?php ActiveForm::end(); ?>
                </div>
            </div>
        </div>
    </section>
    <script>
        $(function () {
            $('.maxlength').maxlength({
                threshold: 15,
                placement: "right"
            });
            $(".select2").select2();
            $("#validate-form").validate({
                // States
                errorClass: "state-error",
                validClass: "state-success",
                errorElement: "em",
                highlight: function (element, errorClass, validClass) {
                    $(element).closest('.field').addClass(errorClass).removeClass(validClass);
                },
                unhighlight: function (element, errorClass, validClass) {
                    $(element).closest('.field').removeClass(errorClass).addClass(validClass);
                },
                errorPlacement: function (error, element) {
                    if (element.is(":radio") || element.is(":checkbox")) {
                        element.closest('.option-group').after(error);
                    } else {
                        error.insertAfter(element.parent());
                    }
                }
            })
            var Drop = $('#myDrop');
            Drop.addClass('dz-started dz-demo');
            $('.example-preview').each(function (i, e) {
                var This = $(e);
                var thumbOut = setTimeout(function () {
                    Drop.append(This);
                    This.addClass('animated fadeInRight').removeClass('hidden');
                }, i * 50);
            });
            $('.example-preview').on('click', 'a.dz-remove', function () {
                if (confirm("Xóa ảnh thật đấy?")) {
                    $.ajax({
                        url: $(this).attr('href'),
                    });
                    $(this).parent('.example-preview').remove();
                    showAlert('OK!', 'Đã xóa ảnh', 'primary')
                }
                return false;
            });

            $('.magnificPopup').magnificPopup({
                type: 'image',
                callbacks: {
                    beforeOpen: function (e) {
                        // Indicate active overlay
                        $('body').addClass('mfp-bg-open');

                        // Magnific Animation
                        this.st.mainClass = 'mfp-zoomIn';

                        // Animation notify class
                        this.contentContainer.addClass('mfp-with-anim');
                    },
                    afterClose: function (e) {

                        setTimeout(function () {
                            $('body').removeClass('mfp-bg-open');
                            $(window).trigger('resize');
                        }, 1000)

                    },
                    elementParse: function (item) {
                        item.src = item.el.attr('src');
                    }
                },
                overflowY: 'scroll',
                removalDelay: 200
            });
            autosize($('textarea'));
        })
    </script>
    <style>
        /*dropzone demo css*/
        .dz-demo .dz-message {
            opacity: 0 !important;
        }

        .dropzone .dz-preview.example-preview .dz-success-mark,
        .dropzone-previews .dz-preview.example-preview .dz-success-mark {
            opacity: 1;
        }

        .dropzone .dz-preview.example-preview .dz-error-mark,
        .dropzone-previews .dz-preview.example-preview .dz-error-mark {
            opacity: 0;
        }

        .dropzone a.dz-remove, .dropzone-previews a.dz-remove {
            margin-top: 5px;
        }

        .dropzone .dz-preview .dz-details, .dropzone-previews .dz-preview .dz-details {
            margin-bottom: 0px;
        }

        .dz-details {
            overflow: hidden;
        }

        .dropzone .dz-preview .dz-details img, .dropzone-previews .dz-preview .dz-details img {
            height: auto;
        }
    </style>
<?
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/fileupload/fileupload.js", ['depends' => [AppAsset::className()]]);
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/maxlength/bootstrap-maxlength.min.js", ['depends' => [AppAsset::className()]]);
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/jquerymask/jquery.maskedinput.min.js", ['depends' => [AppAsset::className()]]);
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/select2/select2.min.js", ['depends' => [AppAsset::className()]]);
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/dropzone/dropzone.min.js", ['depends' => [AppAsset::className()]]);
$this->registerCssFile(Url::home() . "alliance/assets/allcp/forms/css/forms.css");
$this->registerCssFile(Url::home() . "alliance/assets/js/plugins/select2/css/core.css");
$this->registerCssFile(Url::home() . "alliance/assets/js/plugins/dropzone/css/dropzone.css");
