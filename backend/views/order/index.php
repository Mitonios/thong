<?php
/* @var $this yii\web\View */
/**
 * @var $models Order[]
 *
 */
use backend\assets\AppAsset;
use common\components\Mitonios;
use common\models\Customer;
use common\models\Order;
use common\models\Product;
use yii\bootstrap\Html;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;

$this->title = "Đơn đặt hàng";
?>
<!-- -------------- Topbar -------------- -->
<header id="topbar" class="alt">
    <div class="topbar-left">
        <ol class="breadcrumb">
            <li class="breadcrumb-icon">
                <span class="fa fa-archive"></span>
            </li>
            <li class="breadcrumb-active">
                <a href="#">Đơn hàng</a>
            </li>
            <li class="breadcrumb-link">
                <a href="<?= Url::home() ?>">Tổng quan</a>
            </li>
            <li class="breadcrumb-current-item">Đơn hàng</li>
        </ol>
    </div>
    <div class="topbar-right hidden-xs hidden-sm mt5 ">
        <a href="#" class="btn btn-primary btn-bordered ml10"><span class="fa fa-plus pr5"></span>Tạo đơn hàng</a>
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

                <h6 class="mb15"> Tổng giá</h6>
                <div class="section row mb20">
                    <div class="col-md-6 ph10">
                        <label for="price1" class="field prepend-icon mb5">
                            <?= Html::textInput('filter[price_sale_0]', Yii::$app->request->get('filter')['price_sale_0'], ['class' => 'gui-input', 'placeholder' => 'Lớn hơn']) ?>
                            <label for="price1" class="field-icon">
                                <i class="fa fa-usd"></i>
                            </label>
                        </label>
                    </div>
                    <div class="col-md-6 ph10">
                        <label for="price2" class="field prepend-icon">
                            <?= Html::textInput('filter[price_sale_1]', Yii::$app->request->get('filter')['price_sale_1'], ['class' => 'gui-input', 'placeholder' => 'Nhỏ hơn']) ?>
                            <label for="price2" class="field-icon">
                                <i class="fa fa-usd"></i>
                            </label>
                        </label>
                    </div>
                </div>
                <h6 class="mb15"> Ngày lập</h6>
                <div class="section mb20">
                    <label for="date_import" class="field prepend-icon">
                        <input type="text" id="sale_date" name="filter[sale_date]"
                               class="gui-input" value="<?= Yii::$app->request->get('filter')['sale_date'] ?>"
                               placeholder="">
                        <label class="field-icon">
                            <i class="fa fa-calendar"></i>
                        </label>
                    </label>
                </div>
                <h6 class="mb15"> Khách hàng</h6>
                <div class="section mb20">
                    <label class="field select">
                        <?= Html::dropDownList("filter[customer_id]", Yii::$app->request->get('filter')['customer_id'], ArrayHelper::map(Customer::find()->all(), 'id', 'name'), [
                            'prompt' => "(Chọn khách)"
                        ]) ?>
                        <i class="arrow double"></i>
                    </label>
                </div>

                <hr class="short">

                <div class="section">
                    <button class="btn btn-dark pull-right ph30" type="submit"><i class="fa fa-search"></i> Tìm kiếm</button>
                </div>
            </form>
        </div>

    </aside>
    <!-- -------------- /Column Left -------------- -->

    <!-- -------------- Column Center -------------- -->
    <div class="chute chute-center pt30">
        <div class="table-layout">
            <div class="">
                <!-- -------------- Quick Links -------------- -->
                <div class="row">
                    <div class="col-sm-6 col-xl-3">
                        <div class="panel panel-tile">
                            <div class="panel-body">
                                <div class="row pv10">
                                    <div class="col-xs-5 ph10"><img src="<?= Url::home() ?>images/billing.png" class="img-responsive mauto" alt=""/></div>
                                    <div class="col-xs-7 pl5">
                                        <h6 class="text-muted">Tổng tiền</h6>

                                        <h2 class="fs50 mt5 mbn"><?= number_format($tong_tien) ?></h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="panel panel-tile">
                            <div class="panel-body">
                                <div class="row pv10">
                                    <div class="col-xs-5 ph10"><img src="<?= Url::home() ?>images/discount.png" class="img-responsive mauto" alt=""/></div>
                                    <div class="col-xs-7 pl5">
                                        <h6 class="text-muted">Tổng giảm</h6>

                                        <h2 class="fs50 mt5 mbn"><?= number_format($tong_giam) ?></h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="panel panel-tile">
                            <div class="panel-body">
                                <div class="row pv10">
                                    <div class="col-xs-5 ph10"><img src="<?= Url::home() ?>images/order.png" class="img-responsive mauto" alt=""/></div>
                                    <div class="col-xs-7 pl5">
                                        <h6 class="text-muted">Tổng đơn hàng</h6>

                                        <h2 class="fs50 mt5 mbn"><?= number_format($tong_don_hang) ?></h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="panel panel-tile">
                            <div class="panel-body">
                                <div class="row pv10">
                                    <div class="col-xs-5 ph10"><img src="<?= Url::home() ?>images/product.png" class="img-responsive mauto" alt=""/></div>
                                    <div class="col-xs-7 pl5">
                                        <h6 class="text-muted">Tổng sản phẩm</h6>

                                        <h2 class="fs50 mt5 mbn"><?= number_format($tong_san_pham) ?></h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel panel-visible" id="spy6">
            <div class="panel-heading">
                <div class="panel-title hidden-xs">Danh sách (<?= count($models) ?>) đơn hàng</div>
            </div>

            <div class="panel-body pn">
                <div class="table-responsive">
                    <table class="table allcp-form theme-warning tc-checkbox-1 fs13 table-hover" id="datatable" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <th>Mã</th>
                            <th>Ngày bán</th>
                            <th class="text-right">SP</th>
                            <th class="text-right">Tổng tiền</th>
                            <th class="text-right">Giảm giá</th>
                            <th class="text-right">Còn lại</th>
                            <th>Người bán</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?
                        foreach ($models as $model) {
                            /**
                             * @var $model Order
                             */
                            ?>
                            <tr>
                                <td><?= $model->code ?></td>
                                <td><?= date("H:i:s d/m/Y", strtotime($model->sale_date)) ?></td>
                                <td class="text-right"><?= number_format($model->total_product) ?></td>
                                <td class="text-right"><?= number_format($model->total_money * 1000) ?></td>
                                <td class="text-right"><?= number_format($model->discount * 1000) ?></td>
                                <td class="text-right"><?= number_format($model->total_money - $model->discount) ?>,000</td>
                                <td><?= $model->sale_id ?></td>
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
    <!-- -------------- /Column Center -------------- -->
</section>
<?
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/datatables/media/js/jquery.dataTables.js", ['depends' => [AppAsset::className()]]);
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js", ['depends' => [AppAsset::className()]]);
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/datatables/extensions/ColReorder/js/dataTables.colReorder.min.js", ['depends' => [AppAsset::className()]]);
$this->registerJsFile(Url::home() . "alliance/assets/js/plugins/datatables/media/js/dataTables.bootstrap.js", ['depends' => [AppAsset::className()]]);

$this->registerCssFile(Url::home() . "alliance/assets/js/plugins/datatables/media/css/dataTables.bootstrap.css");
$this->registerCssFile(Url::home() . "alliance/assets/js/plugins/datatables/extensions/Editor/css/dataTables.editor.css");
$this->registerCssFile(Url::home() . "alliance/assets/js/plugins/datatables/extensions/ColReorder/css/dataTables.colReorder.min.css");

$this->registerJsFile(Url::home() . "alliance/assets/allcp/forms/js/jquery-ui-datepicker.min.js");
?>
<script>
    $(function () {
        $("#sale_date").datepicker({
            dateFormat: 'dd/mm/yy',
            prevText: '<i class="fa fa-chevron-left"></i>',
            nextText: '<i class="fa fa-chevron-right"></i>',
            showButtonPanel: false,
            beforeShow: function (input, inst) {
                var newclass = 'allcp-form';
                var themeClass = $(this).parents('.allcp-form').attr('class');
                var smartpikr = inst.dpDiv.parent();
                if (!smartpikr.hasClass(themeClass)) {
                    inst.dpDiv.wrap('<div class="' + themeClass + '"></div>');
                }
            }
        });
        $('#datatable').dataTable({
            stateSave: true,
            "bSort": false,
            "iDisplayLength": 10,
            "aLengthMenu": [
                [20, 50,100],
                [20, 50,100]
            ],
            "sDom": '<"dt-panelmenu clearfix"lfr>t<"dt-panelfooter clearfix"ip>'
        });
    })
</script>
