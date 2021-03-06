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
			<?php if ($content->totalItemCount > 0):?>
			<div class="col-lg-9 col-md-8 col-sm-12 col-xs-12 news_posts">
				<h2 class="fw_600">Tin tức - Blog</h2>
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 blog-posts">

					<?php
						$listView = $this->widget('zii.widgets.CListView', array(
							'dataProvider'=>$content,
							'summaryText'=>'',
							'itemView'=>'_index',
							'template'=>"{items}",
						));
					?>

				</div>

			</div>

			<div class="paginate-pages">
				<div class="pager">              
					<div class="pages">
						<?php
							$pagerCssClass	=	'';
							$pager			=	array(
														'class'=>'TbPager',
														'prevPageLabel'=>'«',
														'maxButtonCount'=>5,
														'nextPageLabel'=>'»',
														'htmlOptions' => array('class' => 'pagination'),
														'header' => false,
													);
							$listView->pagerCssClass = $pagerCssClass;
							$listView->pager = $pager;
							$listView->renderPager();
						?>
					</div>
					</div>
			</div>
			<?php else:?>
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 collection_container">
					Không có tin tức nào
				</div>
			<?php endif;?>
		</div>
	</div>
</section>