<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 3/22/2016
 * Time: 3:50 PM
 * @var $model PhieuNhapHangSearchForm
 */
use common\models\DaiLy;
use common\models\PhieuNhapHangSearchForm;
use yii\bootstrap\ActiveForm;
use yii\helpers\Html;
use yii\helpers\Url;

$this->title = "Quản lý đại lý";
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
                                <th width="10">ID</th>
                                <th>Tên</th>
                                <th width="10"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            foreach ($models as $item) {
                                /**
                                 * @var $item DaiLy
                                 */
                                ?>
                                <tr>
                                    <td><?= $item['id'] ?></td>
                                    <td><input type="text" class="form-control" name="Batch[<?= $item->id ?>][ten]" value="<?= $item->ten ?>"></td>
                                    <td>
                                        <a href="<?= Url::to(['delete', 'id' => $item['id']]) ?>" class="btn-xs btn red btn-outline"
                                           onclick="return delete_item(this)">Xóa</a>
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
                    <i class="fa fa-pencil"></i><?= $model->isNewRecord ? "Thêm mới" : "Cập nhật" ?>
                </div>
            </div>
            <div class="portlet-body form">
                <?php $form = ActiveForm::begin(['options' => [],
                ]); ?>
                <div class="form-body">
                    <?= $form->field($model, 'ten', [])->textInput(['placeholder' => $model->getAttributeLabel('ten')]); ?>
                </div>
                <div class="form-actions right1">
                    <button type="submit" class="btn blue"><i class="fa fa-save"></i><?= $model->isNewRecord ? "Thêm mới" : "Cập nhật" ?></button>
                    <a href="<?= Url::to(['index']) ?>" class="btn default">Hủy</a>
                </div>
                <?php ActiveForm::end(); ?>
            </div>
        </div>
    </div>
</div>
<script>
    function delete_item(obj) {
        if (confirm('Are you sure?')) {
            $.ajax({
                type: "POST",
                url: $(obj).attr('href'),
                data: {_csrf: '<?=Yii::$app->request->getCsrfToken()?>'},
                beforeSend: function () {
                    App.startPageLoading({animate: true});
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    toastr.error(xhr.responseText, 'Lỗi')
                    App.stopPageLoading()
                },
                success: function (data) {
                    toastr.success(data, 'OK')
                    $(obj).parent().parent().remove()
                    App.stopPageLoading()
                }
            });
        }
        return false;
    }
</script>