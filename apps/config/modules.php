<?php

return array(
    'simpleblog' => [
        'namespace' => 'Phalcon\Init\SimpleBlog',
        'webControllerNamespace' => 'Phalcon\Init\SimpleBlog\Controllers\Web',
        'apiControllerNamespace' => 'Phalcon\Init\SimpleBlog\Controllers\Api',
        'className' => 'Phalcon\Init\SimpleBlog\Module',
        'path' => APP_PATH . '/modules/SimpleBlog/Module.php',
        'defaultRouting' => true,
        'defaultController' => 'index',
        'defaultAction' => 'index'
    ],

    'dashboard' => [
        'namespace' => 'Phalcon\Init\Dashboard',
        'webControllerNamespace' => 'Phalcon\Init\Dashboard\Controllers\Web',
        'apiControllerNamespace' => 'Phalcon\Init\Dashboard\Controllers\Api',
        'className' => 'Phalcon\Init\Dashboard\Module',
        'path' => APP_PATH . '/modules/dashboard/Module.php',
        'defaultRouting' => true,
        'defaultController' => 'dashboard',
        'defaultAction' => 'index'
    ],

    'backoffice' => [
        'namespace' => 'Phalcon\Init\BackOffice',
        'webControllerNamespace' => 'Phalcon\Init\BackOffice\Controllers\Web',
        'apiControllerNamespace' => 'Phalcon\Init\BackOffice\Controllers\Api',
        'className' => 'Phalcon\Init\BackOffice\Module',
        'path' => APP_PATH . '/modules/BackOffice/Module.php',
        'defaultRouting' => true,
        'defaultController' => 'index',
        'defaultAction' => 'index'
    ],

);