
<div id="content" class="main">
	
	<div class="col-md-9 content-box" style="background: #f8f8f8; padding: 10px 5px;">
		<h1 class="title"><?php echo $tintuc->name?></h1>

		<?php echo $tintuc->content?>

		<div>
		<?php
			if($ortherList):
		?>
		<h3 class="title">Bài viết khác</h3>
		<ul class="toggle_content tree dhtml store_list" style="padding-left: 15px;">
			<?php
				foreach ($ortherList as $v):
			?>
			<li><a href="<?php echo app()->baseUrl;?>/tin-tuc/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html"><i class="icon-caret-right"></i><?php echo $v->name?></a>
			</li>
			<?php endforeach;?>
		</ul>
		<?php endif;?>
	</div>
	</div>
	
</div>