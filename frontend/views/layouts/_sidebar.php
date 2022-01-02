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
        'encodeLabels' => false,
        'items' => [
            [
                'label' => '<i class="fas fa-home"></i> Home',
                'url' => ['video/index']
            ],
            [
                'label' => '<i class="fas fa-history"></i> History',
                'url' => ['video/history']
            ]
        ]
    ]) ?>
</aside>
