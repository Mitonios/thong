<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "don_hang_san_pham".
 *
 * @property integer $id
 * @property string $ma_don_hang
 * @property string $ma_san_pham_ban
 * @property integer $san_pham_ban_id
 * @property string $ten_san_pham
 * @property string $avatar_url
 * @property integer $so_luong
 * @property integer $gia_ban
 * @property integer $giam_gia
 * @property integer $khach_hang
 * @property string $nguoi_ban
 * @property string $ghi_chu
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $created_by
 * @property integer $updated_by
 */
class DonHangSanPham extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'don_hang_san_pham';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['san_pham_ban_id', 'so_luong', 'gia_ban', 'giam_gia', 'khach_hang', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'integer'],
            [['ghi_chu'], 'string'],
            [['ma_don_hang'], 'string', 'max' => 10],
            [['ma_san_pham_ban'], 'string', 'max' => 11],
            [['ten_san_pham', 'avatar_url', 'nguoi_ban'], 'string', 'max' => 255],
            [['ma_don_hang', 'ma_san_pham_ban'], 'unique', 'targetAttribute' => ['ma_don_hang', 'ma_san_pham_ban'], 'message' => 'The combination of Ma Don Hang and Ma San Pham Ban has already been taken.']
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
            'ma_san_pham_ban' => 'Ma San Pham Ban',
            'san_pham_ban_id' => 'San Pham Ban ID',
            'ten_san_pham' => 'Ten San Pham',
            'avatar_url' => 'Avatar Url',
            'so_luong' => 'So Luong',
            'gia_ban' => 'Gia Ban',
            'giam_gia' => 'Giam Gia',
            'khach_hang' => 'Khach Hang',
            'nguoi_ban' => 'Nguoi Ban',
            'ghi_chu' => 'Ghi Chu',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
        ];
    }
}
