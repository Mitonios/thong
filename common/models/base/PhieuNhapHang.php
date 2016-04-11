<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "phieu_nhap_hang".
 *
 * @property integer $id
 * @property string $ma_phieu_nhap
 * @property string $ghi_chu
 * @property integer $status
 * @property string $ngay_nhap
 * @property integer $nha_cung_cap_id
 * @property integer $tong_hang
 * @property double $tong_gia_nhap_tq
 * @property double $tong_gia_nhap_vn
 * @property double $ty_gia_cn_vn
 * @property string $temp_data
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $created_by
 * @property integer $updated_by
 * @property integer $deleted
 */
class PhieuNhapHang extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'phieu_nhap_hang';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ghi_chu', 'temp_data'], 'string'],
            [['status', 'nha_cung_cap_id', 'tong_hang', 'created_at', 'updated_at', 'created_by', 'updated_by', 'deleted'], 'integer'],
            [['ngay_nhap'], 'safe'],
            [['tong_gia_nhap_tq', 'tong_gia_nhap_vn', 'ty_gia_cn_vn'], 'number'],
            [['ma_phieu_nhap'], 'string', 'max' => 10]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ma_phieu_nhap' => 'Ma Phieu Nhap',
            'ghi_chu' => 'Ghi Chu',
            'status' => 'Status',
            'ngay_nhap' => 'Ngay Nhap',
            'nha_cung_cap_id' => 'Nha Cung Cap ID',
            'tong_hang' => 'Tong Hang',
            'tong_gia_nhap_tq' => 'Tong Gia Nhap Tq',
            'tong_gia_nhap_vn' => 'Tong Gia Nhap Vn',
            'ty_gia_cn_vn' => 'Ty Gia Cn Vn',
            'temp_data' => 'Temp Data',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'deleted' => 'Deleted',
        ];
    }
}
