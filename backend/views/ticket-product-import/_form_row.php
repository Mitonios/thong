<?php
/**
 * Created by PhpStorm.
 * User: Mitonios-Tofu
 * Date: 2/26/2016
 * Time: 11:34 AM
 */
use common\models\RltProductTicketProductImport;
use yii\helpers\Url;

/**
 * @var $item RltProductTicketProductImport
 */
?>
<tr>
    <td><?= $stt ?></td>
    <td width="60">
        <div class="btn-group">
            <?php
            if (isset($item)) {
                ?>
                <a href="<?= Url::to(['remove-item', 'id' => $item->id]) ?>"
                   class="btn btn-danger btn-xs remove-item"><i class="fa fa-trash"></i></a>
                <?
            }
            ?>
            <!--<a href="" class="btn btn-success btn-xs"><i class="fa fa-pencil"></i></a>-->
        </div>
    </td>
    <td>
        <input type="hidden" name="Product[id][]" value="<?= isset($item) ? $item->id : "" ?>">
        <input type="hidden" name="Product[product_id][]" value="<?= isset($item) ? $item->product_id : "" ?>">
    </td>
    <td class="pn"><input name="Product[name][]" type="text" class="gui-input" placeholder="" value="<?= isset($item) ? $item->product_name : "" ?>"></td>
    <td class="pn"><textarea name="Product[note][]" id="" rows="1" class="gui-textarea" placeholder=""><?= isset($item) ? $item->note : "" ?></textarea></td>
    <td>
        <input type="text" name="Product[price_store_cn][]" class="gui-input text-right number-only price-store-cn"
               value="<?= isset($item) ? number_format($item->price_store_cn) : "" ?>" maxlength="7"
               onkeypress="return CheckNumeric();" onkeyup="FormatCurrency(this);tinh_tong_gia_nhap(this);">
    </td>
    <td>
        <input type="text" name="Product[price_store][]" class="gui-input text-right number-only price-store"
               value="<?= isset($item) ? number_format($item->price_store) : "" ?>" maxlength="7"
               onkeypress="return CheckNumeric();" onkeyup="FormatCurrency(this);tinh_tong_gia_nhap(this);">
    </td>
    <td>
        <input type="text" name="Product[price_sale][]" class="gui-input text-right number-only price-sale"
               value="<?= isset($item) ? number_format($item->price_sale) : "" ?>" maxlength="7"
               onkeypress="return CheckNumeric();" onkeyup="FormatCurrency(this);tinh_tong_gia_ban(this);">
    </td>
    <td><input type="text" name="Product[total_import][]" class="gui-input text-right number-only total-import"
               value="<?= isset($item) ? number_format($item->total_import) : "" ?>" maxlength="7"
               onkeypress="return CheckNumeric();" onkeyup="FormatCurrency(this);tinh_tong_gia_nhap(this);"></td>
    <td class="text-right">
        <span class="total-row-money"><?= isset($item) ? number_format($item->price_store * $item->total_import * 1000) : "" ?></span>
    </td>
    <td class="text-right">
        <span class="total-sale-row-money"><?= isset($item) ? number_format($item->price_sale * $item->total_import * 1000) : "" ?></span>
    </td>
</tr>