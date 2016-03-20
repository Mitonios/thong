<?php
namespace common\components;

use common\models\Category;
use common\models\User;

class Mitonios
{
    public static function getUserAvatar($user_id)
    {
        $url = \Yii::$app->cache->get("user_avatar_" . $user_id);
        if (!$url) {
            $user = User::findOne($user_id);
            $url = 'https://www.gravatar.com/avatar/';
            $url .= md5(strtolower(trim($user->email)));
            $url .= "?s=80&d=identicon&r=gh";
            \Yii::$app->cache->set("user_avatar_" . $user_id, $url, 60 * 60 * 30);
        }
        return $url;
    }

    /**
     * @param null $parent_id
     * @param int $level
     * @param string $tag
     * @return array
     */
    public static function getCategoryList($parent_id = null, $level = 0, $tag = "--")
    {
        /**
         * @var $models Category[]
         */
        $rs = [];
        $pre = '';
        if ($level > 0)
            for ($i = 1; $i <= $level; $i++)
                $pre .= $tag;

        $models = Category::find()->where(['parent_id' => $parent_id])->all();
        if (!empty($models)) {
            foreach ($models as $model) {
                $rs[$model->id] = $pre . $model->name;
                if ($model->children) {
                    $rs = $rs + self::getCategoryList($model->id, $level + 1);
                }
            }
        }
        return $rs;
    }
}