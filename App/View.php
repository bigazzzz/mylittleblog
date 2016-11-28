<?php
namespace App;
class View
    implements \Countable
{

	use GetterSetter;

    public function __construct()
    {
        $this->title = Config::instance()->SITE_NAME;
        $this->main_page = Config::instance()->dir;
    }

    public function render($template)
    {
        ob_start();
        foreach ($this->data as $prop => $value) {
            $$prop = $value;
        }
        include $template;
        $content = ob_get_contents();
        ob_end_clean();
        return $content;
    }
    public function display($template)
    {
        echo $this->render($template);
    }

}