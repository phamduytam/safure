<?php
$this->keyword = $product->name .', '. convertKeyword($product->name);
$this->description = $product->description;
?>
<section class="main-collection main-mr">
	<div class="container">
		<div class="col-main">
			<div class="row product_info">
				<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 prd_view_slide">
					<div id="large-image" class="owl-carousel not-dqowl owl-theme product-images large-image" style="opacity: 1; display: block;">
						
						
						
						<div class="owl-wrapper-outer">
						<div class="owl-wrapper" style="width: 3570px; left: 0px; display: block;">
						<div class="owl-item active" style="width: 357px;">
						<div class="item">
							<img id="zoom_01" src="<?php echo app()->baseUrl; ?>/uploads/<?php echo $product->image?>" alt="<?php echo $product->name?>">
						</div>
						</div>
						</div>
						</div>
						</div>


</div>
<div class="col-lg-5 col-md-6 col-sm-6 col-xs-12 content_prd">

	<div class="product_infomation">
		<div class="product_title">
			<h1 class="fw_600"><?php echo $product->name?>&nbsp;</h1>
		</div>
		<div class="product_vendor clc5">
			<p class="cl_mobile_old"><span class="txt_vendor">Bảo hành</span><span class=" vendor_text">:</span>
				<span> <span class="cl_main vendor"> <?php echo $product->baohanh?></span></span>
			</p>
		</div>

		<div id="giasanpham" class="product_price">
			<div class="price-block">
				<p class="cl_mobile_old hidden-sm-up">Giá </p> <span class=" vendor_text hidden-sm-up">:</span>
				<div class="price-box">


					<p class="special-price"> <span class="price_pr price"><?php echo $product->price?></span></p>
					<p class="old-price"> <span class="price_pr price" id="old-price" style="display: none;"></span></p>


				</div>

			</div>
		</div>
		<div class="product_content hidden-sm-down">
			<h5 class="fw_600">Mô tả :</h5>
			<div class="cl_old"><?php echo $product->description?>

			</div>
			<div style="clear:both;"></div>
		</div>
	</div>
</div>


<div class="col-lg-3 col-md-3 col-sm-3 hidden-md-down prd_detail_col3">
	<div>
		<div class="in">
			<img src="<?php echo app()->baseUrl; ?>/themes/224896/assets/free_deliverd.png?1493960184250" height="23" width="29" alt="Miễn phí vận chuyển với đơn hàng lớn hơn 10.000.000 đ">
			<p>Miễn phí vận chuyển với đơn hàng lớn hơn 10.000.000 đ</p>
		</div>

	</div>
	<div>
		<div class="in">
			<img src="<?php echo app()->baseUrl; ?>/themes/224896/assets/giaohangngaysaukhidat.png?1493960184250 " height="30" width="29" alt="Giao hàng ngay sau khi đặt hàng (áp dụng với HCM)">
			<p>Giao hàng ngay sau khi đặt hàng (áp dụng với HCM)</p>
		</div>
	</div>
	<div>
		<div class="in">
			<img src="<?php echo app()->baseUrl; ?>/themes/224896/assets/doitra.png?1493960184250" height="23" width="30" alt="Đổi trả trong 3 ngày, thủ tục đơn giản">
			<p>Đổi trả trong 3 ngày, thủ tục đơn giản</p>
		</div>
	</div>
	<div>
		<div class="in">
			<img src="<?php echo app()->baseUrl; ?>/themes/224896/assets/hoadon.png?1493960184250" height="38" width="31" alt="Nhà cung cấp xuất hóa đơn cho sản phẩm này">
			<p>Nhà cung cấp xuất hóa đơn cho sản phẩm này</p>
		</div>
	</div>
</div>

</div>

