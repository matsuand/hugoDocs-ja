%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Querify
description: Takes a set or slice of key-value pairs and returns a query string to be appended to URLs.
categories: []
keywords: []
action:
  aliases: [querify]
  related:
    - functions/go-template/urlquery.md
  returnType: string
  signatures:
    - collections.Querify VALUE [VALUE...]
    - collections.Querify COLLECTION
aliases: [/functions/querify]
---
@y
---
title: collections.Querify
description: Takes a set or slice of key-value pairs and returns a query string to be appended to URLs.
categories: []
keywords: []
action:
  aliases: [querify]
  related:
    - functions/go-template/urlquery.md
  returnType: string
  signatures:
    - collections.Querify VALUE [VALUE...]
    - collections.Querify COLLECTION
aliases: [/functions/querify]
---
@z

@x
`querify` takes a set or slice of key-value pairs and returns a [query string](https://en.wikipedia.org/wiki/Query_string) that can be appended to a URL.
@y
`querify` takes a set or slice of key-value pairs and returns a [query string](https://en.wikipedia.org/wiki/Query_string) that can be appended to a URL.
@z

@x
The following examples create a link to a search results page on Google.
@y
The following examples create a link to a search results page on Google.
@z

@x
```go-html-template
<a href="https://www.google.com?{{ (querify "q" "test" "page" 3) | safeURL }}">Search</a>
@y
```go-html-template
<a href="https://www.google.com?{{ (querify "q" "test" "page" 3) | safeURL }}">Search</a>
@z

@x
{{ $qs := slice "q" "test" "page" 3 }}
<a href="https://www.google.com?{{ (querify $qs) | safeURL }}">Search</a>
```
@y
{{ $qs := slice "q" "test" "page" 3 }}
<a href="https://www.google.com?{{ (querify $qs) | safeURL }}">Search</a>
```
@z

@x
Both of these examples render the following HTML:
@y
Both of these examples render the following HTML:
@z

@x
```html
<a href="https://www.google.com?page=3&q=test">Search</a>
```
@y
```html
<a href="https://www.google.com?page=3&q=test">Search</a>
```
@z
