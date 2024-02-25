%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: path.Join
description: Replaces path separators with slashes (`/`), joins the given path elements into a single path, and returns the shortest path name equivalent to the result.
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
    - functions/path/Split
    - functions/urls/JoinPath
  returnType: string
  signatures: [path.Join ELEMENT...]
aliases: [/functions/path.join]
---
@y
---
title: path.Join
description: Replaces path separators with slashes (`/`), joins the given path elements into a single path, and returns the shortest path name equivalent to the result.
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
    - functions/path/Split
    - functions/urls/JoinPath
  returnType: string
  signatures: [path.Join ELEMENT...]
aliases: [/functions/path.join]
---
@z

@x
See Go's [`path.Join`] and [`path.Clean`] documentation for details.
@y
See Go's [`path.Join`] and [`path.Clean`] documentation for details.
@z

@x
[`path.Clean`]: https://pkg.go.dev/path#Clean
[`path.Join`]: https://pkg.go.dev/path#Join
@y
[`path.Clean`]: https://pkg.go.dev/path#Clean
[`path.Join`]: https://pkg.go.dev/path#Join
@z

@x
```go-html-template
{{ path.Join "partial" "news.html" }} → partial/news.html
{{ path.Join "partial/" "news.html" }} → partial/news.html
{{ path.Join "foo/bar" "baz" }} → foo/bar/baz
{{ path.Join "foo" "bar" "baz" }} → foo/bar/baz
{{ path.Join "foo" "" "baz" }} → foo/baz
{{ path.Join "foo" "." "baz" }} → foo/baz
{{ path.Join "foo" ".." "baz" }} → baz
{{ path.Join "/.." "foo" ".." "baz" }} → baz
```
@y
```go-html-template
{{ path.Join "partial" "news.html" }} → partial/news.html
{{ path.Join "partial/" "news.html" }} → partial/news.html
{{ path.Join "foo/bar" "baz" }} → foo/bar/baz
{{ path.Join "foo" "bar" "baz" }} → foo/bar/baz
{{ path.Join "foo" "" "baz" }} → foo/baz
{{ path.Join "foo" "." "baz" }} → foo/baz
{{ path.Join "foo" ".." "baz" }} → baz
{{ path.Join "/.." "foo" ".." "baz" }} → baz
```
@z
