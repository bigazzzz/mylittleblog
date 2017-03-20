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
        $this->view->posts = \App\Models\Post::getLatest(\App\Config::instance()->posts->count_on_start_page);
        $this->view->display('blog_index');
    }

    /*
    TODO переписать систему роутов, чтобы BLOG/POST/id, а не BLOG/POST/?id
     */
    
    protected function actionPost()
    {
        $this->view->post = \App\Models\Post::findById($_REQUEST['id']);
        $this->view->display('blog_post');
    }

    protected function actionAuthor()
    {
        $this->view->author = \App\Models\Author::findById($_REQUEST['id']);
        $this->view->display('blog_author');
    }

}
