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

    public static function authenticate($login, $password)
    {
    	$where = ['login' => $login];
    	$user = \App\Models\Users::whereOneElement($where);
    	if (self::verify($password, $user->password)){
    		return $user;
    	}
    	return false;
    }

    public static function user()
    {
    	$hash = $_COOKIE[\App\Config::instance()->secret_key] ?? null;
    	$session = \App\Models\UserSessions::whereOneElement(['hash' => $hash]);
    	if (!is_null($session)){
	    	return $session->user;
    	}
    	return null;
    }
}