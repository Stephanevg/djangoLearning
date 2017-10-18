<#
Creating Apps:
https://www.youtube.com/watch?v=4saN7GZnawU&list=PL6gx4Cwl9DGBlmzzFcLgDhKTTfNLfX1IK&index=3

in Django, Each section of a website is an app

blog -> is an app
forum --> is an app
video --> is an app

To memerorize -> explain in once sentence If not possible, break it further

#>

#Syntax
    #python manage.py startapp <appName>

    python manage.py startapp Servers # This will create a new subfolder in the website called "Servers" containing a bunch of files.
    
    <#
        __init__.py --> tells this is django package
        admin.py --> contains the admin section of the webite (Add remove users etc..)
        apps.py --> Configuration file
        models.py --> Classes --> blue print for your DB
                    What tables for Servers
                        Class Server:
                            HostName
                            DomainName
                            Location
                            Owner
        tests.py --> for unit tests
        views.py --> contains just functions. It takes a user request, and gives a page back.
        later, we will create a urls.py file to manage the routing.

    #>

    

