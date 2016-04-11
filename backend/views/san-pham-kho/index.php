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
use common\models\SanPhamKho;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\LinkPager;

$this->title = "Sản phẩm kho";
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
            <a href="<?= Url::to(['create']) ?>" class="btn btn-primary btn-bordered ml10"><span class="fa fa-plus pr5"></span> Tạo sản phẩm mới</a>
        </div>
    </div>
</div>

<h3 class="page-title"> <?= $this->title ?>
    <small></small>
</h3>
<div class="row">

    <div class="col-md-2 hidden-xs">
        <div class="mt-element-list" style="margin-bottom: 20px;">
            <div class="mt-list-head list-simple ext-1 font-white bg-green-sharp">
                <div class="list-head-title-container">
                    <h4 class="list-title">Chuyên mục</h4>
                </div>
            </div>
            <div class="mt-list-container list-news">
                <ul>
                    <li class="mt-list-item">
                        <div class="list-item-content">
                            <a href="<?= Url::to(['index']) ?>">[ Tất cả ]</a>
                        </div>
                    </li>
                    <?php
                    $categories = Mitonios::getCategoryList();
                    foreach ($categories as $category) {
                        ?>
                        <li class="mt-list-item">
                            <div class="list-item-content">
                                <a href="<?= Url::to(['index', 'chuyen_muc_id' => $category['id']]) ?>"><?= $category['ten_hien_thi'] ?></a>
                            </div>
                        </li>
                        <?php
                    }
                    ?>
                </ul>
            </div>
        </div>

        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-search"></i>Tìm kiếm
                </div>
            </div>
            <div class="portlet-body form">
                <?php $form = ActiveForm::begin(['options' => [], 'method' => 'GET']); ?>
                <div class="form-body">
                    <?= $form->field($model, 'id') ?>
                    <?= $form->field($model, 'ten') ?>
                    <?= $form->field($model, 'status')->dropDownList(SanPhamKho::getStatusList(), ['prompt' => '(Chọn)']) ?>
                    <?= $form->field($model, 'chuyen_muc_id')->dropDownList(Mitonios::convertCategoryToDropdown(), ['prompt' => '(Chọn)']) ?>
                    <?= $form->field($model, 'ma_nhap') ?>
                    <?= $form->field($model, 'phieu_nhap_id')->dropDownList(
                        ArrayHelper::map(PhieuNhapHang::find()->where(['status' => PhieuNhapHang::STATUS_FINISH, 'deleted' => PhieuNhapHang::DELETED_FALSE])->all(),
                            'id', 'ma_phieu_nhap'), ['prompt' => '(Chọn)']) ?>
                </div>
                <div class="form-actions right1">
                    <button type="submit" class="btn green"><i class="fa fa-search"></i>Tìm</button>
                    <a href="<?= Url::to(['index']) ?>" class="btn default">Clear</a>
                </div>
                <?php ActiveForm::end(); ?>
            </div>
        </div>
    </div>
    <div class="col-md-10">
        <div class="portlet box blue">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-list-ol"></i>Danh sách [<?= $count ?>]
                </div>
                <div class="actions">
                    <form action="<?= Url::to(['/config/set']) ?>" method="post">
                        <?= Html::hiddenInput('_csrf', Yii::$app->request->getCsrfToken()) ?>
                        <?= Html::dropDownList("config[" . Yii::$app->user->id . "list_item_limit]",
                            Yii::$app->config->get(Yii::$app->user->id . 'list_item_limit', 20), [20 => 20, 50 => 50, 100 => 100],
                            ['class' => 'form-control', 'onchange' => '$(this).parent().submit()']) ?>
                    </form>
                </div>
            </div>
            <div class="portlet-body">
                <form action="<?= Url::to(['batch-action']) ?>" method="post" id="list-form">
                    <?php
                    echo LinkPager::widget([
                        'pagination' => $pagination,
                    ]);
                    ?>
                    <div class="table-scrollable">
                        <?= Html::hiddenInput('_csrf', Yii::$app->request->getCsrfToken()) ?>
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th width="10">
                                    <input type="checkbox" id="group-checkable">
                                </th>
                                <th scope="col" width="10">Ảnh</th>
                                <th scope="col">Mã nhập</th>
                                <th scope="col">Mã gốc</th>
                                <th scope="col">Tên</th>
                                <th scope="col">Chuyên mục</th>
                                <th scope="col" class="text-right">Giá nhập</th>
                                <th scope="col" width="100">Giá bán</th>
                                <th scope="col" class="text-right">Tồn/Nhập</th>
                                <th scope="col" class="hidden-xs">Ghi chú</th>
                                <th scope="col" class="hidden-xs">Ngày sửa</th>
                                <th scope="col" width="10"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            foreach ($models as $model) {
                                /**
                                 * @var $model SanPhamKho
                                 */
                                ?>
                                <tr class="<?= $model->status == $model::STATUS_DRAFT ? "danger" : "" ?>">
                                    <td>
                                        <input type="checkbox" class="item-check" name="id[]" value="<?= $model->id ?>">
                                    </td>
                                    <td>
                                        <?php
                                        $avatar = !empty($model->avatar) ? $model->avatar : "http://www.placehold.it/300x300/EFEFEF/AAAAAA&amp;text=no+image";
                                        ?>
                                        <a href="#" class="p_avatar" rel="popover" data-img="<?= $avatar ?>" data-id="<?= $model->id ?>">
                                            <img src="<?= Mitonios::thumbnail($avatar) ?>"
                                                 width="40" height="40" id="avatar_<?= $model->id ?>">
                                        </a>
                                    </td>
                                    <td><?= $model->ma_nhap ?></td>
                                    <td><?= $model->ma_goc ?></td>
                                    <td><input type="text" class="form-control" name="SanPhamKho[<?= $model->id ?>][ten]" value="<?= $model->ten ?>"></td>
                                    <td>
                                        <?= Html::dropDownList("SanPhamKho[" . $model->id . "][chuyen_muc_id]", $model->chuyen_muc_id, Mitonios::convertCategoryToDropdown(), ['class' => 'form-control']) ?>
                                    </td>
                                    <td class="text-right"><?= number_format($model->gia_nhap) ?></td>
                                    <td><input type="text" class="form-control text-right" name="SanPhamKho[<?= $model->id ?>][gia_ban]" value="<?= $model->gia_ban ?>"></td>
                                    <td class="text-right"><?= $model->so_luong_ton ?>/<?= $model->so_luong_nhap ?></td>
                                    <td class="hidden-xs">
                                        <textarea name="SanPhamKho[<?= $model->id ?>][ghi_chu]" id="" class="form-control" rows="1"><?= $model->ghi_chu ?></textarea>
                                    </td>
                                    <td class="hidden-xs"><?= date("H:i:s d/m/Y", $model->updated_at) ?><br><i><?= Mitonios::getUser($model->updated_by) ?></i></td>
                                    <td class="">
                                        <div class="btn-group">
                                            <a href="<?= Url::to(['update', 'id' => $model->id]) ?>" class="btn-xs btn blue btn-outline "><span class="fa fa-pencil"></span> Sửa</a>
                                        </div>
                                    </td>
                                </tr>
                                <?php
                            }
                            ?>
                            <tr>
                                <td colspan="4">
                                    <div class="btn-group dropup">
                                        <button type="button" class="btn blue dropdown-toggle btn-outline" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true"
                                                aria-expanded="false"> Action
                                            <i class="fa fa-angle-down"></i>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li>
                                                <a href="javascript:;" onclick="batchAction('active')">Kích hoạt</a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" onclick="batchAction('deactive')">Dừng xuất kho</a>
                                            </li>
                                            <li>
                                                <a href="#" onclick="if(confirm('Bạn có chắc chắn muốn xóa?')){batchAction('delete')};return false;">Xóa</a>
                                            </li>
                                            <li class="divider"></li>
                                            <li>
                                                <a href="#" onclick="return xuat_kho()">Xuất kho</a>
                                            </li>
                                        </ul>
                                    </div>
                                </td>
                                <td colspan="8">
                                    <div class="btn-group">
                                        <input type="hidden" name="type" value="update_all" id="submit_btn">
                                        <button type="submit" class="btn blue">
                                            <span class="fa fa-save"></span>
                                            Cập nhật thông tin mới
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <?php
                    echo LinkPager::widget([
                        'pagination' => $pagination,
                    ]);
                    ?>
                </form>

            </div>
        </div>
    </div>
