<?php

namespace Phalcon\Init\Dashboard\Controllers\Web;

use Phalcon\Exception;
use Phalcon\Init\Dashboard\Models\Users;
use Phalcon\Mvc\Controller;

class LoginController extends Controller
{
    public function indexAction()
    {
        $this->view->pick('login/index');
    }

    public function loginAction()
    {
        $email = $this->request->getPost('email');
        $password = $this->request->getPost('password');
        $user = Users::findFirst("email='$email'");
        if ($user) {
            if (strcmp($password, $user->password) == 0) {
                $this->session->set(
                    'auth',
                    [
                        'id' => $user->id,
                        'username' => $user->email,
                    ]
                );

                if ($this->session->get('auth')['status'] === '1') {
                    $this->response->redirect('dashboard');
                } else if ($this->session->get('auth')['status'] === '0') {
                    $this->response->redirect();
                }
                echo "login berhasil";
            } else {
                print_r($password);
                echo "<br>";
                print_r($user->password);
                echo "<br>";
                echo "salah pass";
//                $this->response->redirect('/dashboard/login');
            }
        } else {
            echo "ga ada user";
//            $this->response->redirect('login');
        }
    }

//    public function loginsessionAction()
//    {
//
//    }
}