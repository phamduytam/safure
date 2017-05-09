<div class="news_post_loop">
	<div class="news_post_loop_img">
		<a href="<?php echo url('/tin-tuc/chi-tiet/' . $data->id . '/' . $data->alias.'.html')?>">

			<img src="<?php echo app()->baseUrl?>/uploads/<?php echo $data->image?>" alt="<?php echo $data->name?>">

		</a>
	</div>
	<div class="news_post_loop_title">
		<h3><a href="<?php echo url('/tin-tuc/chi-tiet/' . $data->id . '/' . $data->alias.'.html')?>" title="<?php echo $data->name?>"><?php echo $data->name?></a></h3>
	</div>
	<div class="news_post_loop_info">
		<p class="cl_old">
			<span><?php echo $data->created?></span>
		</p>
	</div>
	<div class="news_post_loop_content cl_old">
		<?php echo cutStr(html_entity_decode($data->description, ENT_QUOTES, 'UTF-8'), 240)?>
	</div>
	<div class="news_post_loop_more">
		<button class="btn_viewmore" onclick="location.href='<?php echo url('/tin-tuc/chi-tiet/' . $data->id . '/' . $data->alias.'.html')?>'">Đọc thêm <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
		</button>
	</div>
</div>