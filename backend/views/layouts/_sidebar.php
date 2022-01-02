<?php
/**
 * Created by PhpStorm.
 * User: Hossein
 * Date: 6/3/2021
 * Time: 12:30 AM
 */
?>

<aside class="shadow">
    <?php echo \yii\bootstrap4\Nav::widget([
        'options'=>[
            'class' => 'd-flex flex-column nav-pills'
        ],
        'items' => [
            [
                'label' => 'Dashboard',
                'url' => ['site/index']
            ],
            [
                'label' => 'Videos',
                'url' => ['video/index']
            ]
        ]
    ]) ?>
</aside>
