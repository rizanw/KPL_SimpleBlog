<?php

namespace Phalcon\Init\Dashboard\Models;

use Phalcon\Mvc\Model;

class Users extends Model
{
    public $id;
    public $name;
    public $email;
    public $password;
}