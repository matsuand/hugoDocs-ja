%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: urls.JoinPath
description: Joins the provided elements into a URL string and cleans the result of any ./ or ../ elements. If the argument list is empty, JoinPath returns an empty string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/path/Join
  returnType: string
  signatures: [urls.JoinPath ELEMENT...]
aliases: [/functions/urls.joinpath]
---
@y
---
title: urls.JoinPath
description: Joins the provided elements into a URL string and cleans the result of any ./ or ../ elements. If the argument list is empty, JoinPath returns an empty string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/path/Join
  returnType: string
  signatures: [urls.JoinPath ELEMENT...]
aliases: [/functions/urls.joinpath]
---
@z

@x
{{< new-in 0.112.0 >}}
@y
{{< new-in 0.112.0 >}}
@z

@x
```go-html-template
{{ urls.JoinPath }} → "" (empty string)
{{ urls.JoinPath "" }} → /
{{ urls.JoinPath "a" }} → a
{{ urls.JoinPath "a" "b" }} → a/b
{{ urls.JoinPath "/a" "b" }} → /a/b
{{ urls.JoinPath "https://example.org" "b" }} → https://example.org/b
@y
```go-html-template
{{ urls.JoinPath }} → "" (empty string)
{{ urls.JoinPath "" }} → /
{{ urls.JoinPath "a" }} → a
{{ urls.JoinPath "a" "b" }} → a/b
{{ urls.JoinPath "/a" "b" }} → /a/b
{{ urls.JoinPath "https://example.org" "b" }} → https://example.org/b
@z

@x
{{ urls.JoinPath (slice "a" "b") }} → a/b
```
@y
{{ urls.JoinPath (slice "a" "b") }} → a/b
```
@z

@x
Unlike the [`path.Join`] function, `urls.JoinPath` retains consecutive leading slashes.
@y
Unlike the [`path.Join`] function, `urls.JoinPath` retains consecutive leading slashes.
@z

@x
[`path.Join`]: /functions/path/join/
@y
[`path.Join`]: /functions/path/join/
@z
