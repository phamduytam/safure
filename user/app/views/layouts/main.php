
<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="vi"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8" lang="vi"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9" lang="vi"> <![endif]-->
<!--[if IE 9 ]><html class="ie9 no-js"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="vi"> <!--<![endif]-->
<head lang="vi">

	<!-- Basic page needs ================================================== -->

	<!-- Title and description ================================================== -->
	<title>
		<?php echo $this->getTitle();?>
	</title>

	<meta name="description" content="<?php echo $this->getDescription();?>">
	<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
	<meta content="utf-8" http-equiv="encoding">

	<!-- Product meta ================================================== -->
	

	<meta property="og:url" content="http://maylocnuocsach.vn">
	<meta property="og:site_name" content="Máy lọc nước sạch">


	<!-- Helpers ================================================== -->
	<link rel="canonical" href="http://maylocnuocsach.vn">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta name='revisit-after' content='1 days' />
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta http-equiv="content-language" content="vi" />
	<meta name="robots" content="noodp,index,follow" />
	<meta name='revisit-after' content='1 days' />
	<meta name="keywords" content="Máy lọc nước sạch, may loc nuoc sach">
	<!-- Favicon -->
	<!-- <link rel="shortcut icon" href="themes/224896/assets/favicon.png?1491278158182" type="image/x-icon" /> -->
	<!-- Scripts -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>


	<!-- Styles -->
	<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
	<!--[if IE 7]>
<link href='themes/224896/assets/font-awesome-ie7.css?1491278158182' rel='stylesheet' type='text/css' />
<![endif]-->
	<!--[if lt IE 9]>
<script src='//html5shiv.googlecode.com/svn/trunk/html5.js' type='text/javascript'></script>
<![endif]-->
<div id="myModal" class="modal fade" role="dialog">
</div>
<link href='<?php echo app()->baseUrl;?>/themes/224896/assets/popup_cart_desktop.css?1491278158182' rel='stylesheet' type='text/css' />
<link href='<?php echo app()->baseUrl;?>/themes/224896/assets/bootstrap.min.css?1491278158182' rel='stylesheet' type='text/css' />
<link href='<?php echo app()->baseUrl;?>/themes/224896/assets/owl.carousel.css?1491278158182' rel='stylesheet' type='text/css' />
<link href='<?php echo app()->baseUrl;?>/themes/224896/assets/owl.theme.default.css?1491278158182' rel='stylesheet' type='text/css' />




<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Open+Sans:400,700|Roboto" rel="stylesheet">
<link rel="stylesheet" href="<?php echo app()->baseUrl;?>/assets/css/font-awesome.css">
<link href='<?php echo app()->baseUrl;?>/themes/224896/assets/jgrowl.css?1491278158182' rel='stylesheet' type='text/css' />

<link href='<?php echo app()->baseUrl;?>/themes/224896/assets/style.css?1491278158182' rel='stylesheet' type='text/css' />



