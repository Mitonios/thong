<?php
/**
 * Created by PhpStorm.
 * User: Mitonios-Tofu
 * Date: 3/10/2016
 * Time: 5:10 PM
 */
/**
 * @var $model RltOrderProduct
 */
use common\models\RltOrderProduct;

?>
<tr id="product_<?= $model->id ?>">
    <td width="10">
        <img src="<?= Yii::$app->params['uploadUrl'] . $model->avatar_url ?>" alt="" height="32">
    </td>
    <td width="10"><?= $model->product_code ?></td>
    <td><a href=""><?= $model->product_name ?></a></td>
    <td width="200"><textarea name="RltOrderProduct[<?= $model->id ?>][note]" rows="1" placeholder="Ghi chú" class="form-control"></textarea></td>
    <td width="120"><input type="text" class="form-control text-right" value="<?= number_format($model->price_sale) ?>" readonly id="price_<?= $model->id ?>"></td>
    <td width="150">
        <div class="input-group">
            <span class="input-group-btn">
            <a class="btn btn-default" href="#" onclick="return decreaseQuality(<?= $model->id ?>)"><span class="glyphicon glyphicon-minus"></span></a>
            </span>
            <input type="text" name="RltOrderProduct[<?= $model->id ?>][quality]" id="quality_<?= $model->id ?>" class="form-control text-right product_quality" value="<?=
            $model->quality ?>" readonly>
            <span class="input-group-btn">
                <a class="btn btn-default" href="#" onclick="return increaseQuality(<?= $model->id ?>)"><span class="glyphicon glyphicon-plus"></span></a>
            </span>
        </div>
    </td>
    <td class="text-right" width="10">
        <h3 style="margin: 0;" id="total_price_<?= $model->id ?>" class="total_price"><?= number_format($model->price_sale * $model->quality) ?></h3>
    </td>
    <td width="10">
        <a href="#" onclick="return removeItem(<?= $model->id ?>)"
           class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span></a>
    </td>
</tr>
