<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Video */

$this->title = 'Create Video';
$this->params['breadcrumbs'][] = ['label' => 'Videos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;

?>
<div class="video-create">

    <h1><?= Html::encode($this->title) ?></h1>
    <div class="d-flex flex-column justify-content-center align-items-center">
        <div class="upload-icon">
            <i class="fas fa-upload"></i>
        </div>
        <br>
        <p class="m-0">Drag and drop video files to upload</p>

        <p class="text-muted">Your videos will be private until you publish them</p>

        <?php $form = \yii\widgets\ActiveForm::begin([
                'options' => ['enctype' => 'multipart/form-data']
        ]) ?>

        <?php echo $form->errorSummary($model) ?>

        <button type="button" class="btn btn-primary btn-file">
            Select File
            <input type="file" id="videoFile" name="video">
        </button>

        <?php \yii\widgets\ActiveForm::end() ?>
    </div>


</div>
