<?php
/**
 * Created by PhpStorm.
 * User: Hossein
 * Date: 6/7/2021
 * Time: 12:40 AM
 */

namespace common\helpers;
use yii\helpers\Url;

class Html
{
    public static function channelLink($user, $schema = false)
    {
        return \yii\helpers\Html::a($user->username,
            Url::to(['channel/view/', 'username' => $user->username], $schema),
            ['class' => 'text-dark']);

    }
}