<?php
//echo $_GET['url'];exit;
/*
$protocol = stripos($_SERVER['SERVER_PROTOCOL'],'https') === true ? 'https://' : 'http://';
if($protocol=='http://'){
die(header('location: https://recruit.prisonsportal.com.ng/recruit'));
}else{
*/
ob_start();
ini_set('display_errors', 1);

// Use an autoloader!
require 'libs/Bootstrap.php';
require 'libs/Controller.php';
require 'libs/Model.php';
require 'libs/View.php';

// Library
require 'libs/mysqliz.php';
require 'libs/Database.php';
require 'libs/Session.php';

require 'config/paths.php';
require 'config/database.php';

$app = new Bootstrap();
//}

