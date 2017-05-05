<?php if($advertise):?>
<div class="slider-wrapper theme-default">
	<div class="slider nivoSlider" id="slider">
	<?php foreach ($advertise as $value):?>
		<img alt="" src="<?php echo app()->baseUrl?>/uploads/<?php echo $value->image?>" width="auto">
	<?php endforeach;?>
	</div>
</div>
<?php endif;?>
<?php if($product):?>
<div class="container">
<div class="col-lg-12">

	<ul class="portfolio-items">
		<?php foreach ($product as $value):?>
		<li class="item term-1">

			<div class="portfolio-item">

				<div class="portfolio-item-preview">
					<a href="<?php echo url('/hoa-mai/detail/' . $value->id . '/' . $value->alias)?>"> <img src="<?php echo app()->baseUrl?>/uploads/<?php echo $value->image?>" class="img_product" alt="<?php echo $value->name?>"> </a>
					<a href="<?php echo url('/hoa-mai/detail/' . $value->id . '/' . $value->alias)?>"><div class="portfolio-item-overlay"></div></a>
				</div>

				<div class="portfolio-item-description">
					<h4><a href="<?php echo url('/hoa-mai/detail/' . $value->id . '/' . $value->alias)?>"><?php echo $value->name?></a></h4>
					<div class="description"><?php echo $value->description;?></div>
				</div>
			</div>
		</li>
		<?php endforeach;?>
</ul>


</div>
</div>
<?php endif;?>
<link href="<?php echo app()->baseUrl;?>/css/default.css" rel="stylesheet">
<link href="<?php echo app()->baseUrl;?>/css/nivo-slider.css" rel="stylesheet">
<script type="text/javascript" src="<?php echo app()->baseUrl;?>/js/jquery.nivo.slider.js"></script>
<script type="text/javascript">
	$(window).load(function() {
		$('#slider').nivoSlider({
			controlNav: false,
			effect: 'random',
			animSpeed: 1500,
		});
	});
</script>
