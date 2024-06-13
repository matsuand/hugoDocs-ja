%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: PageGroups
description: Returns the page groups in the current pager.
categories: []
keywords: []
action:
  related:
    - methods/page/Paginate
  returnType: page.PagesGroup
  signatures: [PAGER.PageGroups]
---
@y
---
title: PageGroups
description: Returns the page groups in the current pager.
categories: []
keywords: []
action:
  related:
    - methods/page/Paginate
  returnType: page.PagesGroup
  signatures: [PAGER.PageGroups]
---
@z

@x
Use the `PageGroups` method with any of the [grouping methods].
@y
Use the `PageGroups` method with any of the [grouping methods].
@z

@x
[grouping methods]: /quick-reference/page-collections/#group
@y
[grouping methods]: /quick-reference/page-collections/#group
@z

@x
```go-html-template
{{ $pages := where site.RegularPages "Type" "posts" }}
{{ $paginator := .Paginate ($pages.GroupByDate "Jan 2006") }}
@y
```go-html-template
{{ $pages := where site.RegularPages "Type" "posts" }}
{{ $paginator := .Paginate ($pages.GroupByDate "Jan 2006") }}
@z

@x
{{ range $paginator.PageGroups }}
  <h2>{{ .Key }}</h2>
  {{ range .Pages }}
    <h3><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h3>
  {{ end }}
{{ end }}
@y
{{ range $paginator.PageGroups }}
  <h2>{{ .Key }}</h2>
  {{ range .Pages }}
    <h3><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h3>
  {{ end }}
{{ end }}
@z

@x
{{ template "_internal/pagination.html" . }}
```
@y
{{ template "_internal/pagination.html" . }}
```
@z
