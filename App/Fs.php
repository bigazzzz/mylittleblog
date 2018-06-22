<?php
namespace App;

class Fs
{
    public static function findFiles($directory, $mask = "*.*")
    {
        return glob($directory . "/" . $mask, GLOB_BRACE);
    }

    public static function findDir($directory, $mask = "*")
    {
        return glob($directory . "/" . $mask, GLOB_BRACE | GLOB_ONLYDIR);
    }
}
