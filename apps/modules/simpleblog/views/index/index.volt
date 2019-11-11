<!DOCTYPE html>
<html>
<head>
    <title>Simple Blog A Lot Ideas</title>
</head>
<body>
    <h1>List of Ideas : </h1>
    <ul>
    {% for post in posts %}
        <li>
            <a href="#"> {{ post.title }} </a>
        </li>
    {% endfor  %}
    </ul>
</body>
</html>