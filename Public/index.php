<?php
header('Content-Type: text/html; charset=utf-8');
define ('ROOT_DIR', __DIR__ . '/..');
/*
 * загружаем профиль
 */

if (file_exists(ROOT_DIR . '/Profiles/profile.php')){
    define('PROFILE', require ROOT_DIR . '/Profiles/profile.php');
} else {
    define('PROFILE', 'default');
}

require ROOT_DIR . '/autoload.php';

try {
	$route = \App\Router::parseUrl($_SERVER['REQUEST_URI']);
} catch (\App\Exceptions\RouteException $e){
	echo "Ошибка роутинга - " . $e->getMessage();
}

$controller = new $route->controller;
$controller->action($route->action);
