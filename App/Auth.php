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

    public static function logout()
    {
    	$hash = $_COOKIE[\App\Config::instance()->secret_key] ?? null;
    	$session = \App\Models\UserSessions::whereOneElement(['hash' => $hash]);
    	if (!is_null($session)){
	    	$session->delete();
			setcookie(\App\Config::instance()->secret_key, "", time()-10, "/");
			return true;
    	}
    	return false;
    }

    public static function login($login, $password)
    {
		$user = \App\Auth::authenticate($login, $password);
        if (false === $user){
            \App\Http::redirectPrevious();
            return false;
        }
        $session = new \App\Models\UserSessions;
        $session->user_id = $user->id;
        $session->hash = hash('sha256', microtime(true) . uniqid());
        setcookie(\App\Config::instance()->secret_key, $session->hash, time()+60*60*24*365, "/");
        $session->ua = $_SERVER['HTTP_USER_AGENT'];
        $session->ip = $_SERVER['REMOTE_ADDR'];
        $session->save();

    }
}