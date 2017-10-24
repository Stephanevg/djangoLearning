# Namespacing

When the number of apps grows, the urls might have some conflicts due to the fact that the same names have been given to the methods.

Using namespaces, it is possible to overcome this, and to specify which urls.py from which app the request should go to.

In each **urls.py** from each app, we need to give the urls.py a name.

```python
from django.conf.urls import url
from . import views

app_name = 'scripts'

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^(?P<script_id>[0-9]+)/$',views.detail,name='detail')
]
```

we provide a name to the app using the following variable above the urlpatterns -> **app_name = 'scripts'**

We can then access the detail method form the scripts/models function win the servers/templates/servers/index.html

```python
url 'scripts:detail'
```

an exmaple of the concrete call is here under

```html
<li><a href={% url 'scripts:detail' script.id %}>{{script.name}}</a></li>
```