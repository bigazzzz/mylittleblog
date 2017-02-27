<?php
header('Content-Type: text/html; charset=utf-8');
require __DIR__ . '/../autoload.php';

try {
	$route = \App\Router::parseUrl($_SERVER['REQUEST_URI']);
} catch (\App\Exceptions\RouteException $e){
	echo "Ошибка роутинга - " . $e->getMessage();
}

$controller = new $route->controller;
$controller->action($route->action);
