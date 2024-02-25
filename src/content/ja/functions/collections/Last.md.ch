%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Last
description: Returns the given collection, limited to the last N elements.
categories: []
keywords: []
action:
  aliases: [last]
  related:
    - functions/collections/After
    - functions/collections/First
  returnType: any
  signatures: [collections.Last N COLLECTION]
aliases: [/functions/last]
---
@y
---
title: collections.Last
description: Returns the given collection, limited to the last N elements.
categories: []
keywords: []
action:
  aliases: [last]
  related:
    - functions/collections/After
    - functions/collections/First
  returnType: any
  signatures: [collections.Last N COLLECTION]
aliases: [/functions/last]
---
@z

@x
```go-html-template
{{ range last 10 .Pages }}
  {{ .Render "summary" }}
{{ end }}
```
@y
```go-html-template
{{ range last 10 .Pages }}
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
{{ $emptyPageCollection := last 0 .Pages}}
```
@y
```go-html-template
{{ $emptyPageCollection := last 0 .Pages}}
```
@z

@x
Use `last` and [`where`] together.
@y
Use `last` and [`where`] together.
@z

@x
```go-html-template
{{ range where .Pages "Section" "articles" | last 5 }}
  {{ .Render "summary" }}
{{ end }}
```
@y
```go-html-template
{{ range where .Pages "Section" "articles" | last 5 }}
  {{ .Render "summary" }}
{{ end }}
```
@z