<div class="row product_description">
	<div class="col-lg-12 col-xs-12 tab-product-des">
		<div class="prd_tabs">
			<ul class="tab-product nav nav-tabs responsive" role="tablist" id="tabs">
				<li role="presentation" class="navi-tab active"><a href="#thongtin" aria-controls="thongtin" aria-expanded="true" role="tab" data-toggle="tab">Thông tin sản phẩm</a></li>

				<!-- <li role="presentation" class="navi-tab"><a href="#danhgia" aria-controls="danhgia" role="tab" aria-expanded="false" data-toggle="tab">Khách hàng đánh giá</a></li> -->


				<li role="presentation" class="navi-tab"><a href="#thetag" aria-controls="thetag" role="tab" aria-expanded="false" data-toggle="tab">Thẻ tag</a></li>

			</ul>

			<!-- Tab panes -->
			<div class="tab-content content-tab-product responsive" id="my-tab-content">
				<div role="tabpanel" class="tab-pane active tab_content" id="thongtin">

					<div class="thongtinsanpham details-info">
						<?php echo $product->content?>
					</div>

				</div>

				<!-- <div role="tabpanel" class="tab-pane tab_content" id="danhgia">

					<div class="danhgiatab">
						<div id="bizweb-product-reviews" class="bizweb-product-reviews" data-id="4178033"><div><div class="title-bl">
							<h4>Đánh giá sản phẩm</h4>
						</div>
						<div id="bizweb-product-reviews-sub">
							<div id="bizweb-product-reviews-summary" class="bizweb-product-reviews-summary">
								<div itemscope="" itemtype="http://schema.org/Product">
									<meta content="LG G3 Stylus H540&nbsp;" itemprop="name">
									<div itemprop="aggregateRating" itemscope="" itemtype="http://schema.org/AggregateRating" class="bpr-summary">
										<meta content="0" itemprop="ratingValue">
										<meta content="5" itemprop="bestRating">
										<meta content="1" itemprop="worstRating">
										<meta content="0" itemprop="ratingCount">

										<span class="bpr-summary-average">0</span>
										<div data-number="5" data-score="0" class="bizweb-product-reviews-star" id="bizweb-prv-summary-star" title="Not rated yet!" style="color: rgb(255, 190, 0);">
											<i data-alt="1" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="2" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="3" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="4" class="star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="5" class="star-off-png" title="Not rated yet!"></i><input name="score" type="hidden" readonly=""></div>
											<div class="bpr-summary-caption">
												<div></div>
												<div>
													<div><p>0</p></div>
													<div><img height="15" width="16" src="https://productreviews.bizwebapps.vn/assets/images/user.png"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<span class="product-reviews-summary-actions">
									<input type="button" onclick="BPR.toggleForm(this);return false;" id="btnnewreview" value="Viết đánh giá">
								</span>
								<div class="bizweb-product-reviews-form" id="bpr-form_4178033" style="display:none;">
									<form method="post" action="https://productreviews.bizwebapps.vn/reviews/create" onsubmit="BPR.submitForm(this);return false;" id="bizweb-product-reviews-frm" name="bizweb-product-reviews-frm">
										<input type="hidden" name="productId" id="review_product_id" value="4178033">
										<h4>Đánh giá</h4>
										<fieldset class="bpr-form-rating">
											<div id="dvRating"></div>
											<input type="hidden" name="rating" id="review_rate" value="0">
											<span class="bpr-form-message-error"></span>
										</fieldset>
										<fieldset class="bpr-form-contact">
											<div class="bpr-form-contact-name require">
												<input type="text" maxlength="128" id="review_author" name="author" value="" placeholder="Nhập tên của bạn">
												<span class="bpr-form-message-error"></span>
											</div>
											<div class="bpr-form-contact-email require">
												<input type="text" maxlength="128" id="review_email" name="email" value="" placeholder="nguyenvan@gmail.com">
												<span class="bpr-form-message-error"></span>
											</div>
										</fieldset>
										<fieldset class="bpr-form-review">
											<div class="bpr-form-review-title">
												<input type="text" maxlength="512" id="review_title" name="title" value="" placeholder="Tiêu đề">
												<span class="bpr-form-message-error"></span>
											</div>
											<div class="bpr-form-review-body">
												<textarea maxlength="1500" id="review_body" name="body" rows="5" placeholder="Nội dung"></textarea>
												<span class="bpr-form-message-error"></span>
											</div>
										</fieldset>
										<fieldset class="bpr-form-review-error">
											<p class="error"></p>
										</fieldset>
										<fieldset class="bpr-form-actions">
											<input type="submit" value="Gửi" class="bpr-button-submit">
										</fieldset>
									</form>
								</div>
								<div style="display:none;" id="bpr-thanks" class="bizweb-product-reviews-form">
									<b>Cám ơn bạn đã đánh giá sản phẩm!</b>
								</div>
								<div id="bpr-list" class="bizweb-product-reviews-list"></div>
								<div id="bpr-more-reviews"></div>
							</div></div></div>
						</div>

					</div> -->


					<div role="tabpanel" class="tab-pane tab_content" id="thetag">
						<div class="thetag details-info">

							<ul>

								<span class="tags_sanpham"><a href="/collections/all/vang">Vàng</a></span>

								<span class="tags_sanpham"><a href="/collections/all/den">Đen</a></span>

							</ul>

						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<?php if ($lienquan):?>
	<div class="row hidden-xs-down">
		<section class="upsell-pro">
			<div class="container">
				<div class="slider-items-products">
					<div class="new_title center">
						<h2>Sản phẩm liên quan</h2>
					</div>

					<div class="product-flexslider hidden-buttons">
						<div id="upsell-products-slider" class="slider-items slider-width-col4 owl-carousel owl-theme" style="opacity: 1; display: block;">
							
								<?php foreach ($lienquan as $value):?>
									<div class="item">
										<div class="box-product">
											<div class="product-box-upsell">
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
									</div>
								<?php endforeach;?>
									
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<?php endif;?>


</div>
</div>
</section>