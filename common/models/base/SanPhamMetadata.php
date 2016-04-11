<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "san_pham_metadata".
 *
 * @property integer $id
 * @property integer $san_pham_nhap_id
 * @property string $ma_goc
 * @property integer $metadata_id
 * @property string $metadata_name
 * @property string $value
 */
class SanPhamMetadata extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'san_pham_metadata';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['san_pham_nhap_id', 'metadata_id'], 'integer'],
            [['ma_goc', 'metadata_id', 'metadata_name'], 'required'],
            [['value'], 'string'],
            [['ma_goc'], 'string', 'max' => 20],
            [['metadata_name'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'san_pham_nhap_id' => 'San Pham Nhap ID',
            'ma_goc' => 'Ma Goc',
            'metadata_id' => 'Metadata ID',
            'metadata_name' => 'Metadata Name',
            'value' => 'Value',
        ];
    }
}
