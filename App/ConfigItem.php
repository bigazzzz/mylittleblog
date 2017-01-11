<?php

namespace App;


class ConfigItem
{

    public $count=0;
    public function __construct($data)
    {
        $this->data = $data;
    }

    public function __get($k)
    {
        if (is_array($this->data[$k])){
            return new ConfigItem($this->data[$k]);
        } else {
            return $this->data[$k];
        }
    }

}