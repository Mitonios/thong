<?php
namespace backend\models;

use yii\base\Model;
use Yii;

/**
 * User model
 *
 * @property \common\models\User $user
 */
class User extends Model
{
    public $user;
    public $username;
    public $email;
    public $password;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            ['username', 'filter', 'filter' => 'trim'],
            ['username', 'required'],
            ['username', 'unique', 'targetClass' => '\common\models\User', 'message' => 'This username has already been taken.', 'on' => 'create'],
            ['username', 'string', 'min' => 2, 'max' => 255],

            ['email', 'filter', 'filter' => 'trim'],
            ['email', 'required'],
            ['email', 'email'],
            ['email', 'string', 'max' => 255],
            ['email', 'unique', 'targetClass' => '\common\models\User', 'message' => 'This email address has already been taken.', 'on' => 'create'],

            ['password', 'filter', 'filter' => 'trim'],
            ['password', 'required', 'on' => 'create'],
            ['password', 'string', 'min' => 6],
        ];
    }

    public function save()
    {
        if ($this->validate()) {
            if (!isset($this->user)) {
                $user = new \common\models\User();
                $user->username = $this->username;
                $user->email = $this->email;
            } else {
                $user = $this->user;
            }
            if (!empty($this->password)) {
                $user->setPassword($this->password);
                $user->generateAuthKey();
            }
            if ($user->save()) {
                return $user;
            }
            $this->password = "";
        }
        return null;
    }

    public function setUser($user)
    {
        $this->user = $user;
        $this->username = $user->username;
        $this->email = $user->email;
    }

    public function getIsNew()
    {
        return isset($this->user) ? $this->user->isNewRecord : true;
    }
}