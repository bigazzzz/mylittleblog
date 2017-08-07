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
    	$user = \App\Models\Users::searchOneElement($where);
    	var_dump($user);
    	if (self::verify($password, $user->password)){
    		return true;
    	}
    	return false;
    }
}