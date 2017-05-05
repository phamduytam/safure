<li class="ajax_block_product span3">
	<a class="product_image" href="<?php app()->baseUrl;?>/chi-tiet/<?php echo $data->id?>/<?php echo $data->alias?>.html">
		<img src="<?php echo app()->baseUrl; ?>/uploads/<?php echo $data->image?>" alt="<?php echo $data->name?>" class="main-img" />
	</a>
	<div>
		<h5>
			<a class="product_link" href="<?php app()->baseUrl;?>/chi-tiet/<?php echo $data->id?>/<?php echo $data->alias?>.html"
									title="<?php echo $data->name?>"><?php echo $data->name?></a>
			</h5>
			<p class="product_desc"><?php echo cutStr(html_entity_decode($data->description, ENT_QUOTES, 'UTF-8'), 50)?></p>			
	</div>
</li>