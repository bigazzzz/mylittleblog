<?php

namespace App\Controllers;

use App\View, App\Controller;

class Start extends Controller
{

    protected function beforeAction()
    {
    }
    protected function actionIndex()
    {
    	$this->view->site = \App\Config::instance()->site;
        $this->view->articles = \App\Models\Article::getLatest(3);
        $this->view->display('start');
    }
}
