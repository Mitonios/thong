<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "chuyen_muc".
 *
 * @property integer $id
 * @property integer $parent_id
 * @property string $ten
 * @property string $mo_ta
 * @property integer $status
 */
class ChuyenMuc extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'chuyen_muc';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['parent_id', 'status'], 'integer'],
            [['ten'], 'string', 'max' => 255],
            [['mo_ta'], 'string', 'max' => 1000]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'parent_id' => 'Parent ID',
            'ten' => 'Ten',
            'mo_ta' => 'Mo Ta',
            'status' => 'Status',
        ];
    }
}
