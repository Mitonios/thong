<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "phieu_xuat_kho".
 *
 * @property integer $id
 * @property string $ma_phieu_xuat
 * @property string $ghi_chu
 * @property integer $status
 * @property string $ngay_xuat
 * @property integer $dai_ly_id
 * @property integer $tong_hang
 * @property integer $tong_gia_nhap
 * @property integer $tong_gia_ban
 * @property integer $deleted
 * @property string $temp_data
 * @property integer $created_at
 * @property integer $created_by
 * @property integer $updated_at
 * @property integer $updated_by
 */
class PhieuXuatKho extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'phieu_xuat_kho';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['status', 'dai_ly_id', 'tong_hang', 'tong_gia_nhap', 'tong_gia_ban', 'deleted', 'created_at', 'created_by', 'updated_at', 'updated_by'], 'integer'],
            [['ngay_xuat'], 'safe'],
            [['temp_data'], 'string'],
            [['ma_phieu_xuat'], 'string', 'max' => 255],
            [['ghi_chu'], 'string', 'max' => 1000]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ma_phieu_xuat' => 'Ma Phieu Xuat',
            'ghi_chu' => 'Ghi Chu',
            'status' => 'Status',
            'ngay_xuat' => 'Ngay Xuat',
            'dai_ly_id' => 'Dai Ly ID',
            'tong_hang' => 'Tong Hang',
            'tong_gia_nhap' => 'Tong Gia Nhap',
            'tong_gia_ban' => 'Tong Gia Ban',
            'deleted' => 'Deleted',
            'temp_data' => 'Temp Data',
            'created_at' => 'Created At',
            'created_by' => 'Created By',
            'updated_at' => 'Updated At',
            'updated_by' => 'Updated By',
        ];
    }
}
