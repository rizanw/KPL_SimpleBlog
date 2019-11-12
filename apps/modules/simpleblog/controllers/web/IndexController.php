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
        if ($this->session->has('auth')) {
            $this->view->session = $this->session->get('auth');
            print_r($this->session->get('auth'));
//            exit();
        }else{
            $this->view->session = null;
        }
        $this->view->posts = $posts;
        $this->view->ratings = $ratings;
        $this->view->pick('index/index');
    }

}