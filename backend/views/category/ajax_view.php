<?php
/**
 * Created by PhpStorm.
 * User: Mitonios-Tofu
 * Date: 2/22/2016
 * Time: 5:36 PM
 * @var $model Category
 */
use common\components\Mitonios;
use common\models\Category;
use yii\helpers\Html;
use yii\helpers\Url;

//var_dump(Mitonios::getCategoryList());die;
$items = Mitonios::getCategoryList();
?>
<div class="panel">
    <div class="panel-heading">
          <span class="panel-icon">
            <i class="fa fa-folder"></i>
          </span>
        <span class="panel-title">Nhóm hàng hóa</span>
    </div>
    <div class="panel-body">
        <h6 class="mb5" id="widget5">Tạo nhóm mới</h6>
        <form action="<?= Url::to(['/category/create']) ?>" method="post" class="allcp-form">
            <?= Html::hiddenInput('_csrf', Yii::$app->request->getCsrfToken()) ?>
            <div class="section mb5">
                <label class="field prepend-icon">
                    <?= Html::activeTextInput($model, 'name', ['class' => 'gui-input', 'placeholder' => 'Tên nhóm hàng']) ?>
                    <label class="field-icon">
                        <i class="fa fa-pencil"></i>
                    </label>
                </label>
            </div>
            <div class="section mb5">
                <label class="field select">
                    <?= Html::activeDropDownList($model, 'parent_id', $items, ['prompt' => "(Nhóm cha)"]) ?>
                    <i class="arrow double"></i>
                </label>
            </div>
            <button type="submit" class="btn btn-bordered btn-primary btn-block">Thêm mới</button>
        </form>
        <h6 class="mb20" id="widget5">Danh sách nhóm</h6>
        <table class="table table-hover table-bordered">
            <thead>
            <tr>
                <th>#</th>
                <th>Tên</th>
                <th class="text-right" width="10">SP</th>
            </tr>
            </thead>
            <tbody>
            <?
            if (!empty($items)) {
                foreach ($items as $id => $item) {
                    ?>
                    <tr>
                        <td width="10"><?= $id ?></td>
                        <td><?= $item ?></td>
                        <td class="text-right">0</td>
                    </tr>
                    <?
                }
            }
            ?>
            </tbody>
        </table>
    </div>
</div>
