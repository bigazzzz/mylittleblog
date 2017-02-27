<?php

namespace App\TemplateEngine;

use \App\Config;
use \App\GetterSetter;

class Simple
    implements \Countable
{

    use GetterSetter;

    public function __construct()
    {
        $this->main_page = Config::instance()->dir;
    }

    public function render($template)
    {
        ob_start();
        foreach ($this->data as $prop => $value) {
            $$prop = $value;
        }
        include __DIR__ . '/../Views/Simple/' . $template . '.php';
        $content = ob_get_contents();
        ob_end_clean();
        return $content;
    }

    public function display($template)
    {
        echo $this->render($template);
    }

}