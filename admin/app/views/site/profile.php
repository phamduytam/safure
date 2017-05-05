
<div class="row">

<div class="col-lg-6">
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
		'id' => 'profile',
		'action'=>'/admin/profile',
		'htmlOptions'=>array('enctype' => 'multipart/form-data')
	));
?>

<div class="form-group">
	<?php echo $form->labelEx($model,'name'); ?>
	<?php echo $form->textField($model,'name', array('class' => 'form-control')); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'username'); ?>
	<?php echo $form->textField($model,'username', array('class' => 'form-control', 'disabled' => 'disabled')); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'password'); ?>
	<?php echo $form->passwordField($model,'password', array('class' => 'form-control', 'disabled' => 'disabled')); ?>
</div>

<button type="submit" class="btn btn-default">Save</button>

<?php
	$this->endWidget();
?>

</div>
</div>