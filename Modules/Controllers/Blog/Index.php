<?php

namespace Modules\Controllers\Blog;

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
        $this->view->post = \Modules\Models\Blog\Post::findById($data['id']);
        $this->view->content = $this->view->render('Blog/post');
        $this->view->display('index');
    }

    protected function actionAuthor($data)
    {
        $this->view->author = \Modules\Models\Blog\Author::findById($data['id']);
        $this->view->content = $this->view->render('Blog/author');
        $this->view->display('index');
    }

    protected function actionPostsPage($data)
    {
        $this->view->posts = \Modules\Models\Blog\Post::page(null,$data['page'],Config::instance()->posts->count_on_start_page);
        $this->view->pagination = new \App\Models\Pagination(\Modules\Models\Blog\Post::count(), Config::instance()->posts->count_on_start_page);
        $this->view->pagination->current = $data['page'];
        $this->view->pagination->url = '/posts/page';
        $this->view->content = $this->view->render('Blog/posts');
        $this->view->display('index');
    }

    protected function actionTag($data)
    {
        $this->view->tag = \Modules\Models\Blog\tag::findById($data['id']);
        $this->view->content = $this->view->render('Blog/tag');
        $this->view->display('index');
    }

}
