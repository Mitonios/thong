<?php
/**
 * Created by PhpStorm.
 * User: Mitonios-Tofu
 * Date: 1/20/2016
 * Time: 3:59 PM
 */


namespace common\behaviors;


use common\models\Activity;
use yii\base\Behavior;
use yii\db\AfterSaveEvent;
use yii\db\BaseActiveRecord;
use yii\helpers\Json;

/**
 * @var $event AfterSaveEvent
 */
class UserBehavior extends Behavior
{

    public $ignore = ['created_at', 'updated_at', 'created_by', 'updated_by'];

    public function events()
    {
        return [
            BaseActiveRecord::EVENT_AFTER_DELETE => 'afterDelete',
            BaseActiveRecord::EVENT_AFTER_INSERT => 'afterInsert',
            BaseActiveRecord::EVENT_AFTER_UPDATE => 'afterUpdate',
        ];
    }


    public function afterInsert($event)
    {
        $model = new Activity();
        $model->action = "N";
        $model->model = get_class($event->sender);
        $model->id_model = $event->sender->id;
        if (!\Yii::$app->user->isGuest) {
            $model->account = \Yii::$app->user->identity->username;
        }
        $model->save();
    }

    public function afterUpdate($event)
    {

        if (!empty($event->changedAttributes)) {
            $old = [];
            foreach ($event->sender->attributes as $k => $v) {
                if (isset($event->changedAttributes[$k]))
                    $old[$k] = $v;
            }
            $model = new Activity();
            $model->action = "U";
            $model->model = get_class($event->sender);
            $model->id_model = $event->sender->id;
            if (!\Yii::$app->user->isGuest) {
                $model->account = \Yii::$app->user->identity->username;
            }
            $model->old_value = Json::encode($old);
            $model->new_value = Json::encode($event->changedAttributes);
            $model->save();
        }
    }

    public function afterDelete($event)
    {
        $model = new Activity();
        $model->action = "D";
        $model->model = get_class($event->sender);
        $model->id_model = $event->sender->id;
        if (!\Yii::$app->user->isGuest) {
            $model->account = \Yii::$app->user->identity->username;
        }
        $model->save();
    }


}