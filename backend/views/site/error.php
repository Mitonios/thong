<?php

/* @var $this yii\web\View */
/* @var $name string */
/* @var $message string */
/* @var $exception Exception */

use yii\helpers\Html;
use yii\helpers\Url;

$this->title = $name;
?>
<section id="content" class="pn">
    <div class="center-block mt100 mw800 text-center p20">
        <img src="<?= Url::home() ?>alliance/assets/img/pages/404.png" alt="" class="img-responsive mauto">
        <h2 class="mt40 mb20"><?= nl2br(Html::encode($message)) ?></h2>
        <h6>
            Can't find what you need?<br>
            Take a moment and do a search below or start from <a href="<?= Url::home() ?>">our homepage</a>.
        </h6>
    </div>
</section>
