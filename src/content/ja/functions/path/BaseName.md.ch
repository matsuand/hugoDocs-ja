%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: path.BaseName
description: Replaces path separators with slashes (`/`) and returns the last element of the given path, removing the extension if present.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/path/Base
    - functions/path/Clean
    - functions/path/Dir
    - functions/path/Ext
    - functions/path/Join
    - functions/path/Split
  returnType: string
  signatures: [path.BaseName PATH]
aliases: [/functions/path.basename]
---
@y
---
title: path.BaseName
description: Replaces path separators with slashes (`/`) and returns the last element of the given path, removing the extension if present.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/path/Base
    - functions/path/Clean
    - functions/path/Dir
    - functions/path/Ext
    - functions/path/Join
    - functions/path/Split
  returnType: string
  signatures: [path.BaseName PATH]
aliases: [/functions/path.basename]
---
@z

@x
{{< new-in 0.101.0 >}}
@y
{{< new-in 0.101.0 >}}
@z

@x
```go-html-template
{{ path.BaseName "a/news.html" }} → news
{{ path.BaseName "news.html" }} → news
{{ path.BaseName "a/b/c" }} → c
{{ path.BaseName "/x/y/z/" }} → z
{{ path.BaseName "" }} → .
```
@y
```go-html-template
{{ path.BaseName "a/news.html" }} → news
{{ path.BaseName "news.html" }} → news
{{ path.BaseName "a/b/c" }} → c
{{ path.BaseName "/x/y/z/" }} → z
{{ path.BaseName "" }} → .
```
@z
