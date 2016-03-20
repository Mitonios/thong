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
    <header id="topbar" class="alt">
        <div class="topbar-left">
            <ol class="breadcrumb">
                <li class="breadcrumb-icon">
                    <span class="fa fa-user"></span>
                </li>
                <li class="breadcrumb-active">
                    <a href="#">Tài khoản</a>
                </li>
                <li class="breadcrumb-link">
                    <a href="<?= Url::home() ?>">Tổng quan</a>
                </li>
                <li class="breadcrumb-link">
                    <a href="#">Tài khoản</a>
                </li>
                <li class="breadcrumb-current-item">Danh sách</li>
            </ol>
        </div>
        <div class="topbar-right hidden-xs hidden-sm mt5 ">
            <?php
            echo Html::a('<span class="glyphicon glyphicon-plus"></span> Thêm mới', ['create'], ['role' => 'modal-remote', 'title' => "", 'class' => 'btn btn-primary btn-bordered ml10']);
            echo Html::a('Phân quyền', ['/rbac/assignment'], ['class' => 'btn btn-primary btn-bordered ml10']);
            ?>
        </div>
    </header>

    <!-- -------------- /Topbar -------------- -->
    <div class="row">

        <div class="col-md-6">
            <section id="content" class="table-layout">
                <!-- -------------- Column Center -------------- -->
                <div class="chute chute-center pt30">
                    <div class="panel panel-visible" id="spy6">
                        <div class="panel-heading">
                            <div class="panel-title hidden-xs">Danh sách (<?= count($models) ?>) tài khoản</div>
                        </div>

                        <div class="panel-body pn">
                            <div class="table-responsive">
                                <table class="table allcp-form theme-warning tc-checkbox-1 fs13 table-hover" id="datatable" cellspacing="0" width="100%">
                                    <thead>
                                    <tr class="bg-light">
                                        <!--<th class="text-center" width="10">
                                            <label class="option block mn">
                                                <input type="checkbox" name="inputname" value="FR">
                                                <span class="checkbox mn"></span>
                                            </label>
                                        </th>-->
                                        <th class="" width="10">#</th>
                                        <th class="">Username</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?
                                    foreach ($models as $model) {
                                        ?>
                                        <tr>
                                            <!--<td class="text-center" width="10">
                                                <label class="option block mn">
                                                    <input type="checkbox" name="inputname" value="FR">
                                                    <span class="checkbox mn"></span>
                                                </label>
                                            </td>-->
                                            <td class=""><?= $model->id ?></td>
                                            <td class=""><a href="<?= Url::to(['update', 'id' => $model->id]) ?>" role="modal-remote"><?= $model->username ?></a></td>
                                            <td class="text-right">
                                                <div class="btn-group text-right">
                                                    <button type="button" class="btn btn-primary br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                        Action
                                                        <span class="caret ml5"></span>
                                                    </button>
                                                    <ul class="dropdown-menu" role="menu">
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
                </div>
            </section>
        </div>
    </div>

<?php
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/datatables/media/js/jquery.dataTables.js", ['depends' => [AppAsset::className()]]);
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js", ['depends' => [AppAsset::className()]]);
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/datatables/extensions/ColReorder/js/dataTables.colReorder.min.js", ['depends' => [AppAsset::className()]]);
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/datatables/media/js/dataTables.bootstrap.js", ['depends' => [AppAsset::className()]]);

$this->registerCssFile(Url::home() . "alliance/assets/js/plugins/datatables/media/css/dataTables.bootstrap.css");
$this->registerCssFile(Url::home() . "alliance/assets/js/plugins/datatables/extensions/Editor/css/dataTables.editor.css");
$this->registerCssFile(Url::home() . "alliance/assets/js/plugins/datatables/extensions/ColReorder/css/dataTables.colReorder.min.css");

Modal::begin([
    "id" => "ajaxCrubModal",
    "footer" => "", // always need it for jquery plugin
])
?>
<?php Modal::end(); ?>