%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.First
description: Returns the given collection, limited to the first N elements.
categories: []
keywords: []
action:
  aliases: [first]
  related:
    - functions/collections/After
    - functions/collections/Last
    - methods/pages/Limit
  returnType: any
  signatures: [collections.First N COLLECTION]
aliases: [/functions/first]
---
@y
---
title: collections.First
description: Returns the given collection, limited to the first N elements.
categories: []
keywords: []
action:
  aliases: [first]
  related:
    - functions/collections/After
    - functions/collections/Last
    - methods/pages/Limit
  returnType: any
  signatures: [collections.First N COLLECTION]
aliases: [/functions/first]
---
@z

@x
```go-html-template
{{ range first 5 .Pages }}
  {{ .Render "summary" }}
{{ end }}
```
@y
```go-html-template
{{ range first 5 .Pages }}
  {{ .Render "summary" }}
{{ end }}
```
@z

@x
Set `N` to zero to return an empty collection.
@y
Set `N` to zero to return an empty collection.
@z

@x
```go-html-template
{{ $emptyPageCollection := first 0 .Pages}}
```
@y
```go-html-template
{{ $emptyPageCollection := first 0 .Pages}}
```
@z

@x
Use `first` and [`where`] together.
@y
Use `first` and [`where`] together.
@z

@x
```go-html-template
{{ range where .Pages "Section" "articles" | first 5 }}
  {{ .Render "summary" }}
{{ end }}
```
@y
```go-html-template
{{ range where .Pages "Section" "articles" | first 5 }}
  {{ .Render "summary" }}
{{ end }}
```
@z

@x
[`where`]: /functions/collections/where/
@y
[`where`]: /functions/collections/where/
@z
