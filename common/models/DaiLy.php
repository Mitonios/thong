<?php

namespace common\models;

use Yii;

class DaiLy extends \common\models\base\DaiLy
{

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ten' => 'Tên dại lý',
        ];
    }
}
