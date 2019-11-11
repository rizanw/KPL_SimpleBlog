{% extends "_template/layout.volt" %}
{% block title %}Create Something Amazing{% endblock %}
{% block content %}
<div class="container">
    <div class="my-3 p-3 bg-white rounded box-shadow">
    {{ form('/dashboard/post/create', 'method': 'post') }}
        {{ hidden_field('author', 'value': "1") }}
        <div class="form-group">
            <label for='title'>Title</label>
            {{ text_field('title', 'size': 255, 'class': "form-control") }}
        </div>
        <div class="form-group">
            <label for='content'>Content</label>
            {{ text_area('content', 'class': "form-control") }}
        </div>
        <div class="form-group">
            {{ submit_button('Save', 'class':"btn btn-primary mb-2") }}
        </div>
    {{ end_form() }}
    </div>
</div>
{% endblock %}