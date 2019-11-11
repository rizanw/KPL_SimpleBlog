<?php

namespace Phalcon\Init\Dashboard\Controllers\Web;

use Phalcon\Init\Dashboard\Models\Posts;
use Phalcon\Mvc\Controller;

class PostController extends Controller
{
    public function newAction()
    {
        $this->view->pick('post/new');
    }
    public function editAction()
    {
        $this->view->pick('post/edit');
    }

    public function createAction()
    {
        $this->view->pick('post/edit');
    }

}