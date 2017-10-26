# Static files and integrating BootStrap

[Video Source - 25 BootStrap and Static Files](https://www.youtube.com/watch?v=Dv15y5CgCyE&list=PL6gx4Cwl9DGBlmzzFcLgDhKTTfNLfX1IK&index=25)

[Official templates Documentation (French)](https://docs.djangoproject.com/fr/1.11/howto/static-files/)

Integrate files such as bootstrap and JQuery and other static files.

1- Create **static** folder in our main website folder containing a subfolder of each app of the website.

>>MyFirstWebSite
    static
       servers
>>     scripts

I added a css file in **static/servers/style.css** containing the following:

```css
body{
    background: white url("images/background.jpg");
}
```
at the top of the **templates/servers/index.html** I have added the following line

```pthon
{% load static %}
```

> The word **static** called after the load keyword is actually cusomizable. This must be done in the website **settings.py** file. At the very end of the "MyFirstWebSite/MyFirstWebSite/Settings.py" line 122, we have the following:
```python
STATIC_URL = '/static/'
```
> change that dictionnary value to point to another path.

This allows to load the folder (MyWebSite/static/), but the individual files are not loaded yet.

```html
<link rel="stylesheet" type="text/css" href="{% static 'servers/style.css' %}">
```

The **{% load static %}** code gives a reference to the **static/** folder in the app. From there, we need to navigate to the desired file. (**servers/style.css**)

Copy and paste the following links into the static template

### Boostrap link 
```html
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
```