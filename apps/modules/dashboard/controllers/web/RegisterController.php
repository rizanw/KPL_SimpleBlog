<?php

namespace Phalcon\Init\Dashboard\Controllers\Web;

use Phalcon\Init\Dashboard\Models\Users;
use Phalcon\Mvc\Controller;

class RegisterController extends Controller
{
    public function indexAction()
    {
        $this->view->pick('register/index');
    }

    public function registerAction()
    {
        $user = new Users();

        // Store and check for errors
        $success = $user->save(
            $this->request->getPost(),
            [
                "name",
        "email",
                "password"
            ]
        );

        if ($success) {
            echo "Thanks for registering!";
        } else {
            echo "Sorry, the following problems were generated: ";

            $messages = $user->getMessages();

            foreach ($messages as $message) {
                echo $message->getMessage(), "<br/>";
            }
        }

        $this->view->disable();
    }
}