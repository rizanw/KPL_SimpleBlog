<?php

namespace Phalcon\Init\Dashboard\Models;

use Phalcon\Mvc\Model;

class Ratings extends Model
{
    public $id;
    public $post_id;
    public $value;
    public $rater;
}