<?php
namespace App;

abstract class Controller 
{
    protected $view;

    public function __construct()
    {
        $template_engine = '\\App\TemplateEngine\\' . \App\Config::instance()->settings->template_engine;
        $this->view = new $template_engine();
    }

    public function action($action)
    {
        $methodName = 'action' . $action;
        $this->beforeAction();
        return $this->$methodName();
    }

    public static function existsAction($action)
    {
        $methodName = 'action' . $action;
        return method_exists(static::class, $methodName);
    }
}