</div>
<?php
$this->registerCssFile(Url::home() . "metronic_v4.5.5/assets/global/plugins/jquery-ui/jquery-ui.min.css");
$this->registerJsFile(Url::home() . "metronic_v4.5.5/assets/global/plugins/jquery-ui/jquery-ui.min.js");

$this->registerCssFile(Url::home() . "plugins/elfinder-2.x/css/elfinder.full.css");
$this->registerJsFile(Url::home() . "plugins/elfinder-2.x/js/elfinder.full.js");
?>
<script>
    function batchAction(type) {
        $('#submit_btn').val(type)
        $('#list-form').submit()
    }
    function xuat_kho() {
        var ids = [];
        $('.item-check').each(function () {
            if ($(this).prop('checked')) {
                ids.push(parseInt($(this).val()))
            }
        })
        if (ids.length > 0)
            $.ajax({
                type: "POST",
                url: "<?=Url::to(['tao-phieu-xuat-kho'])?>",
                data: {_csrf: '<?=Yii::$app->request->getCsrfToken()?>', ids: ids},
                beforeSend: function () {
                    App.startPageLoading({animate: true});
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    toastr.error(xhr.responseText, 'Lỗi')
                    App.stopPageLoading()
                },
                success: function (data) {
                    console.log(data)
                    $('#modal-large').find('.modal-content').html(data)
                    $('#modal-large').modal('show')
                    App.stopPageLoading()
                }
            });
        return false;
    }
    $(function () {
        $('#group-checkable').click(function () {
            $('input:checkbox').not(this).prop('checked', this.checked);
            $.uniform.update();
        })

        $('.p_avatar').click(function () {
            $('#file_manager').remove();
            //console.log(this)
            var btn = $(this), id = btn.data('id')
            $('<div id="file_manager" />').dialogelfinder({
                url: '<?=Url::home()?>plugins/elfinder-2.x/php/connector.php',
                width: '80%',
                height: '600px',
                getFileCallback: function (file) {
                    var filePath = file; //file contains the relative url.
                    console.log(filePath)
                    //console.log(filePath)
                    $.ajax({
                        type: "POST",
                        url: "<?=Url::to(['change-attribute'])?>",
                        data: {_csrf: '<?=Yii::$app->request->getCsrfToken()?>', id: id, value: filePath.url, attr: "avatar"},
                        beforeSend: function () {
                            App.startPageLoading({animate: true});
                        },
                        error: function (xhr, ajaxOptions, thrownError) {
                            toastr.error(xhr.responseText, 'Lỗi')
                            App.stopPageLoading()
                        },
                        success: function (data) {
                            toastr.success(data)
                            App.stopPageLoading()
                            $("#avatar_" + id).attr('src', filePath.tmb)
                            $('#file_manager').remove();
                        }
                    });
                    return false;
                }
            });
            return false;
        })

        $('a[rel=popover]').popover({
            html: true,
            trigger: 'hover',
            content: function () {
                return '<img src="' + $(this).data('img') + '" width="500"/>';
            }
        });
    })
</script>