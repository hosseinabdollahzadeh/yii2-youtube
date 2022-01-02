<?php
/**
 * Created by PhpStorm.
 * User: Hossein
 * Date: 6/6/2021
 * Time: 12:58 PM
 */
/** @var $dataProvider \yii\data\ActiveDataProvider */
?>

<?php echo \yii\widgets\ListView::widget([
    'dataProvider' => $dataProvider,
    'pager' =>[
        'class' => \yii\bootstrap4\LinkPager::class
    ],
    'itemView' => '_video_item',
    'layout' => '<div class="d-flex flex-wrap">{items}</div>{pager}',
    'itemOptions' => [
        'tag' => false
    ]

]) ?>