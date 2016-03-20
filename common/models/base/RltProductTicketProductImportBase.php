<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "rlt_product_ticket_product_import".
 *
 * @property integer $id
 * @property integer $ticket_id
 * @property integer $product_id
 * @property string $product_code
 * @property string $product_name
 * @property integer $total_import
 * @property integer $price_sale
 * @property double $price_store
 * @property double $price_store_cn
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $created_by
 * @property integer $updated_by
 * @property string $note
 */
class RltProductTicketProductImportBase extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'rlt_product_ticket_product_import';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ticket_id', 'product_id', 'total_import', 'price_sale', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'integer'],
            [['price_store', 'price_store_cn'], 'number'],
            [['note'], 'string'],
            [['product_code'], 'string', 'max' => 10],
            [['product_name'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ticket_id' => 'Ticket ID',
            'product_id' => 'Product ID',
            'product_code' => 'Product Code',
            'product_name' => 'Product Name',
            'total_import' => 'Total Import',
            'price_sale' => 'Price Sale',
            'price_store' => 'Price Store',
            'price_store_cn' => 'Price Store Cn',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'note' => 'Note',
        ];
    }
}
