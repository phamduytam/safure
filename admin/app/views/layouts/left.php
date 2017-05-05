<section class="sidebar purplebg">
<div class="page-sidebar  sidebar-nav">
	<div class="nav_icons">
		<ul class="sidebar_threeicons">
			<li><a href="<?php echo app()->baseUrl;?>"> <i class="livicon"
					data-name="hammer" title="Form Builder 1" data-loop="true"
					data-color="#42aaca" data-hc="#42aaca" data-s="25"></i> </a></li>
			<li><a href="<?php echo app()->baseUrl;?>/category1"> <i class="livicon"
					data-name="list-ul" title="Form Builder 2" data-loop="true"
					data-color="#e9573f" data-hc="#e9573f" data-s="25"></i> </a></li>
			<li><a href="<?php echo app()->baseUrl;?>/product"> <i class="livicon"
					data-name="vector-square" title="Button Builder" data-loop="true"
					data-color="#f6bb42" data-hc="#f6bb42" data-s="25"></i> </a></li>
			<li><a href="<?php echo app()->baseUrl;?>/tintuc"> <i class="livicon"
					data-name="new-window" title="Form Builder 1" data-loop="true"
					data-color="#37bc9b" data-hc="#37bc9b" data-s="25"></i> </a></li>
		</ul>
	</div>
	<div class="clearfix"></div>
	<!-- BEGIN SIDEBAR MENU -->
	<ul id="menu" class="page-sidebar-menu">
		<li <?php echo $this->id == 'site' ? 'class="active"' : ''?>><a href="<?php echo app()->baseUrl;?>"> <i class="livicon"
				data-name="home" data-size="18" data-c="#418BCA" data-hc="#418BCA"
				data-loop="true"></i> <span class="title">Dashboard</span> </a></li>
		<li <?php echo $this->id == 'category1' ? 'class="active"' : ''?>><a href="<?php echo app()->baseUrl;?>/category1"> <i class="livicon" data-name="list-ul" data-size="18"
				data-c="#EF6F6C" data-hc="#EF6F6C" data-loop="true"></i> <span
				class="title">Danh mục sản phẩm</span> <span class="fa arrow"></span> </a>
				<ul class="sub-menu">
					<li >
						<a href="<?php echo app()->baseUrl;?>/category1/sub1">
							<i class="fa fa-angle-double-right"></i>
							Danh mục cấp 1
						</a>
					</li>
					<li >
						<a href="<?php echo app()->baseUrl;?>/category1/sub2">
							<i class="fa fa-angle-double-right"></i>
							Danh mục cấp 2
						</a>
					</li>
				</ul>
			</li>
		<li <?php echo ($this->id == 'menu1' || $this->id == 'menu2')  ? 'class="active"' : ''?>><a href=""> <i class="livicon" data-name="list-ul" data-size="18"
				data-c="#F89A14" data-hc="#F89A14" data-loop="true"></i> <span
				class="title">Menu</span> <span class="fa arrow"></span> </a>
			<ul class="sub-menu">
					<li >
						<a href="<?php echo app()->baseUrl;?>/menu1">
							<i class="fa fa-angle-double-right"></i>
							Menu cấp 1
						</a>
					</li>
					<li >
						<a href="<?php echo app()->baseUrl;?>/menu2">
							<i class="fa fa-angle-double-right"></i>
							Menu cấp 2
						</a>
					</li>
			</ul>
		</li>	
		<li <?php echo $this->id == 'product' ? 'class="active"' : ''?>><a href="<?php echo app()->baseUrl;?>/product"> <i class="livicon" data-name="image" data-size="18"
				data-c="#6CC66C" data-hc="#6CC66C" data-loop="true"></i> <span
				class="title">Sản phẩm</span> <span class="fa arrow"></span> </a>
			</li>
		<li <?php echo $this->id == 'contact' ? 'class="active"' : ''?>><a href="<?php echo app()->baseUrl;?>/contact"> <i class="livicon" data-name="mail"
				data-c="#67C5DF" data-hc="#67C5DF" data-size="18" data-loop="true"></i>
				<span class="title">Liên hệ</span> <span class="fa arrow"></span> </a>
			</li>
		<li <?php echo $this->id == 'static' ? 'class="active"' : ''?>><a href="<?php echo app()->baseUrl;?>/static"> <i class="livicon" data-name="flag" data-c="#F89A14"
				data-hc="#F89A14" data-size="18" data-loop="true"></i> <span
				class="title">Trang đơn</span> <span class="fa arrow"></span> </a>
			</li>
		<li <?php echo $this->id == 'tintuc' ? 'class="active"' : ''?>><a href="<?php echo app()->baseUrl;?>/tintuc"> <i class="livicon" data-name="move" data-c="#EF6F6C"
				data-hc="#EF6F6C" data-size="18" data-loop="true"></i> <span
				class="title">Tin Tức</span> <span class="fa arrow"></span> </a>
			</li>
		<li <?php echo $this->id == 'khachhang' ? 'class="active"' : ''?>><a href="<?php echo app()->baseUrl;?>/khachhang"> <i class="livicon" data-name="user" data-c="#6CC66C"
				data-hc="#6CC66C" data-size="18" data-loop="true"></i> <span
				class="title">Khách hàng</span> <span class="fa arrow"></span> </a>
			</li>
		<li <?php echo $this->id == 'tag' ? 'class="active"' : ''?>><a href="<?php echo app()->baseUrl;?>/tag"> <i class="livicon" data-name="user" data-c="#F89A14"
				data-hc="#F89A14" data-size="18" data-loop="true"></i> <span
				class="title">Tags</span> <span class="fa arrow"></span> </a>
			</li>	
		<li <?php echo $this->id == 'advertise' ? 'class="active"' : ''?>><a href="<?php echo app()->baseUrl;?>/advertise"> <i class="livicon" data-name="image" data-c="#418BCA"
				data-hc="#418BCA" data-size="18" data-loop="true"></i> <span
				class="title">Banner</span> <span class="fa arrow"></span> </a>
			</li>

	</ul>
	<!-- END SIDEBAR MENU -->
</div>
</section>
