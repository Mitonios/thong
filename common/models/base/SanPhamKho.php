<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "san_pham_kho".
 *
 * @property integer $id
 * @property string $ten
 * @property integer $chuyen_muc_id
 * @property string $search_term
 * @property integer $gia_ban
 * @property integer $gia_nhap
 * @property string $avatar
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $created_by
 * @property integer $updated_by
 * @property string $mo_ta
 * @property integer $so_luong_nhap
 * @property integer $so_luong_ton
 * @property string $ghi_chu
 * @property string $ma_nhap
 * @property string $ma_goc
 * @property integer $deleted
 * @property string $ngay_nhap
 * @property integer $phieu_nhap_id
 */
class SanPhamKho extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'san_pham_kho';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['chuyen_muc_id', 'gia_ban', 'gia_nhap', 'status', 'created_at', 'updated_at', 'created_by', 'updated_by', 'so_luong_nhap', 'so_luong_ton', 'deleted', 'phieu_nhap_id'], 'integer'],
            [['search_term', 'mo_ta', 'ghi_chu'], 'string'],
            [['ngay_nhap'], 'safe'],
            [['ten', 'avatar', 'ma_goc'], 'string', 'max' => 255],
            [['ma_nhap'], 'string', 'max' => 10]
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
            'chuyen_muc_id' => 'Chuyen Muc ID',
            'search_term' => 'Search Term',
            'gia_ban' => 'Gia Ban',
            'gia_nhap' => 'Gia Nhap',
            'avatar' => 'Avatar',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'mo_ta' => 'Mo Ta',
            'so_luong_nhap' => 'So Luong Nhap',
            'so_luong_ton' => 'So Luong Ton',
            'ghi_chu' => 'Ghi Chu',
            'ma_nhap' => 'Ma Nhap',
            'ma_goc' => 'Ma Goc',
            'deleted' => 'Deleted',
            'ngay_nhap' => 'Ngay Nhap',
            'phieu_nhap_id' => 'Phieu Nhap ID',
        ];
    }
}
