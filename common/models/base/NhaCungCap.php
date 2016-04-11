<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "nha_cung_cap".
 *
 * @property integer $id
 * @property string $ten
 * @property string $dia_chi
 * @property string $so_dien_thoai
 * @property string $ma_nha_cung_cap
 * @property string $ghi_chu
 */
class NhaCungCap extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'nha_cung_cap';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ten'], 'required'],
            [['ghi_chu'], 'string'],
            [['ten', 'dia_chi'], 'string', 'max' => 255],
            [['so_dien_thoai'], 'string', 'max' => 100],
            [['ma_nha_cung_cap'], 'string', 'max' => 10]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ten' => 'Ten',
            'dia_chi' => 'Dia Chi',
            'so_dien_thoai' => 'So Dien Thoai',
            'ma_nha_cung_cap' => 'Ma Nha Cung Cap',
            'ghi_chu' => 'Ghi Chu',
        ];
    }
}
