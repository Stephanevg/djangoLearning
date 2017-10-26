# Creating a base template

There are things we want to have on every single page.
Things such as the navigation bar, or the footer.

To have the available on every single page, we can use base templates.

I created the following file: **templates/scripts/scripts/base.html**


and it copied the following content (the previous index.html page, with a very few additions to it which I detail here under :



```html
{% load static %}


<!DOCTYPE>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Woop</title>
    <link rel="stylesheet" type="text/css" href="{% static 'servers/style.css' %}" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">

    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#topNavBar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                <a class="navbar-brand" href={% url 'servers:index'%}>Woop</a>
            </div>


            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="">
                        <a href="{% url 'servers:index' %}">
                            <span class="glyphicon glyphicon-barcode"></span>&nbsp;
                            Servers
                        </a>
                    </li>
                    <li class="">
                        <a href="{% url 'scripts:index' %}">
                            <span class="glyphicon glyphicon-knight" aria-hidden="true"></span>&nbsp;
                            Scripts
                        </a>
                    </li>
                </ul>
            </div>
            </div>
        </nav>
    </head>
<body>
    {% block body %}
    {% endblock %}
</body>
</html>
```

The following code

```html

{% block body %}
{% endblock %}

```
defines where the block called "body" will go. (This could be named anything we like)

The code that will go in there, needs to be surrounded by the same block section, as showed here under:

```html
 {% extends 'scripts/base.html'%}


{% block body %}
<h2> Server List</h2>

<p>
    {%if all_servers%}

    <h3> {{all_servers.count}} Servers:</h3>

    <ul>
        {% for server in all_servers %}
        <li><a href="{{server.id}}">{{server.computername}}</a></li>
        {% endfor %}
    </ul>
    {% else %}
    <h3>No servers to display</h3>
    {% endif %}
</p>
{% endblock %}
```
One _import_ thing to mention is that the file that will replace the {%body block%} to point to the correct base template. This is done using the _extends_ keyword, followed by the relative path to the base.html file we want to add.

example:

```python

 {% extends 'scripts/base.html'%}

```