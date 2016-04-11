<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 3/30/2016
 * Time: 5:01 PM
 */

namespace common\models;


use yii\base\Model;

class SanPhamSearchForm extends Model
{
    public $id;
    public $ten;
    public $chuyen_muc_id;
    public $gia_ban;
    public $gia_nhap;
    public $status;
    public $so_luong_nhap;
    public $so_luong_ton;
    public $ma_nhap;
    public $ma_goc;
    public $ngay_nhap;
    public $phieu_nhap_id;

    public function rules()
    {
        return [
            [['chuyen_muc_id', 'gia_ban', 'gia_nhap', 'status', 'so_luong_nhap', 'so_luong_ton', 'phieu_nhap_id'], 'integer'],
            [['ngay_nhap'], 'safe'],
            [['ten', 'ma_goc'], 'string', 'max' => 255],
            [['ma_nhap'], 'string', 'max' => 10]
        ];
    }

    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ten' => 'Tên sản phẩm',
            'chuyen_muc_id' => 'Chuyên mục',
            'search_term' => 'Search Term',
            'gia_ban' => 'Giá bán',
            'gia_nhap' => 'Giá nhập',
            'avatar' => 'Ảnh',
            'status' => 'Trạng thái',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'mo_ta' => 'Mô tả',
            'so_luong_nhap' => 'Số lượng nhập',
            'so_luong_ton' => 'Số lượng tồn',
            'ghi_chu' => 'Ghi chú',
            'ma_nhap' => 'Mã nhập',
            'ma_goc' => 'Mã hệ thống',
            'deleted' => 'Deleted',
            'ngay_nhap' => 'Ngày nhập',
            'phieu_nhap_id' => 'Phiếu nhập',
        ];
    }
}