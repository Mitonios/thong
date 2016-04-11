<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "don_hang".
 *
 * @property integer $id
 * @property string $ma_don_hang
 * @property string $ngay_ban
 * @property integer $tong_tien_ban
 * @property double $tong_gia_giam
 * @property integer $khach_hang
 * @property integer $tong_hang
 * @property integer $nguoi_ban
 * @property string $ghi_chu
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $created_by
 * @property integer $updated_by
 * @property integer $status
 */
class DonHang extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'don_hang';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ngay_ban'], 'safe'],
            [['tong_tien_ban', 'khach_hang', 'tong_hang', 'nguoi_ban', 'created_at', 'updated_at', 'created_by', 'updated_by', 'status'], 'integer'],
            [['tong_gia_giam'], 'number'],
            [['ghi_chu'], 'string'],
            [['ma_don_hang'], 'string', 'max' => 11]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ma_don_hang' => 'Ma Don Hang',
            'ngay_ban' => 'Ngay Ban',
            'tong_tien_ban' => 'Tong Tien Ban',
            'tong_gia_giam' => 'Tong Gia Giam',
            'khach_hang' => 'Khach Hang',
            'tong_hang' => 'Tong Hang',
            'nguoi_ban' => 'Nguoi Ban',
            'ghi_chu' => 'Ghi Chu',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'status' => 'Status',
        ];
    }
}
