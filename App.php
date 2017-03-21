<?php 

use App\Config;
use App\Traits\Singleton;

class App 
{
	use Singleton;

	public function run()
	{
		//$this->config = new Config();
		$this->routes = new Config('routes');
		var_dump($this->routes);die();
		try {
			$this->route = \App\Router::parseUrl($_SERVER['REQUEST_URI']);
		} catch (\App\Exceptions\RouteException $e){
			echo "Ошибка роутинга - " . $e->getMessage();
		}

		$controller = new $this->route->controller;
		$controller->action($this->route->action);

	}	

}
