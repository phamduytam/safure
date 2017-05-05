<div id="content" class="row" style="padding-bottom: 10px;">
	<div class="span9 content-box">
		<h3 class="title">
		<?php echo $this->pageTitle;?>
		</h3>
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.0211556025733!2d106.63949131438561!3d10.88599526013935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174d61b45f12d5d%3A0x2238e82ff520b248!2zQsOgbiBnaOG6vyBQYWxsZXQ!5e0!3m2!1sen!2s!4v1448280211519" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>	

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
				<div class="form-group col-md-6">
				<?php echo $form->textField($model,'phone', array('placeholder' => 'Điện thoại', 'class' => 'form-control')); ?>
				<?php echo $form->error($model,'phone'); ?>
				</div>
				<!-- end .span4 -->
				<div class="form-group col-md-6">
				<?php echo $form->textField($model,'email', array('placeholder' => 'E-mail', 'class' => 'form-control')); ?>
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
