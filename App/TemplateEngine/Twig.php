<?php

namespace App\TemplateEngine;

use \App\Config;

class Twig
    extends \App\TemplateEngine
{

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
        $this->twig->getExtension('Twig_Extension_Core')->setDateFormat(Config::instance()->twig->default_date_format);
    }

    public function render($template)
    {
        return $this->twig->render($template . '.html', $this->data);
    }

}