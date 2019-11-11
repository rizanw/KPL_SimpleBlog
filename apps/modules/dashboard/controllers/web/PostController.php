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
        $post = new Posts();

        $post->user_id = $this->request->getPost('author');
        $post->title = $this->request->getPost('title');
        $post->content = $this->request->getPost('content');

        $success = $post->save();

        if ($success) {
            echo "An Idea Added!";
        } else {
            echo "Sorry, the following problems were generated: ";

            $messages = $post->getMessages();
            foreach ($messages as $message) {
                echo $message->getMessage(), "<br/>";
            }
        }
    }
    public function updateAction()
    {

    }
    public function deleteAction()
    {
//        echo $this->dispatcher->getParam("Params");
        print_r($this->dispatcher->getParam("params"));
        exit();

        $id = $this->request->getPost('id');
        $post = Posts::findFirst("id = '$id");

        if ($post !== false) {
            if ($post->delete() === false){
                echo "Sorry, we can't delete the robot right now: \n";

                $messages = $post->getMessages();
                foreach ($messages as $message) {
                    echo $message, "\n";
                }
            }else{
                $this->response->redirect('/dashboard');
            }
        }
    }
}