set-location C:\Users\taavast3\OneDrive\Blogs\PowerShellDistrict\Python\django
$a = @"
# Django learning repo

This repository contains my files, and notes of my learning path into the Django framework.

## Learning Ressources:

### videos

- [The New Boston video tutorials](https://www.youtube.com/watch?v=qgGIqRFvFFk&list=PL6gx4Cwl9DGBlmzzFcLgDhKTTfNLfX1IK)
- [Derek Banas](https://www.youtube.com/playlist?list=PLGLfVvz_LVvSMqZiTTsAC7C8Ypp81Jt6D)

### cheat cheets

- [Mercury Tide](https://www.mercurytide.co.uk/media/resources/django-cheat-sheet.pdf)
- [RevSys](http://media.revsys.com/images/django-1.5-cheatsheet.pdf)

### books I used

- [Two scoops of Django](https://www.amazon.fr/Two-Scoops-Django-1-11-Practices/dp/0692915729/ref=sr_1_2?ie=UTF8&qid=1508575688&sr=8-2&keywords=django+python)


## Learning path

"@

$AllMDs = Get-ChildItem .\ -Recurse -Filter "*.md"

$directories = $AllMDs | group directory


$a += "`r`n"
$a += "`r`n"
foreach ($folder in $directories){

    $leaf = $null
    $leaf = (split-Path $folder.name -leaf)
    $a += "`r`n"
    $a += "## $($leaf) `r`n"
    $a += "`r`n"
    foreach ($file in $folder.group){


        $relPath = $null
        $relPath = (($file | Resolve-Path -Relative).Replace(".\","\")).replace('\','/')
        $a += "[$($file.BaseName)]($relPath)"
        $a += "<br>`r`n "

    }
    

}

$a > readme.md