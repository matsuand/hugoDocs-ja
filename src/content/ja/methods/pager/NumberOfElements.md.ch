%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: NumberOfElements
description: Returns the number of pages in the current pager.
categories: []
keywords: []
action:
  related:
    - methods/pager/TotalNumberOfElements
    - methods/page/Paginate
  returnType: int
  signatures: [PAGER.NumberOfElements]
---
@y
---
title: NumberOfElements
description: Returns the number of pages in the current pager.
categories: []
keywords: []
action:
  related:
    - methods/pager/TotalNumberOfElements
    - methods/page/Paginate
  returnType: int
  signatures: [PAGER.NumberOfElements]
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
  {{ .NumberOfElements }}
{{ end }}
```
@y
{{ with $paginator }}
  {{ .NumberOfElements }}
{{ end }}
```
@z
