<!DOCTYPE html>
<html>
<head>
    <title>Simple Blog A Lot Ideas - Register</title>
</head>
<body>
    <h1>Register!</h1>
    {{ form('/dashboard/register/register', 'method': 'post') }}
    <div>
        <label for='name'>Name</label>
        {{ text_field('name', 'size': 64) }}
    </div>
        <label for='name'>Email</label>
        {{ email_field('email', 'size': 64) }}
    <div>
        <label for='name'>Password</label>
        {{ password_field('password', 'size': 32) }}
    </div>
    <div>
        {{ submit_button('Register') }}
    </div>
    {{ end_form() }}
</body>
</html>