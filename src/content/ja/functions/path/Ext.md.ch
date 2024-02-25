%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: path.Ext
description: Replaces path separators with slashes (`/`) and returns the file name extension of the given path.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/path/Base
    - functions/path/BaseName
    - functions/path/Clean
    - functions/path/Dir
    - functions/path/Join
    - functions/path/Split
  returnType: string
  signatures: [path.Ext PATH]
aliases: [/functions/path.ext]
---
@y
---
title: path.Ext
description: Replaces path separators with slashes (`/`) and returns the file name extension of the given path.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/path/Base
    - functions/path/BaseName
    - functions/path/Clean
    - functions/path/Dir
    - functions/path/Join
    - functions/path/Split
  returnType: string
  signatures: [path.Ext PATH]
aliases: [/functions/path.ext]
---
@z

@x
The extension is the suffix beginning at the final dot in the final slash-separated element of path; it is empty if there is no dot.
@y
The extension is the suffix beginning at the final dot in the final slash-separated element of path; it is empty if there is no dot.
@z

@x
```go-html-template
{{ path.Ext "a/b/c/news.html" }} → .html
```
@y
```go-html-template
{{ path.Ext "a/b/c/news.html" }} → .html
```
@z
