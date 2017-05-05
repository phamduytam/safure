<?php

$setting = getSetting();
require_once(__DIR__ . '/global_functions.php');


Yii::setPathOfAlias('bootstrap', dirname(__DIR__) . '/extensions/bootstrap');

$enableCsrfValidation = preg_match('@/api/@' , getenv('REQUEST_URI'))?false:true;


return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>$setting['app_name'],
	'language'=>'en',
	'runtimePath'=> dirname(BASE_DIR) . '/runtime_admin',

	// preloading 'log' component
	'preload'=>array('log'),

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',
		'ext.bootstrap.components.*',
		'ext.bootstrap.widgets.*',
		'ext.bootstrap.widgets.input.*',
	),

	'modules'=>array(
	),

	// application components
	'components'=>array(
		'request'=>array(
			'enableCsrfValidation'=>$enableCsrfValidation,
			'enableCookieValidation'=>true,
		),

		'session'=>$setting['session'],

		'urlManager'=>array(
			'showScriptName'=>false,
			'urlFormat'=>'path',
			'rules'=>array(
				
				'tu-van'=>'tuvan',
				'lien-he' => 'contact',
				'lien-he.html' => 'contact',
				'tin-tuc' => 'tintuc',
				'tin-tuc.html' => 'tintuc',
				'tin-tuc/chi-tiet/<id:\w+>/<alias:[\s\S]+>' => 'tintuc/detail',
				'khach-hang' => 'khachhang',
				'khach-hang.html' => 'khachhang',
				'khach-hang/chi-tiet/<id:\w+>/<alias:[\s\S]+>' => 'khachhang/detail',
				'dich-vu' => 'dichvu',
				'san-pham.html' => 'product',
				'san-pham' => 'product',
				'chi-tiet/<id:\w+>/<alias:[\s\S]+>' => 'product/detail',
				'tu-van/detail/<id:\w+>/<alias:[\s\S]+>' => 'tuvan/detail',
				'dich-vu/detail/<id:\w+>/<alias:[\s\S]+>' => 'dichvu/detail',
				'san-pham/<alias:[\s\S]+>/<alias1:[\s\S]+>' => 'product/category',
				'san-pham/<alias:[\s\S]+>' => 'product/category',
				'tag/<alias:[\s\S]+>' => 'tag/index',
				'^([^/\.]+).html' => 'static/index',
				'api/<controller:\w+>/<action:\w+>'=>'api_<controller>/<action>',
				'<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
				'<controller:\w+>/<action:\w+>/<id:\d+>/<alias:\w+>'=>'<controller>/<action>',
				'<controller:\w+>/<action:\w+>'=>'<controller>/<action>',

			),
		),

		'db'=>$setting['db_master'],
		'db_slave'=>$setting['db_slave'],

		'errorHandler'=>array(
			'errorAction'=>'site/error',
		),
		'log'=>$setting['log'],

		'coreMessages'=>array (
			'class' => 'CPhpMessageSource',
			'language' => 'en_us',
			'basePath'=> dirname(__DIR__ ) . '/messages',
		),
		'user'=>array (
			'class' => 'MallAdminUser',
		),
		'bootstrap'=>array (
			'class' => 'bootstrap.components.Bootstrap',
		),
	),

	// application-level parameters that can be accessed
	// using Yii::app()->params['paramName']
	'params'=> $setting,
);