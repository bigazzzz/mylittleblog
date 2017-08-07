<?php

namespace App\Controllers;

use App\View;
use App\Controller;
use App\Config;

class Main extends Controller
{

    protected function beforeAction()
    {
        $this->view->site = Config::instance()->site;
        $this->view->user = \App\Auth::user();
        $this->view->addTemplateDir(ROOT_DIR . '/Modules/Views/' . Config::instance()->template_engine);
    }

    protected function actionIndex()
    {
        $module = new \Modules\Controllers\Blog\Index();
        $module->view = $this->view;
        return $module->action('Index');
    }

    protected function actionAuth($data, $post)
    {
        $user = \App\Auth::authenticate($post['login'], $post['password']);
        if (false === $user){
            \App\Http::redirectPrevious();
            return false;
        }
        $session = new \App\Models\UserSessions;
        $session->user_id = $user->id;
        $session->hash = hash('sha256', microtime(true) . uniqid());
        setcookie(\App\Config::instance()->secret_key, $session->hash);
        $session->ua = $_SERVER['HTTP_USER_AGENT'];
        $session->ip = $_SERVER['REMOTE_ADDR'];
        $session->save();
        \App\Http::redirectPrevious();
    }
}