<div id="content" class="products_block">
	<h3 class="title">Khách hàng</h3>
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