<?php

namespace App;


class Auth
{
    const ALGORITM=PASSWORD_DEFAULT;

    public static function hash($password)
    {
        return password_hash($password , self::ALGORITM);
    }

    public static function verify($password, $hash)
    {
        return password_verify($password, $hash);
    }


}