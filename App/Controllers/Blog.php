<?php

namespace App\Controllers;

use App\View;
use App\Controller;

class Blog extends Controller
{

    protected function beforeAction()
    {
    }
    protected function actionIndex()
    {
    	$this->view->site = \App\Config::instance()->site;
        $this->view->articles = \App\Models\Article::getLatest(\App\Config::instance()->articles->count_on_start_page);
        $this->view->display('blog_index');
    }
}
