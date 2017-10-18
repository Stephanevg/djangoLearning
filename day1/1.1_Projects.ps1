#Source --> https://www.youtube.com/watch?v=CHjXtRrhqxc&list=PL6gx4Cwl9DGBlmzzFcLgDhKTTfNLfX1IK&index=2
cd C:\Users\taavast3\OneDrive\Blogs\PowerShellDistrict\Python\django\

#Create first project
django-admin.exe startproject MyFirstWebSite

#This creates a bunch of starter files in the path you are currently at.
<#
    <MyFirstWebsite>
        __init__.py --> tell python to view this directory as a python package.
        settings.py -> Contains all the settings related to the website
        urls.py --> url declaration of the website (table of content). maps a view to an url.
        wsgi.py --> webserverGateway interface (talk more about it later)
    manage.py -> Is there to help to manage the Website. Create DB Structure, Users etc..

#>

#run the server (in new powershell prompt)
cd C:\Users\taavast3\OneDrive\Blogs\PowerShellDistrict\Python\django\MyFirstWebSite

python manage.py runserver 

#Server is now available at -> http://127.0.0.1:8000/

