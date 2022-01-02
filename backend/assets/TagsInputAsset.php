<?php
/**
 * Created by PhpStorm.
 * User: Hossein
 * Date: 6/5/2021
 * Time: 12:26 AM
 */

namespace backend\assets;


use yii\web\AssetBundle;
use yii\web\JqueryAsset;

class TagsInputAsset extends AssetBundle
{
    public $basePath = '@webroot/tagsinput';
    public $baseUrl = '@web/tagsinput';
    public $css = [
        'tagsinput.css',
    ];
    public $js = [
        'tagsinput.js'
    ];
    public $depends = [
        JqueryAsset::class
    ];
}