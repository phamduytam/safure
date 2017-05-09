<?php

error_reporting(E_ALL);
define('YII_DEBUG',true);
define('YII_TRACE_LEVEL',3);
#ini_set('mbstring.internal_encoding' , 'UTF8');

define('_NOW' , strtotime('2013-12-26 ' . date("H:i:s")));
//if(!defined('_NOW') ) define('_NOW' , time());
define('USE_SSL' , false);

function getSetting(){

$setting = array();

$setting['app_name'] = 'Máy lọc nước sạch';
$setting['adminEmail'] = '';
$setting['enableMail'] = false;
$setting['enableDeviceCheck'] = false; //端末チェックを行う = true
$setting['enableDateFrom'] = true; //月額パック、コンテンツの開始日チェックを行う = true
$setting['enableDateTo'] = true; //月額パック、コンテンツの終了日チェックを行う = true

$setting['db_enable_slave'] = false;
$setting['db_master'] = array(
	'connectionString' => 'mysql:host=127.0.0.1;dbname=safure',//maylo846_db
	'emulatePrepare' => true,
	'username' => 'root',//maylo846_user
	'password' => '',//KPEG4983umkp
	'charset' => 'utf8',
	'enableProfiling' => true,    // SQL文
	'enableParamLogging' => true, // パラメータ表示に必要
);

$setting['db_slave'] = array(
	'class'=>'CDbConnection',
	'connectionString' => 'mysql:host=localhost;dbname=banhoamai',
	'emulatePrepare' => true,
	'username' => 'root',
	'password' => 'root',
	'charset' => 'utf8',
	'enableProfiling' => true,    // SQL文
	'enableParamLogging' => true, // パラメータ表示に必要
);


$setting['log']=array(
	'class'=>'CLogRouter',
	'routes'=>array(
		array('class'=>'CFileLogRoute','levels'=>'error,alert,warning,info,notice',),
//		array('class'=>'CProfileLogRoute',),
//		array('class'=>'CWebLogRoute',),
	),
);

$setting['session']=array(
	'class'=>'CDbHttpSession',
	'sessionTableName'=>'sessions_admin',
	'connectionID'=>'db',
	'timeout'=>3600,//second
	'gCProbability'=>10,//1～100
);

$setting['cache']=array(
	'categoryTop'=>array('duration' => 0),//単位：秒
	'special'=>array('enable' => true),
);

// Image path
$setting['imagePath'] = '/public_html/uploads/';
//アプリで共通で使う画像などのパス
$setting['shareLocal'] = '';
$setting['shareRemote'] = 'http://akspm2img.showtime.jp/ver0001';
//$setting['shareRemote'] = 'http://' . getenv('HTTP_HOST') . '/static/akamai/ver0001';

//特集テンプレートのパス
$setting['specialPath'] = $setting['shareRemote'] . '/special/stg';
//$setting['specialPath'] = 'http://' . getenv('HTTP_HOST') . '/static/akamai/ver0001/special/dev';

//開発者環境のスタブに接続する為の設定
$myhost = 'http://' . getenv('HTTP_HOST');
$stab_api_prefix = 'http://' . getenv('HTTP_HOST') . '/stub/au_kantan_kessai';
$au_api_prefix = 'https://st.connect.auone.jp';

$setting['au']=array(
	'enable' => true,
	'needed_discovery' => false,
	'discovery_url' => $stab_api_prefix . '/auth/discovery.php',
	'server_url' => $myhost,
	'server_path' => '/stub/au_kantan_kessai/auth/openid_auth.php',
	'login_url' => $stab_api_prefix . '/auth/openid_auth.php',
	'auth_api_url' => $stab_api_prefix . '/auth/openid_auth.php',
	'login_button_image' => $setting['shareRemote'] . '/images2/top/au_id_login.png',
	'login_button_image_mini' => $setting['shareRemote'] . '/images2/top/au_id_login.png',
	'settlement_url' => $stab_api_prefix . '/checkout_cy/myc_csodl_cycle_stepin_1.1_0.php',
	'cmn_param' => array(
		'memberId' => '50640',
		'serviceId' => '10003',
		'secureKey' => 'vOJ2TomzUsOwP3aGka1GZIZRs4F3oR74',
	),
	'cy' => array(
		'cancel_regist_url' => $au_api_prefix . '/sv/py/mpl_rt_api/cca',
		'bill_result_url' => $au_api_prefix . '/sv/mvw/mpl_rt_api_file/cca',
	)
);

// Configuration for each advertising
$setting['afl'] = array(
	'ADXXX002' => array(
		'ad_id' => 'dummyAdIdB02' ,
		//'cv_url' => "http://somehost/conversion.php?c=#ad_id#&a=#afid#&u=#cv_id#",
		'cv_url' => $stab_api_prefix . '/checkout_cy/myc_csodl_cycle_stepin_1.1_0.php?c=#ad_id#&a=#afid#&u=#cv_id#',
		'cv_type'=>'m',
		'cv_item_id'=>'D01MPM0001',
	),
);

// Configuration for android apk
$setting['apk'] = array(
	'version' => 4,
);

return $setting;
}


