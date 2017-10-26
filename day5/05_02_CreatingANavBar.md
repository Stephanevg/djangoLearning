# Creating a navbar

[Video - N° 25](https://www.youtube.com/watch?v=Dv15y5CgCyE&list=PL6gx4Cwl9DGBlmzzFcLgDhKTTfNLfX1IK&index=25) -> Look at 7min20

1. Add the bootstrap link
2. Create the ```<nav>``` container
3. Add divs with specefic classes

1. Add boostrap link

In the index.html, I added the following link

```html
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
```

2. Create the ```<nav>``` container

```html
<nav class="navbar navbar-default">

</nav>

```

3. Adding Individual ```<divs>```

```html
    <div class="container-fluid">
        <div class = "navbar-header">
            <a class="navbar-brand" href={% url 'servers:index'%}>Woop</a>
        </div>
    </div>
```

4. Complete navbar

```html
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class = "navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#topNavBar">
            <a class="navbar-brand" href={% url 'servers:index'%}>Woop</a>
        </div>
    </div>
</nav>
```

### adding additional sections and icons.

```html
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
            </li>
        </ul>
    </div>
    </div>
</nav>

```