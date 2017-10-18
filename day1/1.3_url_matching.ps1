<#

    Whenever a user request something from our website.
    It will go into the 'MyFirstWebSite' folder, and search for urls

        but dont add anything in there. 
    Default content is the following:
        from django.conf.urls import url
            from django.contrib import admin

            urlpatterns = [
                url(r'^admin/', admin.site.urls),
            ]

    
            Instead, create a urls.py file in your app, and add a urlpatterns = [] in there 
#>