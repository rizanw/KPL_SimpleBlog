<?php

namespace Phalcon\Init\Dashboard\Controllers\Web;

use Phalcon\Init\Dashboard\Models\Posts;
use Phalcon\Init\Dashboard\Models\Ratings;
use Phalcon\Mvc\Controller;

class DashboardController extends Controller
{
    public function indexAction()
    {
        $posts = Posts::find();
        $ratings = Ratings::find();

        $this->view->posts = $posts;
        $this->view->ratings = $ratings;
        $this->view->pick('dashboard/index');
    }

}