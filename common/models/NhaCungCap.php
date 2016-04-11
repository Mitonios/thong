<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 3/31/2016
 * Time: 2:15 PM
 */

namespace common\models;


use yii\helpers\ArrayHelper;

class NhaCungCap extends \common\models\base\NhaCungCap
{
    public function afterSave($insert, $changedAttributes)
    {
        if (empty($this->ma_nha_cung_cap)) {
            $this->ma_nha_cung_cap = "NCC" . str_pad($this->id, 5, 0, STR_PAD_LEFT);
            $this->update();
        }
        return parent::afterSave($insert, $changedAttributes);
    }

    public function attributeLabels()
    {
        return ArrayHelper::merge(parent::attributeLabels(), [
            'ten' => 'Tên nhà cung cấp',
            'dia_chi' => 'Địa chỉ',
            'so_dien_thoai' => 'Điện thoại',
            'ghi_chu' => 'Ghi chú',
        ]);
    }
}