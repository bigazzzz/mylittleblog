<?php

namespace Modules\Blog;

use App\Controller;
use App\Config;

class Index extends \App\Controllers\Main
{

    protected function actionIndex()
    {
        $data['page'] = 1;
        self::actionPostsPage($data);
    }

    protected function actionPost($data)
    {
        $this->view->post = Models\Post::findById($data['id']);
        $this->view->content = $this->view->render('Blog/post');
        $this->view->display('index');
    }

    protected function actionAuthor($data)
    {
        $this->view->user = \App\Models\User::findById($data['id']);
        $this->view->content = $this->view->render('Blog/author');
        $this->view->display('index');
    }

    protected function actionPostsPage($data)
    {
        $this->view->posts = Models\Post::page(null,$data['page'],Config::instance()->posts->count_on_start_page);
        $this->view->pagination = new \App\Models\Pagination(Models\Post::count(), Config::instance()->posts->count_on_start_page);
        $this->view->pagination->current = $data['page'];
        $this->view->pagination->url = '/posts/page';
        $this->view->content = $this->view->render('Blog/posts');
        $this->view->display('index');
    }

    protected function actionTag($data)
    {
        $this->view->tag = Models\Tag::findById($data['id']);
        $this->view->content = $this->view->render('Blog/tag');
        $this->view->display('index');
    }

}
