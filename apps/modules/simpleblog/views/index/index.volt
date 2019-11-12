<!DOCTYPE html>
<html>
<head>
    <title>Simple Blog A Lot Ideas</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .rating {
            display: inline-block;
            position: relative;
            height: 27px;
            line-height: 27px;
            font-size: 27px;
        }

        .rating label {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            cursor: pointer;
        }

        .rating label:last-child {
            position: static;
        }

        .rating label:nth-child(1) {
            z-index: 5;
        }

        .rating label:nth-child(2) {
            z-index: 4;
        }

        .rating label:nth-child(3) {
            z-index: 3;
        }

        .rating label:nth-child(4) {
            z-index: 2;
        }

        .rating label:nth-child(5) {
            z-index: 1;
        }

        .rating label input {
            position: absolute;
            top: 0;
            left: 0;
            opacity: 0;
        }

        .rating label .icon {
            float: left;
            color: transparent;
        }

        .rating label:last-child .icon {
            color: #000;
        }

        .rating:not(:hover) label input:checked ~ .icon,
        .rating:hover label:hover input ~ .icon {
            color: orange;
        }

        .rating label input:focus:not(:checked) ~ .icon:last-child {
            color: #000;
            text-shadow: 0 0 5px #09f;
        }
    </style
</head>
<body>

<div class="container">
    <h1 class="text-center">List of Ideas : </h1>
    <div id="accordion">
        {% for post in posts %}
            <div class="card">
                <div class="card-header" id="heading{{ loop.index }}">
                    <div class="row">
                        <div class="col-10">
                            <h5 class="mb-0">
                                <button class="btn btn-link" data-toggle="collapse"
                                        data-target="#collapse{{ loop.index }}"
                                        aria-expanded="true" aria-controls="collapse{{ loop.index }}">
                                    {{ post.title }}
                                </button>
                            </h5>
                        </div>
                        <div class="col-2">
                            <h6 class="text-right text-muted">
                                ratings:
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
                            </h6>
                        </div>
                    </div>
                </div>
                <div id="collapse{{ loop.index }}" class="collapse" aria-labelledby="heading{{ loop.index }}"
                     data-parent="#accordion">
                    <div class="card-body">
                        <div class="container-fluid">
                            <p>
                                {{ post.content }}
                            </p>
                        </div>
                        <div class="container-fluid">
                            <div class="text-muted">
                                Give Some Stars Please...
                            </div>
                            {{ form('/simpleblog/rating/create', 'method': 'post', 'class': "w-100 ") }}
                            <div class="rating">
                                {{ hidden_field('post', 'value': post.id) }}
                                <label>
                                    <input type="radio" name="ratings" value="1"/>
                                    <span class="icon">★</span>
                                </label>
                                <label>
                                    <input type="radio" name="ratings" value="2"/>
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                </label>
                                <label>
                                    <input type="radio" name="ratings" value="3"/>
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                </label>
                                <label>
                                    <input type="radio" name="ratings" value="4"/>
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                </label>
                                <label>
                                    <input type="radio" name="ratings" value="5"/>
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                </label>
                            </div>
                            <div>
                                {{ submit_button('rate!', 'class':"btn btn-warning btn-sm") }}
                            </div>
                            {{ end_form() }}
                        </div>
                    </div>
                </div>
            </div>
        {% endfor %}
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>