<?php

namespace App\Controllers;

use App\View, App\Controller;

class Main extends Controller
{

    protected function beforeAction()
    {
    }
    protected function actionIndex()
    {
    	$this->view->site = \App\Config::instance()->site;
        $this->view->display('main');
    }
}
