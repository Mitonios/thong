<?php
/**
 * Created by PhpStorm.
 * User: Mitonios-Tofu
 * Date: 3/1/2016
 * Time: 5:26 PM
 */
use common\models\RltProductTicketProductImportBase;
use yii\bootstrap\Html;

/**
 * @var $model TicketProductImport
 */
?>
<div class="panel">
    <div class="panel-heading">
          <span class="panel-icon">
            <i class="fa fa-pencil"></i>
          </span>
        <span class="panel-title">Phiếu <?= $model->code ?></span>
    </div>
    <div class="panel-body">
        <div class="table-responsive">
            <table class="table table-bordered table-hover excel-table">
                <thead>
                <tr>
                    <th width="60">Mã</th>
                    <th>Tên sản phẩm</th>
                    <th>Ghi chú</th>
                    <th width="90" class="text-right">Giá nhập</th>
                    <th width="90" class="text-right">Giá bán</th>
                    <th width="50" class="text-right">SL</th>
                    <th width="150" class="text-right">Tổng tiền nhập</th>
                </tr>
                </thead>
                <tbody>
                <?php
                foreach ($items as $item) {
                    /**
                     * @var $item RltProductTicketProductImportBase
                     */
                    ?>
                    <tr>
                        <td><?= $item->product_code ?></td>
                        <td><?= $item->product_name ?></td>
                        <td><?= $item->note ?></td>
                        <td class="text-right"><?= number_format($item->price_store) ?></td>
                        <td class="text-right"><?= number_format($item->price_sale) ?></td>
                        <td class="text-right"><?= number_format($item->total_import) ?></td>
                        <td class="text-right"><?= number_format($item->total_import * $item->price_store * 1000) ?></td>
                    </tr>
                    <?
                }
                ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
