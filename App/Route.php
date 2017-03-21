<?php
namespace App;

class Route 
{
	public $controller;
	public $action;
	public $args;

	function __construct($data)
	{
		$this->controller = $data['controller'];
		$this->action = $data['action'];
		$this->args = $data['args'];
	}

}