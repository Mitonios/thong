<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "san_pham_images".
 *
 * @property integer $id
 * @property integer $ma_goc
 * @property string $url
 * @property string $date_created
 */
class SanPhamImages extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'san_pham_images';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ma_goc'], 'required'],
            [['ma_goc'], 'integer'],
            [['date_created'], 'safe'],
            [['url'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ma_goc' => 'Ma Goc',
            'url' => 'Url',
            'date_created' => 'Date Created',
        ];
    }
}
