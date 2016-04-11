<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 4/5/2016
 * Time: 5:26 PM
 */

namespace common\models;


class ChuyenMuc extends \common\models\base\ChuyenMuc
{
    const STATUS_DRAFT = 0;
    const STATUS_PUBLISH = 1;

    public function getChildren()
    {
        return $this->find()->where(['parent_id' => $this->id])->all();
    }

    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'parent_id' => 'Danh mục cha',
            'ten' => 'Tên danh mục',
            'mo_ta' => 'Mô tả chi tiết',
            'status' => 'Status',
        ];
    }
}