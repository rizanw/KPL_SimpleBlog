<?php

namespace Phalcon\Init\SimpleBlog\Controllers\Web;

use Phalcon\Init\Dashboard\Models\Posts;
use Phalcon\Init\SimpleBlog\Models\Ratings;
use Phalcon\Mvc\Controller;

class RatingController extends Controller
{
    public function createAction()
    {
        $rating = new Ratings();

        $rating->post_id = $this->request->getPost('post');
        $rating->value = $this->request->getPost('ratings');
        $rating->rater = $_SERVER['REMOTE_ADDR'];
        $success = $rating->save();

        if ($success){
            $this->response->redirect('/');
        }
        $this->response->redirect('/');
    }

}