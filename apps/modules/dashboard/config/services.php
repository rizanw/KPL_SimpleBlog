<?php

use Phalcon\Session\Adapter\Files as Session;
use Phalcon\Mvc\View;
use Phalcon\Mvc\View\Engine\Volt;

$di['view'] = function () {
    $view = new View();
    $view->setViewsDir(__DIR__ . '/../views/');

    $view->registerEngines(
        [
            ".volt" => "voltService",
        ]
    );

    return $view;
};

$di->setShared('session', function() {
    $session = new Session();
    $session->start();

    return $session;
});