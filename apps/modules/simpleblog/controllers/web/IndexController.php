<?php

namespace Phalcon\Init\SimpleBlog\Controllers\Web;

use Phalcon\Init\Dashboard\Models\Posts;
use Phalcon\Init\SimpleBlog\Models\Ratings;
use Phalcon\Mvc\Controller;

class IndexController extends Controller
{
    public function indexAction()
    {
        $posts = \Phalcon\Init\SimpleBlog\Models\Posts::find();
        $ratings = Ratings::find();

        $this->view->posts = $posts;
        $this->view->ratings = $ratings;
        $this->view->pick('index/index');
    }

}