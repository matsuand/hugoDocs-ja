%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Pages
description: Returns the pages in the current pager.
categories: []
keywords: []
action:
  related:
    - methods/page/Paginate
  returnType: page.Pages
  signatures: [PAGER.Pages]
---
@y
---
title: Pages
description: Returns the pages in the current pager.
categories: []
keywords: []
action:
  related:
    - methods/page/Paginate
  returnType: page.Pages
  signatures: [PAGER.Pages]
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
{{ template "_internal/pagination.html" . }}
```
@y
{{ template "_internal/pagination.html" . }}
```
@z