<script>var ProductReviewsAppUtil=ProductReviewsAppUtil || {};</script>
</head>
<body id="golden-mart-theme-bizweb-chuyen-ban-hang-online home" class="  cms-index-index cms-home-page" >  
	<div id="OpacityPage"></div>
	<div id="menu-mobile-display"  class="menu-mobile hidden-lg-up">
		<div class="content-menu">
			<div class="title-menu-mobile">
				<a href="<?php echo app()->baseUrl;?>/">Máy lọc nước sạch</a>
			</div>
			<div class="ft-menu-mobile">
				<ul>

					<li class="level0 level-top parent"><a href="/">Trang chủ</a></li>

					<li class="level0 level-top parent <?php echo $this->action->id == 'khuyenmai' ? 'active' : ''?>"><a href="/khuyen-mai">Khuyến mại</a></li>

					<li class="level0 level-top parent <?php echo $this->id == 'gioithieu' ? 'active' : ''?>"><a href="/gioi-thieu">Giới thiệu</a></li>

					<li class="level0 level-top parent <?php echo $this->id == 'tintuc' ? 'active' : ''?>"><a href="/tin-tuc">Tin tức - Blog</a></li>

					<li class="level0 level-top parent <?php echo $this->id == 'contact' ? 'active' : ''?>"><a href="/lien-he">Liên hệ</a></li>

					<li class="level0 level-top parent <?php echo $this->action->id == 'tuyendung' ? 'active' : ''?>"><a href="/tuyen-dung">Tuyển dụng</a></li>

				</ul>
			</div>
			<div class="navigation">
				<ul id="Mobile_menu" class="topnavmobile">


					<!-- link collection -->

					<?php
					$category = $this->getCategory();
					if($category):
						?>
					<?php
					foreach ($category as $v):
						?>
					<li class="level0 level-top parent"><a href="<?php echo app()->baseUrl;?>/san-pham/<?php echo $v->alias?>.html" title="<?php echo $v->name?>"><?php echo $v->name?></a>
					<!-- <ul class="level0" style="display:none;">
						
						
						<li class="level1"> <a href="/samsung"> <span>Samsung</span> </a>
							<ul class="level1" style="display:none;">
								
								
								<li class="level2"><a href="/samsung-galaxy-a"><span>Samsung Galaxy A</span></a>
									<ul class="level2" style="display:none;">
										
									</ul>
								</li>								
								
							</ul>
						</li>
						
						
					</ul> -->
				</li>
			<?php endforeach;?>
		<?php endif;?>


	</ul>
</div>
<div class="ft-menu-mobile">
	<ul>
		<?php $hotline = $this->getHotline();
			if ($hotline):
		?>
			<li><span>Hotline <h6><?php echo $hotline?></h6></span><img src="<?php echo app()->baseUrl;?>/themes/224896/assets/phone-menu-mobile.png?1491278158182" alt="Gọi ngay"/></li>
		<?php endif;?>
		

		<li><a href='/lien-he-va-gop-y'>Liên hệ và góp ý</a></li>

		<li><a href='/huong-dan-mua-hang-online'>Hướng dẫn mua hàng online</a></li>

		<li><a href='/huong-dan-mua-hang-tra-gop'>Hướng dẫn mua hàng trả góp</a></li>

		<li><a href='/quy-che-quan-ly-hoat-dong'>Quy chế quản lý hoạt động</a></li>

	</ul>
</div>
</div>
<div class="button-close">
	<div id="close-menu" class="btn-close">
		<i class="fa fa-bars" aria-hidden="true"></i>
	</div>
