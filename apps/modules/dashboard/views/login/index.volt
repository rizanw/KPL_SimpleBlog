{% extends "_template/layout.volt" %}
{% block title %}Login{% endblock %}
{% block content %}
    <div class="container">
        <div class="my-3 p-3 bg-white rounded box-shadow">
            <h1 class="text-center mb-3">Login</h1>


            {{ form('/dashboard/login/login', 'method': 'post') }}
            <div class="form-group row">
                <label for='email' class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    {{ email_field('email', 'size': 64, 'class': "form-control") }}
                </div>
            </div>
            <div class="form-group row">
                <label for='password' class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10">
                    {{ password_field('password', 'size': 32, 'class': "form-control") }}
                </div>
            </div>
            {{ submit_button('Login', 'class':"btn btn-primary mb-2") }}

            {{ end_form() }}
        </div>
        <span>Have not account? <a href="{{ url('/dashboard/register') }}">Click Here!</a> </span><br>
        <span> or back to <a href="{{ url('') }}">Homepage</a></span>
    </div>
{% endblock %}