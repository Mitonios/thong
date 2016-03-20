<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "product".
 *
 * @property integer $id
 * @property string $name
 * @property integer $category_id
 * @property string $search_term
 * @property integer $price_sale
 * @property integer $price_store
 * @property string $avatar
 * @property integer $status
 * @property string $slug
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $created_by
 * @property integer $updated_by
 * @property string $description
 * @property integer $stock
 * @property string $note
 * @property string $code
 */
class ProductBase extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'product';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['category_id', 'price_sale', 'price_store', 'status', 'created_at', 'updated_at', 'created_by', 'updated_by', 'stock'], 'integer'],
            [['search_term', 'description', 'note'], 'string'],
            [['name', 'avatar', 'slug'], 'string', 'max' => 255],
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
            'name' => 'Name',
            'category_id' => 'Category ID',
            'search_term' => 'Search Term',
            'price_sale' => 'Price Sale',
            'price_store' => 'Price Store',
            'avatar' => 'Avatar',
            'status' => 'Status',
            'slug' => 'Slug',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'description' => 'Description',
            'stock' => 'Stock',
            'note' => 'Note',
            'code' => 'Code',
        ];
    }

}
