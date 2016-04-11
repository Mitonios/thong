<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 3/30/2016
 * Time: 5:01 PM
 */

namespace common\models;


use yii\base\Model;

class PhieuNhapHangSearchForm extends Model
{
    public $id;
    public $ma_phieu_nhap;
    public $ngay_nhap_from;
    public $ngay_nhap_to;
    public $tong_hang_from;
    public $tong_hang_to;
    public $tong_gia_from;
    public $tong_gia_to;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'tong_hang_from', 'tong_hang_to', 'tong_gia_from', 'tong_gia_to'], 'integer'],
            [['ma_phieu_nhap', 'ngay_nhap_from', 'ngay_nhap_to'], 'safe'],
        ];
    }

    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ma_phieu_nhap' => 'Mã phiếu',
            'ngay_nhap_from' => 'Ngày nhập từ',
            'ngay_nhap_to' => 'Ngày nhập tới',
            'tong_hang_from' => 'Tổng hàng từ',
            'tong_hang_to' => 'Tổng hàng tới',
            'tong_gia_from' => 'Tổng giá từ',
            'tong_gia_to' => 'Tổng giá tới',
        ];
    }
}