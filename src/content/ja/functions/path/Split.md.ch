%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: path.Split
description: Replaces path separators with slashes (`/`) and splits the resulting path immediately following the final slash, separating it into a directory and file name component. 
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/path/Base
    - functions/path/BaseName
    - functions/path/Clean
    - functions/path/Dir
    - functions/path/Ext
    - functions/path/Join
  returnType: paths.DirFile
  signatures: [path.Split PATH]
aliases: [/functions/path.split]
---
@y
---
title: path.Split
description: Replaces path separators with slashes (`/`) and splits the resulting path immediately following the final slash, separating it into a directory and file name component. 
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/path/Base
    - functions/path/BaseName
    - functions/path/Clean
    - functions/path/Dir
    - functions/path/Ext
    - functions/path/Join
  returnType: paths.DirFile
  signatures: [path.Split PATH]
aliases: [/functions/path.split]
---
@z

@x
If there is no slash in the given path, `path.Split` returns an empty directory, and file set to path. The returned values have the property that path = dir+file.
@y
If there is no slash in the given path, `path.Split` returns an empty directory, and file set to path. The returned values have the property that path = dir+file.
@z

@x
```go-html-template
{{ $dirFile := path.Split "a/news.html" }}
{{ $dirFile.Dir }} → a/
{{ $dirFile.File }} → news.html
@y
```go-html-template
{{ $dirFile := path.Split "a/news.html" }}
{{ $dirFile.Dir }} → a/
{{ $dirFile.File }} → news.html
@z

@x
{{ $dirFile := path.Split "news.html" }}
{{ $dirFile.Dir }} → "" (empty string)
{{ $dirFile.File }} → news.html
@y
{{ $dirFile := path.Split "news.html" }}
{{ $dirFile.Dir }} → "" (empty string)
{{ $dirFile.File }} → news.html
@z

@x
{{ $dirFile := path.Split "a/b/c" }}
{{ $dirFile.Dir }} → a/b/
{{ $dirFile.File }} → c
```
@y
{{ $dirFile := path.Split "a/b/c" }}
{{ $dirFile.Dir }} → a/b/
{{ $dirFile.File }} → c
```
@z
