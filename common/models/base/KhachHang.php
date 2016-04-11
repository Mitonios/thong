<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "khach_hang".
 *
 * @property integer $id
 * @property string $ten
 * @property string $so_dien_thoai
 * @property string $facebook
 * @property string $ma_khach_hang
 * @property integer $vip
 * @property integer $tong_tien_mua
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $created_by
 * @property integer $updated_by
 * @property string $search_term
 */
class KhachHang extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'khach_hang';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['vip', 'tong_tien_mua', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'integer'],
            [['search_term'], 'string'],
            [['ten', 'facebook'], 'string', 'max' => 255],
            [['so_dien_thoai'], 'string', 'max' => 12],
            [['ma_khach_hang'], 'string', 'max' => 11]
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
            'so_dien_thoai' => 'So Dien Thoai',
            'facebook' => 'Facebook',
            'ma_khach_hang' => 'Ma Khach Hang',
            'vip' => 'Vip',
            'tong_tien_mua' => 'Tong Tien Mua',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'search_term' => 'Search Term',
        ];
    }
}
