<?php
/**
 * Created by PhpStorm.
 * User: Hossein
 * Date: 6/7/2021
 * Time: 1:32 AM
 */
/** @var $channel \common\models\User */
/** @var $user \common\models\User */
?>

<p>Hello <?php echo $channel->username ?></p>
<p>User <?php echo \common\helpers\Html::channelLink($user, true) ?>
    has subscribed to you</p>

<p>Youtube Hossein Abdollahzadeh</p>
