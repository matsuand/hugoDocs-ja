%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: path.Base
description: Replaces path separators with slashes (`/`) and returns the last element of the given path. 
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/path/BaseName
    - functions/path/Clean
    - functions/path/Dir
    - functions/path/Ext
    - functions/path/Join
    - functions/path/Split
  returnType: string
  signatures: [path.Base PATH]
aliases: [/functions/path.base]
---
@y
---
title: path.Base
description: Replaces path separators with slashes (`/`) and returns the last element of the given path. 
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/path/BaseName
    - functions/path/Clean
    - functions/path/Dir
    - functions/path/Ext
    - functions/path/Join
    - functions/path/Split
  returnType: string
  signatures: [path.Base PATH]
aliases: [/functions/path.base]
---
@z

@x
```go-html-template
{{ path.Base "a/news.html" }} → news.html
{{ path.Base "news.html" }} → news.html
{{ path.Base "a/b/c" }} → c
{{ path.Base "/x/y/z/" }} → z
{{ path.Base "" }} → .
```
@y
```go-html-template
{{ path.Base "a/news.html" }} → news.html
{{ path.Base "news.html" }} → news.html
{{ path.Base "a/b/c" }} → c
{{ path.Base "/x/y/z/" }} → z
{{ path.Base "" }} → .
```
@z