</div>
</div>
<header>
	

	<div class="header-container">
		<div class="container container_main">
			<div class="row">
				<div class="col-sm-2 col-xs-3 navbar-mobile nav_mx991 hidden-lg-up">
					<a id="showmenu-mobile" class="button-menu">
						<i class="fa fa-bars" aria-hidden="true"></i>
					</a>
				</div>
				<div class="col-lg-3 col-md-8 col-sm-6 col-xs-6 logo_mx991">
					<div class="logo">
						<a href="<?php echo app()->baseUrl;?>/" title="Máy lọc nước sạch">
							<?php $logo = $this->getLogo()?>
							<?php
								if ($logo)
									$img = 'uploads/' . $logo->image;
								else
									$img = 'themes/224896/assets/logo.jpg';
							?>
							<img src="<?php echo app()->baseUrl;?>/<?php echo $img?>" alt="Máy lọc nước sạch">
						</a>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 hidden-md-down search-item">
					<div class="support_search hidden-md-down">
						<!-- <?php $tuvan = $this->getTuvan();
							if ($tuvan):
						?>
						<h5>Tư vấn bán hàng : </h5><span> <?php echo $tuvan?></span>&nbsp;&nbsp;|&nbsp;&nbsp;
						<?php endif;?> -->
						<h5>CÔNG TY TRÁCH NHIỆM HỮU HẠN ĐỨC TÂM</h5> &nbsp;&nbsp;|&nbsp;&nbsp;
						
						<?php $hotline = $this->getHotline();
							if ($hotline):
						?>
						<h5>Hotline : </h5><span> <?php echo $hotline?></span>	
						<?php endif;?>
					</div>
					<div class="search_form">
						<?php
                            $form = $this->beginWidget('TbActiveForm', array(
                                'action'=>sslUrl('san-pham/tim-kiem'),
                                'id' => 'search-form',
                                'method' => 'GET',
                                'htmlOptions'=>array('enctype' => 'multipart/form-data', 'method' => 'GET')
                                ));
                        ?>
                            <input name="keyword" placeholder="Nhập từ khóa cần tìm..." class="search_input" maxlength="70" id="search" type="text" value=""/>
                            <input type="submit" value="Tìm kiếm" class="btnsearch">
                        <?php
                            $this->endWidget();
                            ?>
					</div>			
				</div>
				<div class="col-md-12 col-sm-12 col-xs-12 search_form_mobile hidden-lg-up">
					<?php
                        $form = $this->beginWidget('TbActiveForm', array(
                            'action'=>sslUrl('san-pham/tim-kiem'),
                            'id' => 'search-form',
                            'method' => 'GET',
                            'htmlOptions'=>array('enctype' => 'multipart/form-data', 'method' => 'GET')
                            ));
                    ?>
					<!-- <form action="/search" method="get" class="search-form" role="search"> -->
						<input placeholder="Nhập từ khóa cần tìm..." class="search_input_mobile" maxlength="70" id="search" type="text" name="keyword" value="">
						<button class="submit_button"><i class="btnsearch_mobile fa fa-search" aria-hidden="true"></i></button>
					<!-- </form> -->
					<?php
                        $this->endWidget();
                    ?>
				</div>		
			</div>					
		</div>

	</div>
</header>


<nav class="hidden-md-down">
	<div class="container">
		<div class="row nav_menu">
			<div class="col-lg-3 col-md-4 hidden-sm-down nav-inner">
				<div class="col-lg-12 col-md-12 nav-drop">
					<div class="title-menu-bar">
						<div class="" >
							<span class="title-bar"></span><a id="showmenu">Danh mục sản phẩm</a>
						</div>
					</div>
					
					<div id="<?php echo $this->id == 'site' ? 'menucontent' : 'menucontentother';?>" class="col-lg-12 col-md-12 <?php echo $this->id == 'site' ? 'index_nav_display' : '';?> slideup cate-sidebar " <?php echo $this->id != 'site' ? 'style="display:none"' : '';?> role="menu">
						<ul class="site-nav vertical-nav ">
							
							<?php
							$category = $this->getCategory();
							if($category):
								?>
							<?php
							foreach ($category as $v):
								?>
							<li class="nav-item icon ">
								<a href="<?php echo app()->baseUrl;?>/san-pham/<?php echo $v->alias?>.html" title="<?php echo $v->name?>" alt=""><span><?php echo $v->name?></span></a>
							</li>
						<?php endforeach;?>
					<?php endif;?>
				</ul>
			</div>
			<script>
				$("#showmenu").click(function () {
					if ($("#menucontent").hasClass("slideup"))
						$("#menucontent").removeClass("slideup").addClass("slidedown");
					else
						$("#menucontent").removeClass("slidedown").addClass("slideup");
				});

			</script>
			<script>
				$(document).ready(function() {
					$('#showmenu').click(function() {
						$('#menucontentother').slideToggle('300');
						return false;
					});
				});
				$(".nav-drop").mouseenter(function() {
					  $("#menucontentother").show();
				}).mouseleave(function() {
					  $("#menucontentother").hide();
				});
				
			</script>


		</div>
	</div>
	<div class="col-lg-5 hidden-md-down main-nav">
		<ul id="nav">

			<li class=" first  parrent  active "><a href="/">Trang chủ</a></li>

			<li class=" parrent <?php echo $this->action->id == 'khuyenmai' ? 'active' : ''?>"><a href="/khuyen-mai">Khuyến mại</a></li>

			<li class=" parrent <?php echo $this->id == 'gioithieu' ? 'active' : ''?>"><a href="/gioi-thieu">Giới thiệu</a></li>

			<li class=" parrent <?php echo $this->id == 'tintuc' ? 'active' : ''?>"><a href="/tin-tuc">Tin tức - Blog</a></li>

			<li class=" parrent <?php echo $this->id == 'contact' ? 'active' : ''?>"><a href="/lien-he">Liên hệ</a></li>

			<li class=" last  parrent <?php echo $this->action->id == 'tuyendung' ? 'active' : ''?>"><a href="/tuyen-dung">Tuyển dụng</a></li>

		</ul>
	</div>
