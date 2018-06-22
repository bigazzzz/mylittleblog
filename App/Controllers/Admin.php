<?php

namespace App\Controllers;

use App\View;
use App\Controller;
use App\Config;

class Admin extends Controller
{
    protected function beforeAction()
    {
        $this->view->site = Config::instance()->site;
        $this->view->user = \App\Auth::user();
        if (is_null($this->view->user)) {
            \App\Http::redirect("/login");
            die();
        }
    }
    protected function actionIndex()
    {
        $this->view->content = $this->view->render('Admin\index');
        $this->view->display('index');
    }

    protected function actionModulesList()
    {
        $this->view->modules = \App\Modules::list();
        $this->view->content = $this->view->render('Admin\Modules\list');
        $this->view->display('index');
    }

    protected function actionModuleInstall($moduleName)
    {
    }

    protected function actionModuleUninstall($moduleName)
    {
    }


}
