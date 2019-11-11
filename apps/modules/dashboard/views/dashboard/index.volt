{% extends "_template/layout.volt" %}

{% block title %}Dashboard{% endblock %}

{% block head %}<nav class="navbar navbar-expand-lg navbar-primary bg-light">
  <a class="navbar-brand" href="#">Simple Blog</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
    
  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav nav-dropdown ml-auto mt-2 mt-lg-0">
      <li class="nav-item   active">
        <a class="nav-link " href="{{ url('/dashboard/login/logout') }}"> <button class="btn btn-outline-success my-2 my-sm-0" type="submit">logout</button></a>
      </li>
     
    </ul>
    
  </div>
  
</nav>{% endblock %}

{% block content %}
<div class="container">
    <div class="my-3 p-3 bg-white rounded box-shadow">
     <h3>Hallo! Welcome  {{ session['username'] }} </h3>
     <h5>What's your idea for today ?</h5>
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
          <td> [nilai rating]</td>
          <td> edit | delete </td>
        </tr>
      {% endfor  %}
      </tbody>
    </table>
    </div>
</div>
{% endblock %}