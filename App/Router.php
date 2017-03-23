<?php

namespace App;

use \App\Exceptions;
use \App\Traits\Singleton;

class Router 
{
	use Singleton;

	public static function startPageController()
	{
		return '\\App\\Controllers\\Index';
	}
	public static function startPageAction()
	{
		return 'Index';
	}

	public static function get($url)
	{
		if (!self::getPattern($url)){
			throw new Exceptions\RouteException('Нет роута для такого url - ' . $url);
		};
		$routePattern = self::getPattern($url);
		$routePath = \App\Config::instance()->routes->$routePattern;
		$pattern = '#^' . preg_replace('#(<.+>)#iU','[^/]+', $routePattern) . '/*$#iU';
		preg_match_all($pattern, $routePattern, $matches);
		var_dump($matches);
		die();
		if (self::getActionFromUrl($url)){
			$pattern = "#^/(.+)/(.+)\((.+)\)*$#iU";
			preg_match($pattern, self::getActionFromUrl($url), $matches);
			$controller = $matches[1];
			$action = $matches[2];
			if (isset($matches[3])){
			}
			var_dump($matches);die();
		} else {
			die();
		}
	}

	private static function getPattern($url)
	{
		foreach (\App\Config::instance()->routes as $route => $action) {
			$pattern = '#^' . preg_replace('#(<.+>)#iU','[^/]+', $route) . '/*$#iU';
			if (preg_match($pattern, $url)){
				return $route;
			}
		};
		return false;
	}

	public static function parseUrl($url)
	{
		$path = trim(parse_url($url, PHP_URL_PATH), '/');
		parse_str(parse_url($url, PHP_URL_QUERY), $args);
		switch ($path) {
			case '':
            case 'index.php':
                    if (isset($args['ctrl'])) {
                        $controller = '\\App\\Controllers\\' . ucfirst($args['ctrl']);
                        unset($args['ctrl']);
                        if(isset($args['action'])){
                            $action = ucfirst($args['action']);
                            unset($args['action']);
                        } else {
                            $action = self::startPageAction();
                        }
                    } else {
                        $controller = self::startPageController();
                        $action = self::startPageAction();
                    }
                break;

			default:
				$path_array = explode('/',$path);
				foreach ($path_array as $k=>$v){
					$path_array[$k] = ucfirst($v);
				}
				$controller = '\\App\\Controllers\\' . array_shift($path_array);
                $action = array_shift($path_array);
                $args += $path_array;
		}

		if (!class_exists($controller)){
			throw new Exceptions\RouteException('Контроллер ' . $controller . ' не найден');
		} elseif (!$controller::existsAction($action)){
			throw new Exceptions\RouteException('В контроллере ' . $controller . ' не найден метод ' . $action);
		} else {
			return new Route([
				'controller' => $controller,
				'action' => $action,
				'args' => $args
			]);
		}

	}
}