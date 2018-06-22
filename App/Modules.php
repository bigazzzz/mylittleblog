<?php

namespace App;

class Modules
{
    public static function list()
    {
        return \App\Fs::findDir(ROOT_DIR . \App\Config::instance()->dir->modules);
    }
}
