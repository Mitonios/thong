<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "san_pham_ghi_chu".
 *
 * @property integer $id
 * @property string $date_created
 * @property string $ma_goc
 * @property integer $san_pham_nhap_id
 * @property string $ghi_chu
 */
class SanPhamGhiChu extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'san_pham_ghi_chu';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['date_created'], 'safe'],
            [['san_pham_nhap_id'], 'integer'],
            [['ghi_chu'], 'string'],
            [['ma_goc'], 'string', 'max' => 20]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'date_created' => 'Date Created',
            'ma_goc' => 'Ma Goc',
            'san_pham_nhap_id' => 'San Pham Nhap ID',
            'ghi_chu' => 'Ghi Chu',
        ];
    }
}