</div>

</div>
</nav>
<?php if ($this->id != 'site'): ?>
<div class="brd">
  <div class="container">
    <div class="row">
      <div class="inner">
        <ul class="breadcrumbs">

          <li class="home"> <a title="Quay lại trang chủ" href="<?php echo app()->baseUrl;?>/">Trang chủ</a></li>
          <?php
                if($this->breadcrumbs)
                {
                    foreach ($this->breadcrumbs as $key => $value)
                    {
                    	if($key != '')
                    	{
            ?>
            		<i class="fa fa-angle-right" aria-hidden="true"></i>
            		<li><span><?php echo $value ? '<a href="'.$value.'">'.$key.'</a>' : $key?></span></li>
            <?php   
                    	}         
                    }
                }
            ?>
			
			
        </ul>
      </div>
    </div>
  </div>
</div>
<?php endif;?>
<?php if($this->id == 'site'):?>
<section class="section section-cate slideshow_full_width slide1_bgcolor">
	<div class="container">
		<div class="row">
			
			<div class="col-lg-3 hidden-md-down"></div>
			<div class="col-lg-7 col-md-12 col-sm-12 col-xs-12 col_slideshow">
				
				<section id="slide_banner" class="banner-slider owl-carousel owl-source">
					<!-- Side1 -->
					<?php
						$slide = $this->getSlide();
						if ($slide):
						$i = 1;
						foreach($slide as $v):
					?>
					<div class="item" id="slide<?php echo $i?>">
						<a href="#">
							<img src="<?php echo app()->baseUrl;?>/uploads/<?php echo $v->image?>">
						</a>
					</div>
					<?php 
						$i++;
						endforeach;
					?>
					<?php endif;?>

				</section>

			</div>
			<div class="col-lg-2 hidden-md-down item-right service_index padding_medium">
				
				<div class="service">
					<div class="image">
						<img class="image-sv" src="<?php echo app()->baseUrl;?>/themes/224896/assets/cart-sv.png?1491278158182" alt="Sản phẩm đa dạng,</br> mẫu mã phong phú" />
					</div>
					<div class="info">
						<h5><span>Sản phẩm đa dạng,</br> mẫu mã phong phú</span></h5>
					</div>
				</div>
				<div class="service">
					<div class="image">
						<img class="image-sv" src="<?php echo app()->baseUrl;?>/themes/224896/assets/pig_sv.png?1491278158182" alt="Giá cả hợp lý,</br>nhiều chính sách ưu đãi" />
					</div>
					<div class="info">
						<h5><span>Giá cả hợp lý,</br>nhiều chính sách ưu đãi</span></h5>
					</div>
				</div>
				<div class="service">
					<div class="image">
						<img class="image-sv" src="<?php echo app()->baseUrl;?>/themes/224896/assets/drop.png?1491278158182" alt="Hệ thống rộng lớn </br>có mặt tại 54 tỉnh thành" />
					</div>
					<div class="info">
						<h5><span>Hệ thống rộng lớn </br>có mặt tại 54 tỉnh thành</span></h5>
					</div>
				</div>
				
			</div>
			
		</div>
	</div>
</section>
<?php endif;?>

<h1 style="display:none;">Máy lọc nước sạch </h1>
<!-- TAB Product Index -->
<?php echo $content;?>



