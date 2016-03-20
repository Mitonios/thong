<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 12/13/2015
 * Time: 9:57 AM
 */

namespace backend\assets;


use yii\web\AssetBundle;

class CrudAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $js = [
        'js/ModalRemote.js',
        'js/ajaxcrud.js',
    ];
}