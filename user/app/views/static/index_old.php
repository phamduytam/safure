
<div id="content" class="main">
	
	<div class="col-md-9 content-box" style="background: #f8f8f8; padding: 10px 5px;">
		<h1 class="title"><?php echo $tintuc->name?></h1>

		<?php echo $tintuc->content?>

		
	</div>
	
	
</div>

<?php if($banghe):?>
	<div style="background: #F1F1F1; padding: 10px;"></div>
	<div class="col-md-9 content-box" style="background: #f8f8f8; padding: 10px 0px;">
		<h3 style="padding-left: 5px;">Bàn ghế Pallet</h3>
		<ul class="grid row" id="product_list">
					<?php foreach ($banghe as $v):?>
					<li class="ajax_block_product span3">
						<a class="product_image" href="<?php app()->baseUrl;?>/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html">
							<img src="<?php echo app()->baseUrl; ?>/uploads/<?php echo $v->image?>" alt="<?php echo $v->name?>" class="main-img" />
						</a>
						<div>
							<h5>
								<a class="product_link" href="<?php app()->baseUrl;?>/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html"
														title="<?php echo $v->name?>"><?php echo $v->name?></a>
								</h5>
								<p class="product_desc"><?php echo html_entity_decode(cutStr($v->description, 60), ENT_QUOTES, 'UTF-8')?></p>			
						</div>
					</li>
					<?php endforeach;?>
									
		</ul>	
	</div>
	<?php endif;?>