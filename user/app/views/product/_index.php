<div class="col-lg-3 col-md-4 col-sm-4 col-xs-6 loop-grid collection_product_item_loop">
	<div class="col-item product-loop-grid product_loop_gird_number">
		<div class="item-inner">
			<div class="product-box product-mini product_collection_grid">
				<h3 class="product-name"><a href="<?php app()->baseUrl;?>/chi-tiet/<?php echo $data->id?>/<?php echo $data->alias?>.html" title="<?php echo $data->name?>"><?php echo $data->name?></a></h3>

				<div class="product-thumbnail">
					<a href="<?php app()->baseUrl;?>/chi-tiet/<?php echo $data->id?>/<?php echo $data->alias?>.html" title="<?php echo $data->name?>">

						<img src="<?php echo app()->baseUrl; ?>/uploads/<?php echo $data->image?>" alt="<?php echo $data->name?>" style="padding-top: 5px;">

					</a>
				</div>
				<div class="item-content">
					<div class="item-price">         
						<div class="price-box">
							<p class="special-price"> <span class="price"><?php echo $data->price?></span></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>