<section class="main-blog">
	<div class="container">

		<div class="row _collection">
			<aside id="collection_boloc" class="col-lg-3 col-md-12 sider_bar_col col-collection-best">
				<?php $banchay = $this->getBanchayList(12);?>
				<?php if($banchay):?>
					<div class="hidden-md-down product_select best_product block">
						<div class="block-title-best-product"><h5><a href="san-pham-mua-nhieu">Sản phẩm bán chạy</a></h5></div>
						<div class="list_best_product">

							<?php foreach ($banchay as $value):?>
								<div class="product-list-best-item">

									<a class="product-img" href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>" title="<?php echo $value->name?>">
										<img src="<?php echo app()->baseUrl?>/uploads/thumbs/<?php echo $value->image?>" alt="<?php echo $value->name?>"></a>

										<div class="product-info">
											<h3><a class="product-name-best" href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>" title="<?php echo $value->name?>"><?php echo $value->name?></a></h3>
											<div class="price-box"> 
												<p class="special-price"> <span class="price"><?php echo $value->price?></span></p>
											</div>
										</div>
									</div>
								<?php endforeach;?>
							</div>
						</div>
					<?php endif;?>

				</aside>
				<div class="col-lg-9 col-md-8 col-sm-12 col-xs-12 news_posts">
					<h2 class="fw_600">Tin tức - Blog</h2>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 blog-posts">
						<article class="news_post_loop">
							<div class="news_post_loop_img">
								
								<img src="<?php echo app()->baseUrl?>/uploads/<?php echo $tintuc->image?>" alt="">
								
							</div>
							<div class="news_post_loop_title">
								<h3><a href="javascript:void(0)" title="<?php echo $tintuc->name?>"><?php echo $tintuc->name?></a></h3>
							</div>
							<div class="news_post_loop_info">
								<p class="cl_old">
									<span><i><?php echo $tintuc->created?></i></span>
								</p>
							</div>
							<div class="blog_content cl_old">
								<?php echo $tintuc->content?>
							</div>
						</article>
					</div>

					<?php
						if($ortherList):
					?>
					<div class="col-lg-12 col-md-12 hidden-sm-down sidebar-blog hot-blog block">

						<div class="block-title-hot-blog"><h5>Tin liên quan</h5></div>

						<div class="list_hot_blog">
							<?php
							foreach ($ortherList as $v):
							?>
							<div class="blog-list-item col-lg-6 col-md-6">
								<a class="product-img" href="<?php echo app()->baseUrl;?>/tin-tuc/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html">

									<img src="<?php echo app()->baseUrl;?>/tin-tuc/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html" alt="<?php echo $v->name?>">


								</a>
								<p><span><i><?php echo $v->created?></i></span></p>
								<h3><a href="<?php echo app()->baseUrl;?>/tin-tuc/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html" title="<?php echo $v->name?>"><?php echo $v->name?></a></h3>
							</div>
							<?php endforeach;?>
						</div>

					</div>
					<?php endif;?>

				</div>
			</div>
		</div>
	</section>