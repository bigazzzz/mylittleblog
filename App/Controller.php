<?php
namespace App;

abstract class Controller 
{
    protected $view;

    public function __construct()
    {
        $template_engine = '\\App\TemplateEngine\\' . \App\Config::instance()->template_engine;
        $this->view = new $template_engine();
    }

    public function action($action, $args = NULL, $post = NULL)
    {
        $methodName = 'action' . $action;
        $this->beforeAction();
        return $this->$methodName($args,$post);
    }

    public static function existsAction($action)
    {
        $methodName = 'action' . $action;
        return method_exists(static::class, $methodName);
    }
}