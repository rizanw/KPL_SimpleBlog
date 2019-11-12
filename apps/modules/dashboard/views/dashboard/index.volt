{% extends "_template/layout.volt" %}
{% block title %}Dashboard{% endblock %}
{% block content %}
<div class="container">
    <div class="my-3 p-3 bg-white rounded box-shadow">
    <div>
          <a href="{{ url('/dashboard/post/new') }}" class="btn btn-primary">Add an Idea</a>
    </div>
    </div>
    <div class="my-3 p-3 bg-white rounded box-shadow">
    <table class="table">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Title</th>
          <th scope="col">Rating</th>
          <th scope="col">Action</th>
        </tr>
      </thead>
      <tbody>
      {% for post in posts %}
        <tr>
          <th scope="row">{{ loop.index }}</th>
          <td> {{ post.title }} </td>
          <td>
              {% set sum = 0 %}
              {% set count = 0 %}
              {% for rating in ratings %}
                  {% if post.id === rating.post_id %}
                      {% set sum = sum + rating.value %}
                      {% set count+=1 %}
                  {% endif %}
              {% endfor %}
              {% if count === 0 %}
                  0
              {% else %}
                  {{ sum / count }}
              {% endif %}
              / 5
          </td>
          <td> edit | delete </td>
        </tr>
      {% endfor  %}
      </tbody>
    </table>
    </div>
</div>
{% endblock %}