<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>
       <?php echo $this->pageTitle; ?>
        
    </title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
    <link href="<?php echo app()->baseUrl;?>/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="<?php echo app()->baseUrl;?>/assets/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo app()->baseUrl;?>/assets/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link rel="stylesheet" href="<?php echo app()->baseUrl;?>/assets/css/panel.css" />
    <link rel="stylesheet" href="<?php echo app()->baseUrl;?>/assets/css/metisMenu.css" />
    
    <!-- end of global css -->
    <!--page level css-->
    <!--page level css -->
<link href="<?php echo app()->baseUrl;?>/assets/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
<link href="<?php echo app()->baseUrl;?>/assets/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" media="all" href="<?php echo app()->baseUrl;?>/assets/vendors/jvectormap/jquery-jvectormap.css" />
<link rel="stylesheet" href="<?php echo app()->baseUrl;?>/assets/vendors/animate/animate.min.css">
<?php if($this->id == 'site'):?><link rel="stylesheet" href="<?php echo app()->baseUrl;?>/assets/css/only_dashboard.css" /><?php endif;?>
    <script src="<?php echo app()->baseUrl;?>/assets/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="<?php echo app()->baseUrl;?>/js/ckeditor/ckeditor.js" type="text/javascript"></script>
    <script src="<?php echo app()->baseUrl;?>/js/ckfinder/ckfinder.js" type="text/javascript"></script>

<!--end of page level css-->
    <!--end of page level css-->
</head>

