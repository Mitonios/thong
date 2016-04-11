<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "dai_ly".
 *
 * @property integer $id
 * @property string $ten
 */
class DaiLy extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'dai_ly';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ten'], 'required'],
            [['ten'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ten' => 'Name',
        ];
    }
}
