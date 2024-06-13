%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: PageSize
description: Returns the maximum number of pages per pager.
categories: []
keywords: []
action:
  related:
    - methods/page/Paginate
  returnType: int
  signatures: [PAGER.PageSize]
---
@y
---
title: PageSize
description: Returns the maximum number of pages per pager.
categories: []
keywords: []
action:
  related:
    - methods/page/Paginate
  returnType: int
  signatures: [PAGER.PageSize]
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
  {{ .PageSize }}
{{ end }}
```
@y
{{ with $paginator }}
  {{ .PageSize }}
{{ end }}
```
@z
