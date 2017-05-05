<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="<?php echo $this->getKeyWord();?>" name="keywords">
<meta content="<?php echo $this->getDescription();?>" name="description">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
<title><?php echo $this->pageTitle;?></title>

<meta name="format-detection" content="telephone=no" />
<link rel="stylesheet" href="<?php echo app()->baseUrl;?>/css/style.css">
<link rel="stylesheet" href="<?php echo app()->baseUrl;?>/css/bootstrap.css">
<link rel="stylesheet" href="<?php echo app()->baseUrl;?>/css/font-awesome.css">
<link rel="stylesheet" href="<?php echo app()->baseUrl;?>/css/default.css">
<link rel="stylesheet" href="<?php echo app()->baseUrl;?>/css/nivo-slider.css">
<script src="<?php echo app()->baseUrl;?>/js/jquery.js"></script>

<!--[if lt IE 9]>
 <div style=' clear: both; text-align:center; position: relative;'>
   <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
     <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
   </a>
</div>
<script src="<?php echo app()->baseUrl;?>/js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">


<![endif]-->
</head>

<body>
	<div class="container-fluid header">
		<div class="container">
			<ul class="sf-menu" id="menu">
				<li><a href="<?php echo app()->baseUrl;?>/">Trang chủ</a></li>
				<li><a href="<?php echo url('san-pham.html')?>">Sản phẩm</a></li>
				<li><a href="<?php echo url('tin-tuc.html')?>">Tin tức</a></li>
				<li><a href="<?php echo url('khach-hang.html')?>">Khách hàng</a></li>
				<li><a href="<?php echo url('lien-he.html')?>">Liên hệ</a></li>
			</ul>
		</div>
	</div>
	<div class="container">
		<!-- // Mobile menu trigger // -->
			<a href="#" id="mobile-menu-trigger">
				<i class="fa fa-bars"></i>
			</a>

	</div>
	<div class="container">

	</div>
	<div class="container" id="main">
		<?php echo $content ?>
	</div>
	<div class="container-fluid footer">
		<div class="container">
			<div class="row">
				<div class="col-md-8">Copyright &copy 2015 Mocstyle. All Rights Reserved.</div>

				<div class="col-md-4 fright" style="text-align: right; color: #252525; font-family:Roboto; font-size: 12px; font-weight: 300">
					pndtam@gmail.com
				</div>
			</div>
		</div>
	</div>
	<script src="<?php echo app()->baseUrl;?>/js/bootstrap.js"></script>
	<script src="<?php echo app()->baseUrl;?>/js/superfish.js"></script>
	<script src="<?php echo app()->baseUrl;?>/js/hoverIntent.js"></script>
	<script src="<?php echo app()->baseUrl;?>/js/jquery.viewport.js"></script>
	<script src="<?php echo app()->baseUrl;?>/js/plugins.js"></script>
	<script src="<?php echo app()->baseUrl;?>/js/scripts.js"></script>
	<script src="<?php echo app()->baseUrl;?>/js/jquery_cookie.js"></script>

	<script type="text/javascript">
		$(window).load(function() {
			$('#slider').nivoSlider({
				controlNav: false,
			});
		});
	</script>
	<script src="<?php echo app()->baseUrl;?>/js/jquery.nivo.slider.js"></script>
</body>
</html>

