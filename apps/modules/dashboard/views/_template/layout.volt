<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>{% block title %}{% endblock %} - Simple Blog A Lot Ideas</title>
    <style>
    </style>
    {% block head %}{% endblock %}
</head>
<body class="bg-light">
<nav class="navbar navbar-expand-lg navbar-primary bg-light">
    <a class="navbar-brand" href="{{ url('/') }}">Simple Ideas</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02"
            aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
        <ul class="navbar-nav nav-dropdown ml-auto mt-2 mt-lg-0">
            <li class="nav-item   active">
                {% if session == null %}
                    <a class="nav-link " href="{{ url('/dashboard/login') }}">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
                    </a>
                {% else %}
                    <a class="nav-link " href="{{ url('/dashboard/login/logout') }}">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">logout</button>
                    </a>
                {% endif %}
            </li>

        </ul>

    </div>
</nav>
{% block content %}
{% endblock %}
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>