<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2/24/2016
 * Time: 6:46 PM
 */
use backend\assets\AppAsset;
use common\models\TicketProductImport;
use yii\bootstrap\Html;
use yii\helpers\Url;

$this->title = "Nhập hàng";
?>
<!-- -------------- Topbar -------------- -->
<header id="topbar" class="alt">
    <div class="topbar-left">
        <ol class="breadcrumb">
            <li class="breadcrumb-icon">
                <span class="fa fa-archive"></span>
            </li>
            <li class="breadcrumb-active">
                <a href="#">Nhập hàng</a>
            </li>
            <li class="breadcrumb-link">
                <a href="<?= Url::home() ?>">Tổng quan</a>
            </li>
            <li class="breadcrumb-link">
                <a href="#">Kho hàng</a>
            </li>
            <li class="breadcrumb-current-item">Nhập hàng</li>
        </ol>
    </div>
    <div class="topbar-right hidden-xs hidden-sm mt5 ">
        <a href="<?= Url::to(['create']) ?>" class="btn btn-primary btn-bordered ml10"><span class="fa fa-plus pr5"></span> Tạo phiếu nhập</a>
    </div>
</header>
<!-- -------------- /Topbar -------------- -->
<section id="content" class="table-layout">
    <!-- -------------- Column Left -------------- -->
    <aside class="chute chute-left chute290" data-chute-height="match">
        <!-- -------------- Menu Block -------------- -->
        <div class="allcp-form theme-primary">
            <form action="" method="get">
                <h5 class="pln"> Tìm kiếm</h5>
                <div class="section">
                    <button class="btn btn-dark pull-right ph30" type="submit"><i class="fa fa-search"></i> Tìm kiếm</button>
                </div>
            </form>
        </div>
    </aside>
    <!-- -------------- /Column Left -------------- -->
    <div class="chute chute-center pt30">
        <div class="panel panel-visible" id="spy6">
            <div class="panel-heading">
                <div class="panel-title hidden-xs">Danh sách (<?= count($models) ?>) phiếu</div>
            </div>

            <div class="panel-body pn">
                <div class="table-responsive">
                    <table class="table allcp-form theme-warning tc-checkbox-1 fs13 table-hover" id="datatable" cellspacing="0" width="100%">
                        <thead>
                        <tr class="bg-light">
                            <th class="text-center" width="10">
                                <label class="option block mn">
                                    <input type="checkbox" name="inputname" value="FR">
                                    <span class="checkbox mn"></span>
                                </label>
                            </th>
                            <th width="10">Mã</th>
                            <th>Ghi chú</th>
                            <th>Ngày nhập</th>
                            <th class="text-right">Tổng hàng</th>
                            <th class="text-right">Tổng tiền</th>
                            <th>Nhà cung cấp</th>
                            <th width="10"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <?
                        /**
                         * @var $models TicketProductImport[]
                         */
                        foreach ($models as $model) {
                            ?>
                            <tr class="<?= $model->status == $model::STATUS_DRAFT ? "alert" : "" ?>">
                                <td class="text-center">
                                    <label class="option block mn">
                                        <input type="checkbox" name="inputname" value="FR">
                                        <span class="checkbox mn"></span>
                                    </label>
                                </td>
                                <td><?= $model->code ?></td>
                                <td><?= $model->note ?></td>
                                <td><?= $model->date_import ?></td>
                                <td class="text-right"><?= number_format($model->total_product) ?></td>
                                <td class="text-right"><?= number_format($model->total_price * 1000) ?></td>
                                <td><?= $model->provider_id ?></td>
                                <td>
                                    <?php
                                    if ($model->status == $model::STATUS_DRAFT) {
                                        echo Html::a('Tiếp tục <i class="fa fa-arrow-right"></i>', ['update', 'id' => $model->id], ['class' => 'btn btn-warning btn-xs']);
                                    } else {
                                        echo Html::a('Chi tiết', ['view', 'id' => $model->id], ['class' => 'btn btn-info btn-xs open-modal-xl']);
                                    }
                                    ?>
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

<?
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/datatables/media/js/jquery.dataTables.js", ['depends' => [AppAsset::className()]]);
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js", ['depends' => [AppAsset::className()]]);
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/datatables/extensions/ColReorder/js/dataTables.colReorder.min.js", ['depends' => [AppAsset::className()]]);
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/datatables/media/js/dataTables.bootstrap.js", ['depends' => [AppAsset::className()]]);

$this->registerCssFile(Url::home() . "alliance/assets/js/plugins/datatables/media/css/dataTables.bootstrap.css");
$this->registerCssFile(Url::home() . "alliance/assets/js/plugins/datatables/extensions/Editor/css/dataTables.editor.css");
$this->registerCssFile(Url::home() . "alliance/assets/js/plugins/datatables/extensions/ColReorder/css/dataTables.colReorder.min.css");
?>
<script>
    $(function () {
        /*$('#datatable').dataTable({
         "bSort": false,
         "iDisplayLength": 10,
         "aLengthMenu": [
         [10, 20, 50],
         [10, 20, 50]
         ],
         "sDom": '<"dt-panelmenu clearfix"lfr>t<"dt-panelfooter clearfix"ip>'
         });*/
    })
</script>
