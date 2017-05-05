
<link href='<?php echo app()->baseUrl;?>/themes/224896/assets/tab_index.css?1491278158182' rel='stylesheet' type='text/css' /> 
<div class="wrapper">
	<div class="container">

		<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
			<ul id="myTab" class="nav nav-tabs nav-tabs-responsive" role="tablist">
				<li role="presentation" class="active">
					<a href="#sanphammoi" id="sanphammoi-tab" role="tab" data-toggle="tab" aria-controls="sanphammoi-tab" aria-expanded="true">
						<span class="text">Sản phẩm mới</span>
					</a>
				</li>
				<li role="presentation" class="next">
					<a href="#noibat" role="tab" id="noibat-tab" data-toggle="tab" aria-controls="noibat-tab">
						<span class="text">Sản phẩm nổi bật</span>
					</a>
				</li>
				<li role="presentation">
					<a href="#muanhieu" role="tab" id="muanhieu-tab" data-toggle="tab" aria-controls="muanhieu-tab">
						<span class="text">Sản phẩm mua nhiều</span>
					</a>
				</li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div role="tabpanel" class="tab-pane fade in active" id="sanphammoi" aria-labelledby="sanphammoi-tab">
					<div class="row child_tab">
					<?php if($new):?>
						<?php foreach ($new as $value):?>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 box-product box_tab_index">
								<div class="product-box product_box_tab">
									<h3 class="product-name"><a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>" title="<?php echo $value->name?>"><?php echo $value->name?></a></h3>
									<div class="product-thumbnail">
										<a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>" title="<?php echo $value->name?>">

											<img src="<?php echo app()->baseUrl?>/uploads/<?php echo $value->image?>" alt="<?php echo $value->name?>">
										</a>
									</div>
									<div class="item-content">
										<div class="item-price">         
											<div class="price-box"> 			
												<p class="special-price"> <span class="price"><?php echo $value->price?></span></p>
											</div>
										</div>
									</div>
								</div>
							</div>
						<?php endforeach;?>
					<?php endif;?>
						
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 tab_more " style="display:none;">
							<a class="text_more_tab" href="<?php echo url('/san-pham')?>" title="Xem tất cả">Xem tất cả&nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
						</div>
					</div>
				</div>

				<div role="tabpanel" class="tab-pane fade" id="noibat" aria-labelledby="noibat-tab">
					<div class="row child_tab">
					<?php if($noibat):?>
						<?php foreach ($noibat as $value):?>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 box-product box_tab_index">
							<div class="product-box product_box_tab">
								<h3 class="product-name"><a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>" title="<?php echo $value->name?>"><?php echo $value->name?></a></h3>

								<div class="product-thumbnail">
									<a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>" title="<?php echo $value->name?>">

										<img src="<?php echo app()->baseUrl?>/uploads/<?php echo $value->image?>" alt="<?php echo $value->name?>">

									</a>
								</div>
								<div class="item-content">
									<div class="item-price">         
										<div class="price-box"> 
											<p class="special-price"> <span class="price"><?php echo $value->price?></span></p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<?php endforeach;?>
					<?php endif;?>

						
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 tab_more" style="display:none;">
							<a class="text_more_tab" href="<?php echo url('/san-pham')?>" title="Xem tất cả">Xem tất cả&nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
						</div>
					</div>
				</div>
				
				<div role="tabpanel" class="tab-pane fade" id="muanhieu" aria-labelledby="muanhieu-tab">
					<div class="row child_tab">
					<?php if($banchay):?>
						<?php foreach ($banchay as $value):?>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 box-product box_tab_index">
							<div class="product-box product_box_tab">
								<h3 class="product-name"><a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>" title="<?php echo $value->name?>"><?php echo $value->name?></a></h3>

								<div class="product-thumbnail">
									<a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>" title="<?php echo $value->name?>">

										<img src="<?php echo app()->baseUrl?>/uploads/<?php echo $value->image?>" alt="<?php echo $value->name?>">

									</a>
								</div>
								<div class="item-content">
									<div class="item-price">         
										<div class="price-box"> 
											<p class="special-price"> <span class="price"><?php echo $value->price?></span></p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<?php endforeach;?>
					<?php endif;?>

						
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 tab_more" style="display:none;">
							<a class="text_more_tab" href="<?php echo url('/san-pham')?>" title="Xem tất cả">Xem tất cả&nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>
<script src='themes/224896/assets/tab_index.js?1491278158182' type='text/javascript'></script>

<!-- End Tab -->


