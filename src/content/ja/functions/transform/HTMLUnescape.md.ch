%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: transform.HTMLUnescape
description: Returns the given string, replacing each HTML entity with its corresponding character.
categories: []
keywords: []
action:
  aliases: [htmlUnescape]
  related:
    - functions/transform/HTMLEscape
  returnType: string
  signatures: [transform.HTMLUnescape INPUT]
aliases: [/functions/htmlunescape]
---
@y
---
title: transform.HTMLUnescape
description: Returns the given string, replacing each HTML entity with its corresponding character.
categories: []
keywords: []
action:
  aliases: [htmlUnescape]
  related:
    - functions/transform/HTMLEscape
  returnType: string
  signatures: [transform.HTMLUnescape INPUT]
aliases: [/functions/htmlunescape]
---
@z

@x
The `transform.HTMLUnescape` function replaces [HTML entities] with their corresponding characters.
@y
The `transform.HTMLUnescape` function replaces [HTML entities] with their corresponding characters.
@z

@x
```go-html-template
{{ htmlUnescape "Lilo &amp; Stitch" }} → Lilo & Stitch
{{ htmlUnescape "7 &gt; 6" }} → 7 > 6
```
@y
```go-html-template
{{ htmlUnescape "Lilo &amp; Stitch" }} → Lilo & Stitch
{{ htmlUnescape "7 &gt; 6" }} → 7 > 6
```
@z

@x
In most contexts Go's [html/template] package will escape special characters. To bypass this behavior, pass the unescaped string through the [`safeHTML`] function.
@y
In most contexts Go's [html/template] package will escape special characters. To bypass this behavior, pass the unescaped string through the [`safeHTML`] function.
@z

@x
```go-html-template
{{ htmlUnescape "Lilo &amp; Stitch" | safeHTML }}
```
@y
```go-html-template
{{ htmlUnescape "Lilo &amp; Stitch" | safeHTML }}
```
@z

@x
[`safehtml`]: /functions/safe/html/
[html entities]: https://developer.mozilla.org/en-us/docs/glossary/entity
[html/template]: https://pkg.go.dev/html/template
@y
[`safehtml`]: /functions/safe/html/
[html entities]: https://developer.mozilla.org/en-us/docs/glossary/entity
[html/template]: https://pkg.go.dev/html/template
@z
