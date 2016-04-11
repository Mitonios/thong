<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "metadata".
 *
 * @property integer $id
 * @property string $name
 * @property string $data
 * @property integer $position
 */
class Metadata extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'metadata';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['position'], 'integer'],
            [['name'], 'string', 'max' => 255],
            [['data'], 'string', 'max' => 1000]
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
            'data' => 'Data',
            'position' => 'Position',
        ];
    }
}
