<!DOCTYPE html>
<html>
<head>
    <title>Simple Blog A Lot Ideas - Login</title>
</head>
<body>
    <h1>Login!</h1>
    {{ form('/dashboard/login/login', 'method': 'post') }}
    <div>
        <label for='name'>Email</label>
        {{ email_field('email', 'size': 64) }}
    </div>
    <div>
        <label for='name'>Password</label>
        {{ password_field('password', 'size': 32) }}
    </div>
    <div>
        {{ submit_button('Login') }}
    </div>
    {{ end_form() }}
</body>
</html>