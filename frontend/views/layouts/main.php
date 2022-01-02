<?php

/* @var $this \yii\web\View */

/* @var $content string */

use common\widgets\Alert;

$this->beginContent('@frontend/views/layouts/base.php');
?>
    <div class="main d-flex">
        <?php echo $this->render('_sidebar'); ?>

        <div class="content-wrapper p-3">
            <?= Alert::widget() ?>
            <?= $content ?>
        </div>
    </div>


<?php $this->endContent() ?>