<!-- <link href='themes/224896/assets/bpr-products-module.css?1491278158182' rel='stylesheet' type='text/css' /> -->
<div class="bizweb-product-reviews-module"></div>
<footer id="footer" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	<div class="footer">
		<div class="container">
			<section class="footer-up hidden-xs-down">
				<div class="row">
					<div class="col-lg-3 col-md-6 col-sm-4 col-xs-12 hidden-sm-down footer-vertical">
						<h5>Thông tin công ty</h5>
						
						<li><a href='/thong-tin-cong-ty'>Thông tin công ty</a></li>
						
						<li><a href='/gioi-thieu'>Giới thiệu công ty</a></li>
						
						<li><a href='/he-thong-cac-sieu-thi'>Hệ thống các siêu thị</a></li>
						

					</div>
					<div class="col-lg-3 col-md-6 col-sm-4 col-xs-12 hidden-sm-down footer-vertical">
						<h5>Hỗ trợ khách hàng</h5>
						
						<li><a href='/lien-he'>Liên hệ và góp ý</a></li>
						
						<li><a href='/huong-dan-mua-hang-online'>Hướng dẫn mua hàng online</a></li>
						
						<li><a href='/huong-dan-mua-hang-tra-gop'>Hướng dẫn mua hàng trả góp</a></li>
						
						<li><a href='/quy-che-quan-ly-hoat-dong'>Quy chế quản lý hoạt động</a></li>
						

					</div>
					<div class="col-lg-3 col-md-6 col-sm-4 col-xs-12 hidden-sm-down footer-vertical">
						<h5>Chính sách mua hàng</h5>
						
						<li><a href='/quy-dinh-chinh-sach'>Quy định, chính sách</a></li>
						
						<li><a href='/chinh-sach-bao-hanh-doi-tra'>Chính sách bảo hành - Đổi trả</a></li>
						
						<li><a href='/chinh-sach-hoi-vien'>Chính sách hội viên</a></li>
						
						<li><a href='/giao-hang-va-lap-dat'>Giao hàng và lắp đặt</a></li>
						

					</div>
					<div class="col-lg-3 col-md-6 col-sm-4 col-xs-12 hidden-sm-down footer-vertical facebook-widget">
					</div>
				</div>
			</section>


			<section class="footer-up">
				<div class="col-xs-12 hidden-sm-up">
					<div id="toogle_click" class="widget-item panel">
						<h5 class="widget-title" data-toggle="collapse" data-parent="#accordion" >Thông tin công ty<i class="fa fa-angle-down " aria-hidden="true"></i></h5>
						<ul class="widget-menu panel-collapse collapse in" id="collapseOne">

							
							<li><a href='/thong-tin-cong-ty'>Thông tin công ty</a></li>
							
							<li><a href='/gioi-thieu'>Giới thiệu công ty</a></li>
							
							<li><a href='/he-thong-cac-sieu-thi'>Hệ thống các siêu thị</a></li>
							

						</ul>
					</div>
				</div>


				<div class="col-xs-12 hidden-sm-up">
					<div id="toogle_click" class="widget-item panel">
						<h5 class="widget-title" data-toggle="collapse" data-parent="#accordion" >Hỗ trợ khách hàng<i class="fa fa-angle-right " aria-hidden="true"></i></h5>
						<ul class="widget-menu panel-collapse collapse" id="collapseTwo">

							
							<li><a href='/lien-he'>Liên hệ và góp ý</a></li>
							
							<li><a href='/huong-dan-mua-hang-online'>Hướng dẫn mua hàng online</a></li>
							
							<li><a href='/huong-dan-mua-hang-tra-gop'>Hướng dẫn mua hàng trả góp</a></li>
							
							<li><a href='/quy-che-quan-ly-hoat-dong'>Quy chế quản lý hoạt động</a></li>
							

						</ul>
					</div>
				</div>


				<div class="col-xs-12 hidden-sm-up">
					<div id="toogle_click" class="widget-item panel">
						<h5 class="widget-title" data-toggle="collapse" data-parent="#accordion" >Chính sách mua hàng<i class="fa fa-angle-right " aria-hidden="true"></i></h5>
						<ul class="widget-menu panel-collapse collapse" id="collapseThree">

							
							<li><a href='/quy-dinh-chinh-sach'>Quy định, chính sách</a></li>
							
							<li><a href='/chinh-sach-bao-hanh-doi-tra'>Chính sách bảo hành - Đổi trả</a></li>
							
							<li><a href='/chinh-sach-hoi-vien'>Chính sách hội viên</a></li>
							
							<li><a href='/giao-hang-va-lap-dat'>Giao hàng và lắp đặt</a></li>
							

						</ul>
					</div>
				</div>

			</section>
			
			

			
			<section class="footer-bottom-1 hidden-md-down">
				<div class="row">
					<div class="title-bottom">
						<h5>CÔNG TY TRÁCH NHIỆM HỮU HẠN ĐỨC TÂM</h5>
					</div>
					<?php
						$contact = $this->getContact();
						if ($contact):
					?>
					<div class="col-lg-12 col-md-12">
						<div class="txt-bottom">
							<p><img class='image_position' src='<?php echo app()->baseUrl;?>/themes/224896/assets/position.png'>Địa chỉ: <?php echo $contact['address']?></p>
							<p> <img class='image_position' src='<?php echo app()->baseUrl;?>/themes/224896/assets/phone-ft.png'> Điện thoại: <?php echo $contact['phone']?></p>
						</div>

					</div>
					<?php endif;?>
				</div>
			</section>
			

		</div>
	</div>
	<div class="ft-bottom">
		<div class="container ft">
			<div class="row">
				<div class="col-lg-12 col-xs-12 copyright">
					<p>© Bản quyền thuộc về <b style="color:#fff;">www.maylocnuocsach.vn</b></p>
				</div>
			</div>
		</div>
	</div>
