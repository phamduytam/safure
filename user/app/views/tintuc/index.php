<div id="content" class="products_block">
	<div style="overflow: hidden">
			<ul class="breadcrumb col-md-6">
				<li><a href="<?php echo app()->baseUrl;?>/">Trang chủ</a></li>
				<li>Tin tức</li>
			</ul>

	</div>
	<h3 class="title">Tin tức</h3>
	<ul>
				<?php
					$listView = $this->widget('zii.widgets.CListView', array(
						'dataProvider'=>$content,
						'summaryText'=>'',
						'itemView'=>'_index',
						'template'=>"{items}",
					));
				?>
	</ul>

		<?php
		$pagerCssClass	=	'pagination';
		$pager			=	array(
									'class'=>'TbPager',
									'prevPageLabel'=>'Prev',
									'maxButtonCount'=>5,
									'nextPageLabel'=>'Next',
									'htmlOptions' => array('class' => 'pagination'),
									'header' => false,
								);
		$listView->pagerCssClass = $pagerCssClass;
		$listView->pager = $pager;
		$listView->renderPager();
		?>

</div>