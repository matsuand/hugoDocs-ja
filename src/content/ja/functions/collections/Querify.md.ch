%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Querify
description: Returns a URL query string composed of the given key-value pairs.
categories: []
keywords: []
action:
  aliases: [querify]
  related:
    - functions/go-template/urlquery.md
  returnType: string
  signatures:
    - collections.Querify [VALUE...]
aliases: [/functions/querify]
---
@y
---
title: collections.Querify
description: Returns a URL query string composed of the given key-value pairs.
categories: []
keywords: []
action:
  aliases: [querify]
  related:
    - functions/go-template/urlquery.md
  returnType: string
  signatures:
    - collections.Querify [VALUE...]
aliases: [/functions/querify]
---
@z

@x
Specify the key-value pairs as individual arguments, or as a slice. The following are equivalent:
@y
Specify the key-value pairs as individual arguments, or as a slice. The following are equivalent:
@z

@x
```go-html-template
{{ collections.Querify "a" 1 "b" 2 }}
{{ collections.Querify (slice "a" 1 "b" 2) }}
```
@y
```go-html-template
{{ collections.Querify "a" 1 "b" 2 }}
{{ collections.Querify (slice "a" 1 "b" 2) }}
```
@z

@x
To append a query string to a URL:
@y
To append a query string to a URL:
@z

@x
```go-html-template
{{ $qs := collections.Querify "a" 1 "b" 2 }}
{{ $href := printf "https://example.org?%s" $qs }}
@y
```go-html-template
{{ $qs := collections.Querify "a" 1 "b" 2 }}
{{ $href := printf "https://example.org?%s" $qs }}
@z

@x
<a href="{{ $href }}">Link</a>
```
@y
<a href="{{ $href }}">Link</a>
```
@z

@x
Hugo renders this to:
@y
Hugo renders this to:
@z

@x
```html
<a href="https://example.org?a=1&amp;b=2">Link</a>
```
@y
```html
<a href="https://example.org?a=1&amp;b=2">Link</a>
```
@z
