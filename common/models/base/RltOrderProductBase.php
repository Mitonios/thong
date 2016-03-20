<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "rlt_order_product".
 *
 * @property integer $id
 * @property integer $order_id
 * @property integer $product_id
 * @property string $product_code
 * @property string $product_name
 * @property string $avatar_url
 * @property integer $quality
 * @property integer $price_sale
 * @property double $discount
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $created_by
 * @property integer $updated_by
 * @property string $note
 * @property integer $customer_id
 */
class RltOrderProductBase extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'rlt_order_product';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['order_id', 'product_id', 'quality', 'price_sale', 'created_at', 'updated_at', 'created_by', 'updated_by', 'customer_id'], 'integer'],
            [['discount'], 'number'],
            [['note'], 'string'],
            [['product_code'], 'string', 'max' => 10],
            [['product_name', 'avatar_url'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'order_id' => 'Order ID',
            'product_id' => 'Product ID',
            'product_code' => 'Product Code',
            'product_name' => 'Product Name',
            'avatar_url' => 'Avatar Url',
            'quality' => 'Quality',
            'price_sale' => 'Price Sale',
            'discount' => 'Discount',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'note' => 'Note',
            'customer_id' => 'Customer ID',
        ];
    }
}
