<?php
$this->pageTitle = 'Tags';
?>
<div class="row">
<div class="col-lg-12">


<?php echo CHtml::errorSummary($model, '<div class="alert alert-dismissable alert-warning"> Loi', '</div>'); ?>
<?php
	if (user()->hasFlash('messages'))
	{
		$messages = user()->getFlash('messages');
		echo '<div class="alert alert-dismissable alert-success">'. hsp($messages). '</div><br>';
	}
	?>
<?php
	$form = $this->beginWidget('TbActiveForm', array(
		'action'=>sslUrl('tag/add'),
		'id' => 'add-form',
		'htmlOptions'=>array('enctype' => 'multipart/form-data')
	));
?>

<div class="form-group">
	<?php echo $form->labelEx($model,'name'); ?>
	<?php echo $form->textField($model,'name', array('class' => 'form-control', 'placeholder' => 'Vui lòng nhập tiêu đề')); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'status'); ?>
	<?php echo $form->checkBox($model,'status', array('checked' => 'checked')); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'selected'); ?>
	<?php echo $form->checkBox($model,'selected', array('checked' => 'checked')); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'ordering'); ?>
	<?php echo $form->textField($model,'ordering', array('class' => 'form-control')); ?>
</div>

<button type="submit" class="btn btn-default">Save</button>
<button type="reset" class="btn btn-default">Cancel</button>

<?php
	$this->endWidget();
?>

</div>
</div>

