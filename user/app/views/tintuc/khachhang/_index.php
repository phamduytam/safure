
<li class="clearfix shop_box">
	<a class="span2" style="margin-left: 0px;" href="<?php echo url('/khach-hang/chi-tiet/' . $data->id . '/' . $data->alias.'.html')?>"
	 title="<?php echo $data->name?>"><img src="<?php echo app()->baseUrl?>/uploads/<?php echo $data->image?>" alt="<?php echo $data->name?>"></a>
	<div class="span10">
		<h5><a class="product_link" href="<?php echo url('/khach-hang/chi-tiet/' . $data->id . '/' . $data->alias.'.html')?>"
		 title="<?php echo $data->name?>"><?php echo $data->name?></a></h5>
		<p class="product_descr"><?php echo cutStr(html_entity_decode($data->description, ENT_QUOTES, 'UTF-8'), 100)?></p>
	</div>
</li>
													