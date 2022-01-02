<?php

/* @var $this \yii\web\View */

/* @var $content string */

use backend\assets\AppAsset;
use yii\helpers\Html;
use yii\widgets\Breadcrumbs;
use common\widgets\Alert;

AppAsset::register($this);
$this->beginContent('@backend/views/layouts/base.php');
?>
    <div class="main d-flex">

        <div class="content-wrapper p-3">
            <?= Alert::widget() ?>
            <?= $content ?>
        </div>
    </div>


<?php $this->endContent() ?>