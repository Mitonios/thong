<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "order".
 *
 * @property integer $id
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $created_by
 * @property integer $updated_by
 * @property integer $sale_id
 * @property string $sale_date
 * @property string $note
 * @property integer $customer_id
 * @property integer $total_money
 * @property double $discount
 * @property integer $status
 * @property string $code
 * @property integer $total_product
 */
class OrderBase extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'order';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['created_at', 'updated_at', 'created_by', 'updated_by', 'sale_id', 'customer_id', 'total_money', 'status', 'total_product'], 'integer'],
            [['sale_date'], 'safe'],
            [['note'], 'string'],
            [['discount'], 'number'],
            [['code'], 'string', 'max' => 11]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'sale_id' => 'Sale ID',
            'sale_date' => 'Sale Date',
            'note' => 'Note',
            'customer_id' => 'Customer ID',
            'total_money' => 'Total Money',
            'discount' => 'Discount',
            'status' => 'Status',
            'code' => 'Code',
            'total_product' => 'Total Product',
        ];
    }
}
