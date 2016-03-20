<?php
/**
 * @var $model User
 */
use common\models\User;

?>
<table class="table table-striped table-bordered detail-view">
    <tbody>
    <tr>
        <th><?= $model->attributeLabels()['username'] ?></th>
        <td><?= $model->username ?></td>
    </tr>
    <?= implode("", $rows) ?>
</table>