<body class="skin-josh">
    <header class="header">
        <a href="<?php echo app()->baseUrl;?>" class="logo">
            <img src="<?php echo app()->baseUrl;?>/assets/img/logo.png" alt="logo">
        </a>
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <div>
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <div class="responsive_nav"></div>
                </a>
            </div>
            <div class="navbar-right">
                <ul class="nav navbar-nav">
                    <li class="dropdown messages-menu">
                        <?php
                            $message = ContactAR::model()->messageUnRead();
                            $count = ContactAR::model()->countAllUnRead();
                        ?>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="livicon" data-name="message-flag" data-loop="true" data-color="#42aaca" data-hovercolor="#42aaca" data-size="28"></i>
                            <?php echo $count > 0 ? '<span class="label label-success">'.$count.'</span>' : '';?>
                        </a>
                        
                        <?php if($count > 0):?>
                        <ul class="dropdown-menu dropdown-messages pull-right">
                            <li class="dropdown-title"><?php echo $count;?> New Messages</li>
                            <?php foreach ($message as $value):?>
                            <li class="unread message">
                                <a href="javascript:;" class="message"> <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read"><span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span></i> 
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body">
                                        <strong><?php echo $value->name;?></strong>
                                        <br><?php echo substr($value->content, 0, 40);?>
                                        <br>
                                        <small>8 minutes ago</small>
                                    </div>
                                </a>
                            </li>
                            <?php endforeach;?>
                            <li class="footer">
                                <a href="<?php echo app()->baseUrl?>/contact">View all</a>
                            </li>
                        </ul>
                        <?php endif;?>
                    </li>
                    
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img data-src="holder.js/35x35/#fff:#000" width="35" class="img-circle img-responsive pull-left" height="35" alt="riot">
                            <div class="riot">
                                <div>
                                    <?php echo !user()->isGuest ? user()->name : ''?>
                                    <span>
                                        <i class="caret"></i>
                                    </span>
                                </div>
                            </div>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header bg-light-blue">
                                <img data-src="<?php echo app()->baseUrl?>/holder.js/90x90/#fff:#000" class="img-responsive img-circle" alt="User Image">
                                <p class="topprofiletext"><?php echo !user()->isGuest ? user()->name : ''?></p>
                            </li>
                            <!-- Menu Body -->
                            <li>
                                <a href="<?php echo app()->baseUrl?>/profile">
                                    <i class="livicon" data-name="user" data-s="18"></i>
                                    My Profile
                                </a>
                            </li>
                            <li role="presentation"></li>
                            <li>
                                <a href="<?php echo app()->baseUrl?>/changePassword">
                                    <i class="livicon" data-name="gears" data-s="18"></i>
                                    Change password
                                </a>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#">
                                        <i class="livicon" data-name="lock" data-s="18"></i>
                                        Lock
                                    </a>
                                </div>
                                <div class="pull-right">
                                    <a href="<?php echo sslUrl('/logout');?>">
                                        <i class="livicon" data-name="sign-out" data-s="18"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="left-side sidebar-offcanvas">
            <?php echo $this->renderPartial("//layouts/left");?>
        </aside>
        <aside class="right-side">

            <!-- Notifications -->
                        
            <!-- Content -->
            <section class="content-header">
                <h1><?php echo $this->pageTitle?></h1>
                <ol class="breadcrumb">
                    <li class="">
                        <a href="<?php echo app()->baseUrl?>/"> <i class="livicon" data-name="home" data-size="14" data-color="#333" data-hovercolor="#333"></i>
                            Dashboard
                        </a>
                    </li>
                    <?php
                        if($this->breadcrumb) {
                            foreach ($this->breadcrumb as $key => $value) {
                    ?>
                    <li <?php echo !$value ? 'class="active"' : ''?>>
                        <a <?php echo $value ? 'href="'.$value.'"' : ''?>>
                            <?php echo $key?>
                        </a>
                    </li>
                    <?php            
                            }
                        }
                    ?>
                </ol>
            </section>
            <section class="content container">
                <?php echo $content?>
            </section>
        </aside>
        <!-- right-side -->
    </div>
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    <!-- global js -->
    
        <script src="<?php echo app()->baseUrl;?>/assets/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- ckeditor-->
    <script src="<?php echo app()->baseUrl;?>/js/ckeditor/ckeditor.js" type="text/javascript"></script>
    <script src="<?php echo app()->baseUrl;?>/js/ckfinder/ckfinder.js" type="text/javascript"></script>
    <!--livicons-->
    <script src="<?php echo app()->baseUrl;?>/assets/vendors/livicons/minified/raphael-min.js"></script>
    <script src="<?php echo app()->baseUrl;?>/assets/vendors/livicons/minified/livicons-1.4.min.js"></script>
    <script src="<?php echo app()->baseUrl;?>/assets/js/josh.js" type="text/javascript"></script>
    <script src="<?php echo app()->baseUrl;?>/assets/js/metisMenu.js" type="text/javascript"></script>
    <script src="<?php echo app()->baseUrl;?>/assets/vendors/holder-master/holder.js"></script>
    <!-- end of global js -->
    <!-- begin page level js -->
    <!--  todolist-->
    <script src="<?php echo app()->baseUrl;?>/assets/js/todolist.js"></script>
    <!-- EASY PIE CHART JS -->
    <script src="<?php echo app()->baseUrl;?>/assets/vendors/charts/easypiechart.min.js"></script>
    <script src="<?php echo app()->baseUrl;?>/assets/vendors/charts/jquery.easypiechart.min.js"></script>
    <!--for calendar-->
    <script src="<?php echo app()->baseUrl;?>/assets/vendors/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
    <script src="<?php echo app()->baseUrl;?>/assets/vendors/fullcalendar/calendarcustom.min.js" type="text/javascript"></script>
    <!--   Realtime Server Load  -->
    <script src="<?php echo app()->baseUrl;?>/assets/vendors/charts/jquery.flot.min.js" type="text/javascript"></script>
    <script src="<?php echo app()->baseUrl;?>/assets/vendors/charts/jquery.flot.resize.min.js" type="text/javascript"></script>
    <!--Sparkline Chart-->
    <script src="<?php echo app()->baseUrl;?>/assets/vendors/charts/jquery.sparkline.js"></script>
    <script type="text/javascript" src="<?php echo app()->baseUrl;?>/assets/vendors/countUp/countUp.js"></script>
    <!--   maps -->
    <script src="<?php echo app()->baseUrl;?>/assets/vendors/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="<?php echo app()->baseUrl;?>/assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="<?php echo app()->baseUrl;?>/assets/js/dashboard.js" type="text/javascript"></script>


<!-- end of page level js -->
<script type="text/javascript">
$(document).ready(function() {
    var composeHeight = $('#calendar').height() + 21 - $('.adds').height();
    $('.list_of_items').slimScroll({
        color: '#A9B6BC',
        height: composeHeight + 'px',
        size: '5px'
    });
});

</body>
</html>