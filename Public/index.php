<?php
header('Content-Type: text/html; charset=utf-8');

/*
 * загружаем профиль
 */
if (file_exists(__DIR__ . '/../profile.php')){
    define('PROFILE', require __DIR__ . '/../profile.php');
} else {
    define('PROFILE', 'default');
}

require __DIR__ . '/../autoload.php';

try {
	$route = \App\Router::parseUrl($_SERVER['REQUEST_URI']);
} catch (\App\Exceptions\RouteException $e){
	echo "Ошибка роутинга - " . $e->getMessage();
}

$controller = new $route->controller;
$controller->action($route->action);
