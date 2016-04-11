<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "san_pham".
 *
 * @property integer $id
 * @property string $ma_goc
 * @property string $ma_ban
 * @property string $ten
 * @property string $search_term
 * @property integer $gia_ban
 * @property integer $gia_nhap
 * @property string $avatar
 * @property integer $status
 * @property string $ghi_chu
 * @property integer $phieu_xuat_kho_id
 * @property integer $dai_ly_id
 * @property string $ngay_xuat
 * @property integer $deleted
 * @property integer $so_luong_ton
 * @property integer $so_luong_nhap
 * @property integer $chuyen_muc_id
 * @property integer $created_at
 * @property integer $created_by
 * @property integer $updated_at
 * @property integer $updated_by
 */
class SanPham extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'san_pham';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['search_term', 'ghi_chu'], 'string'],
            [['gia_ban', 'gia_nhap', 'status', 'phieu_xuat_kho_id', 'dai_ly_id', 'deleted', 'so_luong_ton', 'so_luong_nhap', 'chuyen_muc_id', 'created_at', 'created_by', 'updated_at', 'updated_by'], 'integer'],
            [['ngay_xuat'], 'safe'],
            [['ma_goc', 'ma_ban', 'ten', 'avatar'], 'string', 'max' => 255]
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
            'ma_ban' => 'Ma Ban',
            'ten' => 'Ten',
            'search_term' => 'Search Term',
            'gia_ban' => 'Gia Ban',
            'gia_nhap' => 'Gia Nhap',
            'avatar' => 'Avatar',
            'status' => 'Status',
            'ghi_chu' => 'Ghi Chu',
            'phieu_xuat_kho_id' => 'Phieu Xuat Kho ID',
            'dai_ly_id' => 'Dai Ly ID',
            'ngay_xuat' => 'Ngay Xuat',
            'deleted' => 'Deleted',
            'so_luong_ton' => 'So Luong Ton',
            'so_luong_nhap' => 'So Luong Nhap',
            'chuyen_muc_id' => 'Chuyen Muc ID',
            'created_at' => 'Created At',
            'created_by' => 'Created By',
            'updated_at' => 'Updated At',
            'updated_by' => 'Updated By',
        ];
    }
}
