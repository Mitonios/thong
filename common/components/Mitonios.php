<?php
namespace common\components;

use common\models\Category;
use common\models\ChuyenMuc;
use common\models\User;
use yii\helpers\ArrayHelper;

class Mitonios
{
    public static function thumbnail($path, $width = 80, $height = 80, $crop = true)
    {
        return '/thong/timthumb/timthumb.php?src=' . $path . '&h=' . $height . '&w=' . $width;
        /*if ($path == '')
            return $path;
    //        if (strstr($path, 'http'))
    //            return $path;
        $path = urlencode($path);
    //        $path = urlencode($_SERVER['HTTP_HOST'] . $path);
        $return = '/phpThumb-1.7.11/phpThumb.php?src=' . $path . '&w=' . $width . '&h=' . $height;
        if ($crop)
            $return .= '&zc=1';
        return $return;*/
    }

    public static function getUserAvatar($user_id)
    {
        $url = '';
        if (!\Yii::$app->user->isGuest) {
            $url = \Yii::$app->cache->get("user_avatar_" . $user_id);
            if (!$url) {
                $user = User::findOne($user_id);
                $url = 'https://www.gravatar.com/avatar/';
                $url .= md5(strtolower(trim($user->email)));
                $url .= "?s=80&d=identicon&r=gh";
                \Yii::$app->cache->set("user_avatar_" . $user_id, $url, 60 * 60 * 30);
            }
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

        $models = ChuyenMuc::find()->where(['parent_id' => $parent_id])->all();
        if (!empty($models)) {
            foreach ($models as $model) {
                $name = $pre . $model->ten;
                $rs[$model->id] = ArrayHelper::merge($model->attributes, ['ten_hien_thi' => $name]);
                if ($model->children) {
                    $rs = $rs + self::getCategoryList($model->id, $level + 1);
                }
            }
        }
        return $rs;
    }

    public static function convertCategoryToDropdown()
    {
        $items = self::getCategoryList();
        $rs = \Yii::$app->cache->get("convertCategoryToDropdown");
        if (!$rs) {
            foreach ($items as $item) {
                $rs[$item['id']] = $item['ten_hien_thi'];
            }
            \Yii::$app->cache->set("convertCategoryToDropdown", $rs, 60);
        }

        return $rs;
    }

    public static function getUser($id = null)
    {
        $rs = \Yii::$app->cache->get("user_list");
        if (!$rs) {
            $rs = [];
            $items = User::find()->all();
            foreach ($items as $item) {
                $rs[$item->id] = $item->username;
            }
            \Yii::$app->cache->set("user_list", $rs, 3600 * 24);
        }
        return isset($id) ? (isset($rs[$id]) ? $rs[$id] : "") : $rs;
    }

    public static function convertArrayToDropdown($arr = [])
    {
        $tmp = [];
        foreach ($arr as $item) {
            $tmp[$item] = $item;
        }
        return $tmp;
    }
}