<div class="content-page">

	<!-- COLLECTION 1 -->
	<?php if($category):?>
		<?php foreach($category as $v):?>
			<div class="section section_top section-collection">
				<div class="container collection_pd">
					
					<div class="row">
						<div class="col-lg-12  header-title">
							
							<div class="title-left">
								<h2><a href='<?php echo url('/san-pham/' . $v->alias)?>'><?php echo $v->name?></a></h2>
							</div>
						</div>
					</div>
					
					
					<div class="row">
						<div class="col-lg-3 col-md-4 hidden-md-down banner-padding" style="padding-right:0px;">
							<div class="banner-left">
								<?php if($v->img_left != ''):?>
								<a href="#"><img src="<?php echo app()->baseUrl?>/uploads/<?php echo $v->img_left?>" alt="#" /></a>
								<?php endif;?>
							</div>
						</div>
						<div class="col-lg-9 col-md-12 col-sm-12 col-xs-12 content_left_pd">
							<div class="content-left">
								<div class="row">
									<div  class="col-lg-9 col-md-9 col-sm-9 col-xs-12 wrap-product wrp_xs_pd">
										<?php $productCat = $this->getProductByCatId($v->id);?>
										<?php if($productCat):?>
										<ul>
											
											<?php foreach ($productCat as $value):?>
											<li class="col-lg-4 col-md-4 col-sm-4 col-xs-6 item item_pr_pd">
												<div class=" box-product">
													<div class="product-box product-mini">
														<h3 class="product-name"><a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>" title="<?php echo $value->name?>"><?php echo $value->name?></a></h3>

														<div class="product-thumbnail">
															<div class="product-image-thumb">
																<a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>" title="<?php echo $value->name?>">
																	<img src="<?php echo app()->baseUrl?>/uploads/thumbs/<?php echo $value->image?>" alt="LG G3 Stylus H540 " >
																</a>
															</div>
														</div>
														<div class="item-content">
															<div class="item-price"> 
																<div class="price-box"> 
																	<p class="no_margin special-price"> <span class="price"><?php echo $value->price?></span></p>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
											<?php endforeach;?>
										</ul>
										<?php endif;?>
										<!-- End product -->
									</div>
									<?php $productCat2 = $this->getProductByCatIdLast($v->id);?>
									<?php if($productCat2):?>
									<div class="col-lg-3 col-md-3 col-sm-3 hidden-xs-down item-pro-list" style="padding-left:0px;">
										<?php foreach ($productCat2 as $value):?>
										<div class="product-item">
											<div class="product-image">
												<a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>" title="<?php echo $value->name?>" >
													<img src="<?php echo app()->baseUrl?>/uploads/thumbs/<?php echo $value->image?>" alt="<?php echo $value->name?>"/>
												</a>

											</div>
											<div class="content-product">
												<h3><a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>" title="<?php echo $value->name?>"><?php echo $value->name?></a></h3>
												<div class="price-box"> 
													<p class="special-price2"> <span class="price2"><?php echo $value->price?></span></p>
												</div>
											</div>
										</div>
										<?php endforeach;?>
									</div>
									<?php endif;?>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<?php if($v->img_bottom != ''): ?>
			<div class="section">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 hidden-md-down">
							<div class="banner-body">
								<a href="#"><img src="<?php echo app()->baseUrl?>/uploads/<?php echo $v->img_bottom?>" alt="#"/></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<?php endif;?>
		<?php endforeach;?>
	<?php endif;?>
	
	<section class="banner-brand-wrap hidden-sm-down">
		<div class="container banner-brand-wrap">
			<div class="banner-brand">
				<div id="owl-brand" class="owl-carousel owl-theme">
					<div class="item"><img src="thumb/compact/100/118/174/themes/224896/assets/brand1.png?1491278158182" alt="Golden mart"/></div>
					<div class="item"><img src="thumb/compact/100/118/174/themes/224896/assets/brand2.png?1491278158182" alt="Golden mart"/></div>
					<div class="item"><img src="thumb/compact/100/118/174/themes/224896/assets/brand3.png?1491278158182" alt="Golden mart"/></div>
					<div class="item"><img src="thumb/compact/100/118/174/themes/224896/assets/brand4.png?1491278158182" alt="Golden mart"/></div>
					<div class="item"><img src="thumb/compact/100/118/174/themes/224896/assets/brand5.png?1491278158182" alt="Golden mart"/></div>
					<div class="item"><img src="thumb/compact/100/118/174/themes/224896/assets/brand6.png?1491278158182" alt="Golden mart"/></div>
				</div>
			</div>
		</div>
	</section>

</div>