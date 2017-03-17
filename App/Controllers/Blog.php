<?php

namespace App\Controllers;

use App\View;
use App\Controller;

class Blog extends Controller
{

    protected function beforeAction()
    {
    	$this->view->site = \App\Config::instance()->site;
    }
    protected function actionIndex()
    {
        $this->view->articles = \App\Models\Article::getLatest(\App\Config::instance()->articles->count_on_start_page);
        $this->view->display('blog_index');
    }

    /*
    TODO переписать систему роутов, чтобы BLOG/POST/id, а не BLOG/POST/?id
     */
    
    protected function actionPost()
    {
        $this->view->article = \App\Models\Article::findById($_REQUEST['id']);
        $this->view->display('blog_post');
    }

    protected function actionAuthor()
    {
        $this->view->author = \App\Models\Author::findById($_REQUEST['id']);
        $this->view->display('blog_author');
    }

}
