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
				'action' => $action
			]);
		}

	}
}