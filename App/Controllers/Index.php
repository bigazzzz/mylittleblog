<?php

namespace App\Controllers;

use App\View;
use App\Controller;
use App\Config;

class Index extends Controller
{

    protected function beforeAction()
    {
        $this->view->site = Config::instance()->site;
        $this->view->addTemplateDir(ROOT_DIR . '/Modules/Views/' . Config::instance()->template_engine);
    }

    protected function actionIndex()
    {
        $this->view->posts = \Modules\Models\Blog\Post::getLatest(Config::instance()->posts->count_on_start_page);
        $this->view->content = $this->view->render('Blog/posts');
        $this->view->display('index');
    }

    /*
    TODO переписать систему роутов, чтобы BLOG/POST/id, а не BLOG/POST/?id
     */

    protected function actionPost()
    {
        $this->view->post = \Modules\Models\Blog\Post::findById($_REQUEST['id']);
        $this->view->content = $this->view->render('Blog/post');
        $this->view->display('index');
    }

    protected function actionAuthor()
    {
        $this->view->author = \Modules\Models\Blog\Author::findById($_REQUEST['id']);
        $this->view->content = $this->view->render('Blog/author');
        $this->view->display('index');
    }

}
