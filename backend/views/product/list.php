<?php
/* @var $this yii\web\View */
/**
 * @var $models Product[]
 *
 */
use backend\assets\AppAsset;
use common\components\Mitonios;
use common\models\Product;
use yii\bootstrap\Html;
use yii\helpers\Url;

$this->title = "Danh mục hàng";
?>
<!-- -------------- Topbar -------------- -->
<header id="topbar" class="alt">
    <div class="topbar-left">
        <ol class="breadcrumb">
            <li class="breadcrumb-icon">
                <span class="fa fa-archive"></span>
            </li>
            <li class="breadcrumb-active">
                <a href="#">Hàng hóa</a>
            </li>
            <li class="breadcrumb-link">
                <a href="<?= Url::home() ?>">Tổng quan</a>
            </li>
            <li class="breadcrumb-link">
                <a href="#">Cửa hàng</a>
            </li>
            <li class="breadcrumb-current-item">Danh mục hàng</li>
        </ol>
    </div>
    <div class="topbar-right hidden-xs hidden-sm mt5 ">
        <a href="<?= Url::to(['/product/create']) ?>" class="btn btn-primary btn-bordered ml10"><span class="fa fa-plus pr5"></span> Thêm sản phẩm</a>
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
                <div class="section mb20">
                    <label for="order-id" class="field prepend-icon">
                        <?= Html::textInput('filter[name]', Yii::$app->request->get('filter')['name'], ['class' => 'gui-input', 'placeholder' => 'Tên sản phẩm']) ?>
                        <label for="order-id" class="field-icon">
                            <i class="fa fa-pencil"></i>
                        </label>
                    </label>
                </div>

                <div class="section mb20">
                    <label for="order-id" class="field prepend-icon">
                        <?= Html::textInput('filter[code]', Yii::$app->request->get('filter')['code'], ['class' => 'gui-input', 'placeholder' => 'Mã sản phẩm']) ?>
                        <label for="order-id" class="field-icon">
                            <i class="fa fa-barcode"></i>
                        </label>
                    </label>
                </div>

                <h6 class="mb15"> Giá bán</h6>

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
                <h6 class="mb15"> Nhóm</h6>
                <div class="section mb20">
                    <label class="field select">
                        <?= Html::dropDownList("filter[category_id]", Yii::$app->request->get('filter')['category_id'], Mitonios::getCategoryList(), [
                            'prompt' => "(Chọn nhóm)"
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
        <div class="panel panel-visible" id="spy6">
            <div class="panel-heading">
                <div class="panel-title hidden-xs">Danh sách (<?= count($models) ?>) sản phẩm</div>
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
                            <th class="" width="10">Ảnh</th>
                            <th class="" width="10">Mã</th>
                            <th class="">Tên</th>
                            <th class="text-right">Giá bán</th>
                            <th class="text-right">Giá nhập</th>
                            <th class="text-right">Tồn kho</th>
                            <th width="10"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <?
                        foreach ($models as $model) {
                            ?>
                            <tr>
                                <td class="text-center">
                                    <label class="option block mn">
                                        <input type="checkbox" name="inputname" value="FR">
                                        <span class="checkbox mn"></span>
                                    </label>
                                </td>
                                <td>
                                    <?= Html::img(Yii::$app->params['uploadUrl'] . $model->avatar, ['data-src' => 'holder.js/100%x50',
                                        'class' => 'img-responsive mw40 ib mr10']) ?>
                                </td>
                                <td class=""><?= $model->code ?></td>
                                <td class=""><a href="<?= Url::to(['update', 'id' => $model->id]) ?>"><?= $model->name ?></a>
                                </td>
                                <td class="text-right"><?= number_format($model->price_sale) ?></td>
                                <td class="text-right"><?= number_format($model->price_store) ?></td>
                                <td class="text-right"><?= number_format($model->stock) ?></td>
                                <td class="text-right">
                                    <div class="btn-group text-right">
                                        <?php
                                        $class = "";
                                        $text = "";
                                        if ($model->stock == 0) {
                                            $class = "danger";
                                            $text = 'Hết hàng';
                                        } else {
                                            if ($model->status == $model::STATUS_ACTIVE) {
                                                $class = "success";
                                                $text = 'Đang bán';
                                            } else if ($model->status == $model::STATUS_DISABLE) {
                                                $class = "warning";
                                                $text = 'Dừng bán';
                                            }
                                        }
                                        ?>
                                        <button type="button" class="btn btn-<?= $class ?> br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                            <?= $text ?>
                                            <span class="caret ml5"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li>
                                                <a href="<?= Url::to(['update', 'id' => $model->id]) ?>">Cập nhật</a>
                                            </li>
                                            <li>
                                                <a onclick="return confirm('Xóa thật đấy?')" href="<?= Url::to(['delete', 'id' => $model->id]) ?>">Xóa</a>
                                            </li>
                                            <li class="divider"></li>
                                            <li class="<?= $model->status == $model::STATUS_ACTIVE ? "active" : "" ?>">
                                                <a href="<?= Url::to(['status', 'id' => $model->id, 'v' => $model::STATUS_ACTIVE]) ?>">Đang bán</a>
                                            </li>
                                            <li class="<?= $model->status == $model::STATUS_DISABLE ? "active" : "" ?>">
                                                <a href="<?= Url::to(['status', 'id' => $model->id, 'v' => $model::STATUS_DISABLE]) ?>">Dừng bán</a>
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
?>
<script>
    $(function () {
        $('#datatable').dataTable({
            stateSave: true,
            "bSort": false,
            "iDisplayLength": 10,
            "aLengthMenu": [
                [20, 50, 100],
                [20, 50, 100]
            ],
            "sDom": '<"dt-panelmenu clearfix"lfr>t<"dt-panelfooter clearfix"ip>'
        });
    })
</script>
