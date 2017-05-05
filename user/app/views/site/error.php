<?php $this->pageTitle = 'Error';?>
<?php
$defaultMessages = array(
	400=>'Bad request.',
	404=>'Page not found.',
	500=>'Internal server error. ',
);
?>


	<!-- spacer -->
	<div class="m_spacer"></div>
	<!-- /spacer -->


	<!-- row -->
	<div class="row">

		<div class="row-fluid">
			<div class="s_spacer"></div>
		</div>


		 <div class="alert alert-block m_padding" style="border-radius:0px;">
		<?php
		if(!empty($Cmessage)){
			$out = explode("\n", $Cmessage);
			echo hsp($out[0]);
			for($i = 1; $i < count($out); $i++){
				echo '<br>' , hsp($out[$i]);
			}
		}else{
			if(!empty($defaultMessages[$code])){
				$Cmessage = $defaultMessages[$code];
			}else{
				$Cmessage = $defaultMessages[500];
			}
			echo hsp($Cmessage);
		}
		?>
		</div>
		<!-- spacer -->
		<div class="l_spacer"></div>
		<!-- /spacer -->

		<!-- spacer -->
		<div class="l_spacer"></div>
		<!-- /spacer -->

	</div>
	<!-- /row -->
