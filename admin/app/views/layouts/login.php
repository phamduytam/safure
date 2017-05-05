<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title><?php echo $this->pageTitle; ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- global level css -->
    <link href="<?php echo app()->baseUrl;?>/assets/css/bootstrap.min.css" rel="stylesheet" />
    <!-- end of global level css -->
    <!-- page level css -->
    <link rel="stylesheet" type="text/css" href="<?php echo app()->baseUrl;?>/assets/css/pages/login.css" />
    <!-- end of page level css -->

</head>

<body>
    <div class="container">
        <?php echo $content?> 
    </div>
    <!-- global js -->
    <script src="<?php echo app()->baseUrl;?>/assets/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <!-- Bootstrap -->
    <script src="<?php echo app()->baseUrl;?>/assets/js/bootstrap.min.js" type="text/javascript"></script>
    <!--livicons-->
    <script src="<?php echo app()->baseUrl;?>/assets/vendors/livicons/minified/raphael-min.js"></script>
    <script src="<?php echo app()->baseUrl;?>/assets/vendors/livicons/minified/livicons-1.4.min.js"></script>
    <!-- end of global js -->
</body>
</html>