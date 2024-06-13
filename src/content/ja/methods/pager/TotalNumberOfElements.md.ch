%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: TotalNumberOfElements
description: Returns the number of pages in the pager collection.
categories: []
keywords: []
action:
  related:
    - methods/pager/NumberOfElements
    - methods/page/Paginate
  returnType: int
  signatures: [PAGER.TotalNumberOfElements]
---
@y
---
title: TotalNumberOfElements
description: Returns the number of pages in the pager collection.
categories: []
keywords: []
action:
  related:
    - methods/pager/NumberOfElements
    - methods/page/Paginate
  returnType: int
  signatures: [PAGER.TotalNumberOfElements]
---
@z

@x
```go-html-template
{{ $pages := where site.RegularPages "Type" "posts" }}
{{ $paginator := .Paginate $pages }}
@y
```go-html-template
{{ $pages := where site.RegularPages "Type" "posts" }}
{{ $paginator := .Paginate $pages }}
@z

@x
{{ range $paginator.Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
@y
{{ range $paginator.Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
@z

@x
{{ with $paginator }}
  {{ .TotalNumberOfElements }}
{{ end }}
```
@y
{{ with $paginator }}
  {{ .TotalNumberOfElements }}
{{ end }}
```
@z
