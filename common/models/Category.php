<?php

namespace common\models;

use common\behaviors\UserBehavior;
use Yii;

/**
 * This is the model class for table "category".
 *
 * @property integer $id
 * @property string $name
 * @property integer $status
 * @property string $description
 * @property integer $parent_id
 * @property Category[] $children
 */
class Category extends \yii\db\ActiveRecord
{

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'category';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['status', 'parent_id'], 'integer'],
            [['name'], 'string', 'max' => 255],
            [['description'], 'string', 'max' => 1000]
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
            'status' => 'Status',
            'description' => 'Description',
            'parent_id' => 'Parent ID',
        ];
    }

    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            UserBehavior::className(),
        ];
    }

    public function getChildren()
    {
        return $this->find()->where(['parent_id' => $this->id])->all();
    }
}
