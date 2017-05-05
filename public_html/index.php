<?php

define('BASE_DIR', dirname(__DIR__) .'/user') ;
$yii = dirname(BASE_DIR) . '/framework/yii.php';
$env = BASE_DIR . '/app/config/env.php';
$config = BASE_DIR . '/app/config/main.php';

require_once($env);

require_once($yii);

Yii::createWebApplication($config)->run();