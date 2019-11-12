{% extends "_template/layout.volt" %}
{% block title %}Register{% endblock %}
{% block content %}
    <div class="container">
        <div class="my-3 p-3 bg-white rounded box-shadow">
            <h1 class="text-center mb-3">Register</h1>
            {{ form('/dashboard/register/register', 'method': 'post') }}
            <div class="form-group row">
                <label for='name' class="col-sm-2 col-form-label">Name</label>
                <div class="col-sm-10">
                    {{ text_field('name', 'size': 64, 'class': "form-control") }}
                </div>
            </div>
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

            {{ submit_button('Register', 'class':"btn btn-primary mb-2") }}

            {{ end_form() }}
        </div>
    </div>
{% endblock %}