<?php
$this->keyword = $product->name .', '. convertKeyword($product->name);
$this->description = $product->description;
$this->layout = 'standard';
?>

<h1 class="title"><?php echo $this->pageTitle?></h1>

<div style="background: #f8f8f8; padding: 10px 5px;"><?php echo $product->content?></div>

<?php if($ortherList):?>

	<div class="headline"><h3>Bài viết khác</h3></div>
	<ul class="fill-circle">
		<?php foreach ($ortherList as $value):?>
		<li><a href="<?php echo app()->baseUrl?>/chi-tiet/<?php echo $value->id?>/ <?php echo $value->alias;?>"><?php echo $value->name?></a></li>
		<?php endforeach;?>
	</ul>

<?php endif;?>