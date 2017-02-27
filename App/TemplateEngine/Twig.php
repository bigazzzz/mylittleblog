<?php

namespace App\TemplateEngine;

use \App\GetterSetter;
use \App\Config;

class Twig
{
    use GetterSetter;

    public function __construct()
    {
        $loader = new \Twig_Loader_Filesystem(Config::instance()->twig->template_dir);
        $this->twig = new \Twig_Environment($loader, [
            'cache' => Config::instance()->twig->cache_dir,
            'auto_reload' => true,
            'strict_variables' => true,
            'debug' => true,
        ]);
        $this->twig->addExtension(new \Twig_Extension_Debug());
    }

    public function render($template)
    {
        return $this->twig->render($template . '.html', $this->data);
    }

    public function display($template)
    {
        echo $this->render($template, $this->data);
    }

}