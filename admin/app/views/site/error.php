<?php $this->pageTitle = ' エラー';?>
<?php
$defaultMessages = array(
	400=>'パラメーターに誤りがあります。',
	404=>'既に終了したか存在しないページです。',
	500=>'予期しないエラーが発生しました。',
);
?>


	<!-- spacer -->
	<div class="m_spacer"></div>
	<!-- /spacer -->


	<!-- white_theme -->
	<div class="container-fluid white_theme">

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
	<!-- /white_theme -->
