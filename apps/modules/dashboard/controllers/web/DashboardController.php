<?php

namespace Phalcon\Init\Dashboard\Controllers\Web;

use Phalcon\Init\Dashboard\Models\Posts;
use Phalcon\Mvc\Controller;

class DashboardController extends Controller
{
    public function indexAction()
    {
        $posts = Posts::find();

        $this->view->posts = $posts;
        $this->view->pick('dashboard/index');
    }

}