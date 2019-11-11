<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
    <h1>Hello World! from Dashboard Module</h1>
    <div>
        <a href="{{ url() }}" class="btn btn-primary">Add an Idea</a>
    </div>
    <table class="table">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Title</th>
          <th scope="col">Action</th>
        </tr>
      </thead>
      <tbody>
      {% for post in posts %}
        <tr>
          <th scope="row">{{ loop.index }}</th>
          <td> {{ post.title }} </td>
          <td> edit | delete </td>
        </tr>
      {% endfor  %}
      </tbody>
    </table>
</body>
</html>