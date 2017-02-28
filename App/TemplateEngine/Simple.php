<?php

namespace App\TemplateEngine;

use \App\Config;
use \App\Traits\GetterSetter;

class Simple
    extends \App\TemplateEngine
{

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

}