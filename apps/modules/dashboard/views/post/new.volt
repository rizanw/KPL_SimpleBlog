<!DOCTYPE html>
<html>
<head>
    <title>Create a New Idea!</title>
</head>
<body>
    {{ form('/dashboard/login/login', 'method': 'post') }}

        {{ hidden_field('author', 'value': "1") }}
        <div>
            <label for='title'>Title</label>
            {{ text_field('title', 'size': 255) }}
        </div>
        <div>
            <label for='content'>Content</label>
            {{ text_area('content') }}
        </div>
        <div>
            {{ submit_button('Save') }}
        </div>
    {{ end_form() }}
</body>
</html>