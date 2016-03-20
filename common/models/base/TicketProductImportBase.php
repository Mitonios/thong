<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "ticket_product_import".
 *
 * @property integer $id
 * @property string $note
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $created_by
 * @property integer $updated_by
 * @property string $code
 * @property string $date_import
 * @property integer $provider_id
 * @property double $ty_gia_cn_vn
 * @property integer $total_product
 * @property double $total_price
 * @property integer $total_sale_price
 * @property double $total_price_cn
 */
class TicketProductImportBase extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'ticket_product_import';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['note'], 'string'],
            [['status', 'created_at', 'updated_at', 'created_by', 'updated_by', 'provider_id', 'total_product', 'total_sale_price'], 'integer'],
            [['date_import'], 'safe'],
            [['ty_gia_cn_vn', 'total_price', 'total_price_cn'], 'number'],
            [['code'], 'string', 'max' => 10]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'note' => 'Note',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'code' => 'Code',
            'date_import' => 'Date Import',
            'provider_id' => 'Provider ID',
            'ty_gia_cn_vn' => 'Ty Gia Cn Vn',
            'total_product' => 'Total Product',
            'total_price' => 'Total Price',
            'total_sale_price' => 'Total Sale Price',
            'total_price_cn' => 'Total Price Cn',
        ];
    }
}
