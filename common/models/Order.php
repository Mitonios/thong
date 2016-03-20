<?php

namespace common\models;

use common\behaviors\UserBehavior;
use common\models\base\OrderBase;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;
use yii\db\Expression;

class Order extends OrderBase
{
    const STATUS_DRAFT = 0;
    const STATUS_FINISH = 1;

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

    public function afterSave($insert, $changedAttributes)
    {
        if (empty($this->code)) {
            $this->code = "O" . str_pad($this->id, 5, 0, STR_PAD_LEFT);
            $this->update();
        }
        return parent::afterSave($insert, $changedAttributes);
    }

    public function beforeSave($insert)
    {
        $this->sale_id = \Yii::$app->user->id;
        if (empty($this->sale_date))
            $this->sale_date = new Expression("NOW()");
        return parent::beforeSave($insert); // TODO: Change the autogenerated stub
    }

    public function getProducts()
    {
        return RltOrderProduct::find()->where(['order_id' => $this->id])->all();
    }
}