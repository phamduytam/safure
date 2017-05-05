<?php
$this->keyword = $product->name .', '. convertKeyword($product->name);
$this->description = $product->description;
$this->layout = 'standard';
?>

<h1 class="title"><?php echo $this->pageTitle?></h1>

<div style="background: #f8f8f8; padding: 10px 5px;"><?php echo $product->content?></div>


<?php if($tag_pro):?>
<div class="tag">
<span>Tags: </span>
	<?php foreach($tag_pro as $v):?>
		<a href="<?php app()->baseUrl;?>/tag/<?php echo $v->alias?>.html"><?php echo $v->name;?></a>
	<?php endforeach;?>
</div>
<?php endif;?>	

<?php if($lienquan):?>
<h3>Sản phẩm liên quan</h3>
<ul id="product_list" class="grid row">
<?php foreach ($lienquan as $data):?>
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
<?php endforeach;?>
</ul>
<?php endif;?>

<?php if($ortherList):?>

	<div class="headline"><h3>Bài viết khác</h3></div>
	<ul class="fill-circle">
		<?php foreach ($ortherList as $value):?>
		<li><a href="<?php echo app()->baseUrl?>/chi-tiet/<?php echo $value->id?>/ <?php echo $value->alias;?>"><?php echo $value->name?></a></li>
		<?php endforeach;?>
	</ul>

<?php endif;?>