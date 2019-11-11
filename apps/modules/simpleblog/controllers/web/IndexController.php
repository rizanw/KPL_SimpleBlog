<?php

namespace Phalcon\Init\SimpleBlog\Controllers\Web;

use Phalcon\Mvc\Controller;

class IndexController extends Controller
{
    public function indexAction()
    {
        $this->view->pick('index/index');
    }

}