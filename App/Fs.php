<?php
namespace App;

class Fs
{
    public static function findFiles($mask = "*.*")
    {
        return glob($mask, GLOB_BRACE);
    }

    public static function findDir($mask = "*.*")
    {
        return glob($mask, GLOB_BRACE | GLOB_ONLYDIR);
    }
}
