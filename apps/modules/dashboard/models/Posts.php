<?php

namespace Phalcon\Init\Dashboard\Models;

use Phalcon\Mvc\Model;

class Posts extends Model
{
    public $id;
    public $user_id;
    public $title;
    public $content;
    public $rate;
}