set-location C:\Users\taavast3\OneDrive\Blogs\PowerShellDistrict\Python\django
$a = @"
# Django learning repo

This repository contains my files, and notes of my learning path into the Django framework.

## Ressources used:

### videos

[The New Boston video tutorials](https://www.youtube.com/watch?v=qgGIqRFvFFk&list=PL6gx4Cwl9DGBlmzzFcLgDhKTTfNLfX1IK)

### blog posts
tbd

### cheat cheets
tbd

### books

tbd

## Learning path

"@

$AllMDs = Get-ChildItem .\ -Recurse -Filter "*.md"

$directories = $AllMDs | group directory


$a += "<br>`r`n"
foreach ($folder in $directories){

    $leaf = $null
    $leaf = (split-Path $folder.name -leaf)
    $a += "<br>`r`n"
    $a += "## $($leaf) `r`n"
    $a += "`r`n<br>"
    foreach ($file in $folder.group){


        $relPath = $null
        $relPath = (($file | Resolve-Path -Relative).Replace(".\","\")).replace('\','/')
        $a += "[$($file.BaseName)]($relPath)"
        $a += " <br> "

    }
    

}

$a > readme.md