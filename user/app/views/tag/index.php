<h1><span><?php echo $title?></span></h1>
<ul id="product_list" class="grid row">
			<?php
				$listView = $this->widget('zii.widgets.CListView', array(
					'dataProvider'=>$content,
					'summaryText'=>'',
					'itemView'=>'_index',
					'template'=>"{items}",
				));
			?>
</ul>
<div class="row">

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