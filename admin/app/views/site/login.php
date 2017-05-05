<?php
	$this->layout = '//layouts/login';
	$this->pageTitle = 'Login';
?>
<div class="row vertical-offset-100">
    <!-- Notifications -->
    <?php
		if (user()->hasFlash('messages'))
		{
			$messages = user()->getFlash('messages');
			foreach ($messages as $value)
			{
				echo '<div class="alert alert-dismissable alert-danger">'. hsp($value). '</div>';
			}
			echo '<br>';
		}
	?>                
    <div class="col-sm-6 col-sm-offset-3  col-md-5 col-md-offset-4 col-lg-4 col-lg-offset-4">
        <div id="container_demo">
            <a class="hiddenanchor" id="toregister"></a>
            <a class="hiddenanchor" id="tologin"></a>
            <a class="hiddenanchor" id="toforgot"></a>
            <div id="wrapper">
                <div id="login" class="animate form">
			    <?php
				$form = $this->beginWidget('TbActiveForm', array(
					'action'=>sslUrl('/login'),
					'id' => 'login-form',
					'htmlOptions' => array('autocomplete' => 'on')
				));
				?>	
			        <h3 class="black_bg">
			            <img src="assets/img/logo.png" alt="josh logo">
			            <br>Log in</h3>
			            
			        <div class="form-group ">
			            <label style="margin-bottom:0px;" for="email" class="uname control-label"> <i class="livicon" data-name="user" data-size="16" data-loop="true" data-c="#3c8dbc" data-hc="#3c8dbc"></i>
			                E-mail
			            </label>
			            <?php echo $form->textField($model,'username', array('class' => 'form-control', 'placeholder' => 'Vui lòng nhập username', 'required' => true)); ?>
			            <div class="col-sm-12">
			                
			            </div>
			        </div>
			        <div class="form-group ">
			            <label style="margin-bottom:0px;" for="password" class="youpasswd"> <i class="livicon" data-name="key" data-size="16" data-loop="true" data-c="#3c8dbc" data-hc="#3c8dbc"></i>
			                Password
			            </label>
			            <?php echo $form->passwordField($model,'password', array('class' => 'form-control', 'placeholder' => 'Vui lòng nhập password')); ?>
			            <div class="col-sm-12">
			                
			            </div>
			        </div>
			        <p class="keeplogin">
			            <input type="checkbox" name="remember-me" id="remember-me" value="remember-me" />
			            <label for="remember-me">Keep me logged in</label>
			        </p>
			        <p class="login button">
			            <?php echo CHtml::submitButton('Login', array('name' => 'login', 'class' => 'btn btn-success')); ?>
			        </p>
			        <p class="change_link">
			            <a href="#toforgot">
			                <button type="button" class="btn btn-responsive botton-alignment btn-warning btn-sm">Forgot password</button>
			            </a>
			            <a href="#toregister">
			                <button type="button" class="btn btn-responsive botton-alignment btn-success btn-sm" style="float:right;">Sign up</button>
			            </a>
			        </p>
			    <?php
				$this->endWidget();
				?>
			</div>                      
            </div>
        </div>
    </div>
</div>