</footer>
<script src='<?php echo app()->baseUrl;?>/themes/224896/assets/option-selectors.js?1491278158182' type='text/javascript'></script>
<!-- <script src="//cdnjs.cloudflare.com/ajax/libs/tether/1.3.1/js/tether.min.js"></script> -->


<script src='<?php echo app()->baseUrl;?>/assets/themes_support/api.jquery.js?4' type='text/javascript'></script> 

<!-- <script src='themes/224896/assets/jquery-theme.min.js?1491278158182' type='text/javascript'></script>  -->

<script src='<?php echo app()->baseUrl;?>/themes/224896/assets/jquery.fancybox.js?1491278158182' type='text/javascript'></script>
<link href='<?php echo app()->baseUrl;?>/themes/224896/assets/jquery.fancybox.css?1491278158182' rel='stylesheet' type='text/css' />
<script src='<?php echo app()->baseUrl;?>/themes/224896/assets/quickviews.js?1491278158182' type='text/javascript'></script> 
<script src='<?php echo app()->baseUrl;?>/themes/224896/assets/common.js?1491278158182' type='text/javascript'></script>
<script src='<?php echo app()->baseUrl;?>/themes/224896/assets/jquery.flexslider.js?1491278158182' type='text/javascript'></script>
<script src='<?php echo app()->baseUrl;?>/themes/224896/assets/cloud-zoom.js?1491278158182' type='text/javascript'></script>
<script src='<?php echo app()->baseUrl;?>/assets/themes_support/api.jquery.js?4' type='text/javascript'></script>
<script src='<?php echo app()->baseUrl;?>/themes/224896/assets/js_custome.js?1491278158182' type='text/javascript'></script>
<script src='<?php echo app()->baseUrl;?>/themes/224896/assets/jgrowl.js?1491278158182' type='text/javascript'></script>
<!-- <script src='themes/224896/assets/ajax_cart.js?1491278158182' type='text/javascript'></script> -->
<!--<script src='themes/224896/assets/cs.script.js?1491278158182' type='text/javascript'></script>-->
<script src='<?php echo app()->baseUrl;?>/themes/224896/assets/bootstrap.min.js?1491278158182' type='text/javascript'></script> 
<script src='<?php echo app()->baseUrl;?>/themes/224896/assets/owl.carousel.min.js?1491278158182' type='text/javascript'></script> 


<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
<a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 0;"></span></a>
</body>

</html>