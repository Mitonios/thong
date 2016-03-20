<?php
/**
 * Created by PhpStorm.
 * User: Mitonios-Tofu
 * Date: 3/8/2016
 * Time: 3:35 PM
 */

namespace common\models;


use common\behaviors\UserBehavior;
use common\models\base\RltOrderProductBase;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;

class RltOrderProduct extends RltOrderProductBase
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            TimestampBehavior::className(),
            UserBehavior::className(),
            BlameableBehavior::className(),
        ];
    }

    public function getProduct()
    {
        return Product::findOne($this->product_id);
    }
}