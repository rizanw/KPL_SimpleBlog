<?php

namespace Phalcon\Init\SimpleBlog\Controllers\Web;

use Phalcon\Init\Dashboard\Models\Posts;
use Phalcon\Mvc\Controller;

class IndexController extends Controller
{
    public function indexAction()
    {
        $posts = \Phalcon\Init\SimpleBlog\Models\Posts::find();

        $this->view->posts = $posts;
        $this->view->pick('index/index');
    }

}