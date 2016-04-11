<?
use backend\assets\AppAsset;
use backend\assets\CrudAsset;
use backend\assets\DataTablesAsset;
use common\models\User;
use yii\bootstrap\Modal;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\web\View;

/**
 * @var $this yii\web\View
 */
CrudAsset::register($this);
/**
 * @var $this View
 * @var $models User[]
 */
$this->title = "Quản lý tài khoản";
?>
    <!-- BEGIN PAGE HEADER-->
    <!-- BEGIN PAGE BAR -->
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
        <div class="page-toolbar">
            <div class="btn-group pull-right">
                <?php
                echo Html::a('<span class="glyphicon glyphicon-plus"></span> Thêm mới', ['create'], ['role' => 'modal-remote', 'title' => "", 'class' => 'btn blue']);
                echo Html::a('Phân quyền', ['/rbac/assignment'], ['class' => 'btn red']);
                ?>
            </div>
        </div>
    </div>
    <!-- END PAGE BAR -->
    <!-- BEGIN PAGE TITLE-->
    <h3 class="page-title"> <?= $this->title ?>
        <small></small>
    </h3>
    <!-- END PAGE TITLE-->
    <!-- END PAGE HEADER-->
    <div class="row">
        <div class="col-md-4">

            <section id="content" class="table-layout">
               
                <div class="portlet box blue">
                    <div class="portlet-title">
                        <div class="caption">Danh sách</div>
                    </div>
                    <div class="portlet-body">


                        <div class="table-scrollable">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr class="bg-light">
                                    <th class="" width="10">#</th>
                                    <th class="">Username</th>
                                    <th width="10"></th>
                                </tr>
                                </thead>
                                <tbody>
                                <?
                                foreach ($models as $model) {
                                    ?>
                                    <tr>
                                        <td class=""><?= $model->id ?></td>
                                        <td class=""><a href="<?= Url::to(['update', 'id' => $model->id]) ?>" role="modal-remote"><?= $model->username ?></a></td>
                                        <td class="text-right">
                                            <div class="btn-group dropup">
                                                <button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown"
                                                        data-hover="dropdown" data-delay="1000" data-close-others="true" aria-expanded="false">
                                                    Action
                                                    <span class="caret ml5"></span>
                                                </button>
                                                <ul class="dropdown-menu pull-right" role="menu">
                                                    <li>
                                                        <a href="<?= Url::to(['update', 'id' => $model->id]) ?>" role="modal-remote">Cập nhật</a>
                                                    </li>
                                                    <li>
                                                        <a onclick="return confirm('Xóa thật đấy?')" href="<?= Url::to(['delete', 'id' => $model->id]) ?>">Xóa</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <?
                                }
                                ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>

<?php
Modal::begin([
    "id" => "ajaxCrubModal",
    "footer" => "", // always need it for jquery plugin
])
?>
<?php Modal::end(); ?>