<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use sale\assets\AppAsset;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>
<?= $content ?>
<?php $this->endBody() ?>
<script>
    $(function () {
        $('.dropdown-toggle').dropdown()
        $('#bill-items').height($(window).height() - $('#product-items').height() - 50)
    })
</script>
</body>
</html>
<?php $this->endPage() ?>
