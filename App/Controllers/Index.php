<?php

namespace App\Controllers;

use App\View;
use App\Controller;

class Index extends Controller
{

    protected function beforeAction()
    {
        $this->view->site = \App\Config::instance()->site;
        $this->view->addTemplateDir('/var/www/blog/Modules/Blog/Views/Twig');
    }
    protected function actionIndex()
    {
        $this->view->posts = \Modules\Blog\Models\Post::getLatest(\App\Config::instance()->posts->count_on_start_page);
        $this->view->content = $this->view->render('posts');
        $this->view->display('index');
    }

    /*
    TODO переписать систему роутов, чтобы BLOG/POST/id, а не BLOG/POST/?id
     */

    protected function actionPost()
    {
        $this->view->post = \Modules\Blog\Models\Post::findById($_REQUEST['id']);
        $this->view->content = $this->view->render('post');
        $this->view->display('index');
    }

    protected function actionAuthor()
    {
        $this->view->author = \Modules\Blog\Models\Author::findById($_REQUEST['id']);
        $this->view->content = $this->view->render('author');
        $this->view->display('index');
    }

}
