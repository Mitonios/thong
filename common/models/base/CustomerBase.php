<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "customer".
 *
 * @property integer $id
 * @property string $name
 * @property string $phone
 * @property string $facebook
 * @property string $code
 * @property integer $vip
 * @property integer $point
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $created_by
 * @property integer $updated_by
 * @property string $search_term
 */
class CustomerBase extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'customer';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['vip', 'point', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'integer'],
            [['search_term'], 'string'],
            [['name', 'facebook'], 'string', 'max' => 255],
            [['phone'], 'string', 'max' => 12],
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
            'name' => 'Name',
            'phone' => 'Phone',
            'facebook' => 'Facebook',
            'code' => 'Code',
            'vip' => 'Vip',
            'point' => 'Point',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'search_term' => 'Search Term',
        ];
    }
}
