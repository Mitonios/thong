<?php

namespace common\models;

use Yii;
use yii\db\ActiveRecord;

/**
 * This is the model class for table "tf_account_activity".
 *
 * @property integer $id
 * @property string $action
 * @property string $model
 * @property integer $id_model
 * @property string $old_value
 * @property string $new_value
 * @property string $date_created
 * @property string $account
 */
class Activity extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'activity';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_model'], 'integer'],
            [['old_value', 'new_value'], 'string'],
            [['date_created'], 'safe'],
            [['action'], 'string', 'max' => 5],
            [['model'], 'string', 'max' => 50],
            [['account'], 'string', 'max' => 11]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'action' => 'Action',
            'model' => 'Model',
            'id_model' => 'Id Model',
            'old_value' => 'Old Value',
            'new_value' => 'New Value',
            'date_created' => 'Date Created',
            'account' => 'Account',
        ];
    }
}
