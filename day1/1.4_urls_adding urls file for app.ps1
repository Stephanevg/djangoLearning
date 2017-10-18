#https://www.youtube.com/watch?v=nAn1KpPlN2w&list=PL6gx4Cwl9DGBlmzzFcLgDhKTTfNLfX1IK&index=5
$f = New-Item -ItemType file -Path .\ -Name urls.py
$urls = @"
    from django.conf.urls import url
    from . import views

    urlpattern = [
        url(r'^$',views.index,name='index'),
    ]
"@

$urls | Out-File $f

#Also, now that we have our urls.py in our app, we need to tell django to search for that urls.py
#when a request comes in we will need to tell him to go and look into the servers\urls.py

#edit the (main) urls.py add the following url pattern
#Attention, when adding include(s) don't forget to import include on top of the file first...
    #url(r'^servers/', include(servers.urls)),