<?php $this->beginContent('/layouts/main'); ?>
<div class="breadcrumb">
		<div class="breadcrumb_inset">
			<a class="breadcrumb-home" href="<?php echo app()->baseUrl;?>/" title="Return to Home"><i class="icon-home"></i></a>
			
			<?php
                if($this->breadcrumbs)
                {
                    foreach ($this->breadcrumbs as $key => $value)
                    {
                    	if($key != '')
                    	{
            ?>
            		<span class="navigation-pipe ">&gt;</span>
                    <span class="navigation_page ">
                        <?php echo $value ? '<a href="'.$value.'">'.$key.'</a>' : $key?>
                    </span>
            <?php   
                    	}         
                    }
                }
            ?>
		</div>
	</div>
<div class="row">
	
	<div class="loader_page">
		<div id="center_column" class="center_column span9 clearfix">
			<?php echo $content; ?>
		</div>
		<aside id="right_column" class="span3 column right_home">
			<?php
				$tag = $this->getTag();
				if($tag):
			?>
			<section id="new-products_block_right" class="block products_block column_box tag">
				<?php foreach($tag as $v):?>
					<a href="<?php app()->baseUrl;?>/tag/<?php echo $v->alias?>.html"><?php echo $v->name;?></a>
				<?php endforeach;?>
			</section>		
			<?php endif;?>	

			<?php
				$product = $this->getProduct();
				if($product):
			?>
			<!-- MODULE Block new products -->
			<section id="new-products_block_right" class="block products_block column_box">
				<h4 class="title_block"><span>Sản phẩm mới</span> <i class="column_icon_toggle icon-plus-sign"></i></h4>
				<div class="block_content toggle_content">
						<ul class="products">
							<?php foreach($product as $v):?>
					        <li class="shop_box clearfix first_item">
			                	<a class="products_block_img" href="<?php app()->baseUrl;?>/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html"
			                	 title="<?php echo $v->name?>"><img src="<?php echo app()->baseUrl; ?>/uploads/<?php echo $v->image?>" alt="<?php echo $v->name?>" /></a>
				                <div >
				            	<h5 class="s_title_block">
									<a class="product_link" href="<?php app()->baseUrl;?>/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html"
									 title="<?php echo $v->name?>"><?php echo $v->name?></a>
				            	</h5>
								<p class="product_desc"><?php echo cutStr($v->description, 80)?></p>
				            	</div>
				            </li>
				       		<?php endforeach;?>
						</ul>
					
					</div>
			</section>
<!-- /MODULE Block new products -->
			<?php endif;?>
		</aside>
	</div>
</div>

<?php $this->endContent(); ?>
