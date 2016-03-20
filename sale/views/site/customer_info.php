<?php
/**
 * @var $model Customer
 */
use common\models\Customer;
use yii\helpers\Html;

echo Html::hiddenInput("Order[customer_id]", $model->id)
?>
<table class="table table-condensed customer-info">
    <tbody>
    <tr>
        <td>Mã</td>
        <td><?= $model->code ?></td>
    </tr>
    <tr>
        <td>Họ và tên</td>
        <td><?= $model->name ?></td>
    </tr>
    <tr class="noshow">
        <td>Phone</td>
        <td><?= $model->phone ?></td>
    </tr>
    <tr class="noshow">
        <td>VIP</td>
        <td><?= $model->vip ?>[<?= number_format($model->point) ?>]</td>
    </tr>
    <tr class="noshow">
        <td>Facebook</td>
        <td><a href="<?= $model->facebook ?>"><?= $model->facebook ?></a></td>
    </tr>
    <tr>
        <td colspan="2" class="text-center"><a href="#" onclick="$('.noshow').toggle();return false;">Xem thêm</a></td>
    </tr>
    </tbody>
</table>
