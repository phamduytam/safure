<div id="content" class="row" style="padding-bottom: 10px;">
	

	<div class="span9 content-box">
		<h3 class="title">
		<?php echo $this->pageTitle;?>
		</h3>
		<div><?php echo $contact->content?></div>
		<?php
		$form = $this->beginWidget('TbActiveForm', array(
		'action'=>sslUrl('lien-he'),
		'id' => 'contact-form',
		'htmlOptions'=>array('enctype' => 'multipart/form-data')
		));
		?>
		<fieldset>
		<?php
		if (user()->hasFlash('messages'))
		{
			$messages = user()->getFlash('messages');
			echo '<div id="formstatus"><div class="alert success"><i class="fa fa-check-circle-o"></i>	'. hsp($messages). '</div></div>';
		}
		?>
			<div style="overflow: hidden">
				<div class="form-group col-md-6">
				<?php echo $form->textField($model,'name', array('placeholder' => 'Họ tên', 'class' => 'form-control')); ?>
				<?php echo $form->error($model,'name'); ?>
				</div>
				<!-- end .span4 -->
				<div class="form-group col-md-6">
				<?php echo $form->textField($model,'email', array('placeholder' => 'e-mail', 'class' => 'form-control')); ?>
				<?php echo $form->error($model,'email'); ?>
				</div>
				<!-- end .span4 -->
			</div>
			<!-- end .row -->

			<div class="col-md-6 form-group">
			<?php echo $form->textField($model,'subject', array('placeholder' => 'Tiêu đề', 'class' => 'form-control')); ?>
			</div>
			<?php echo $form->error($model,'subject'); ?>
			<div class="form-group col-md-8">
			<?php echo $form->textArea($model,'content', array('class' => 'form-control', 'placeholder' => 'Viết tin nhắn', 'cols' => '25', 'rows' => '10')); ?>
			</div>
			<?php echo $form->error($model,'content'); ?>
			<br>
			<div class="text-left col-md-6">
				<input class="btn btn-green" id="submit" name="submit" value="Send"
					type="submit">
			</div>
			<br>

		</fieldset>
		<?php
		$this->endWidget();
		?>
	</div>
	<!-- end .span8 -->
	

</div>
