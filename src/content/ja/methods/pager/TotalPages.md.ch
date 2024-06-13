%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: TotalPages
description: Returns the number of pagers in the pager collection.
categories: []
keywords: []
action:
  related:
    - methods/pager/PageNumber
    - methods/page/Paginate
  returnType: int
  signatures: [PAGER.TotalPages]
---
@y
---
title: TotalPages
description: Returns the number of pagers in the pager collection.
categories: []
keywords: []
action:
  related:
    - methods/pager/PageNumber
    - methods/page/Paginate
  returnType: int
  signatures: [PAGER.TotalPages]
---
@z

@x
Use the `TotalPages` method to build navigation between pagers.
@y
Use the `TotalPages` method to build navigation between pagers.
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
  <p>Pager {{ .PageNumber }} of {{ .TotalPages }}</p>
  <ul>
    {{ with .First }}
      <li><a href="{{ .URL }}">First</a></li>
    {{ end }}
    {{ with .Prev }}
      <li><a href="{{ .URL }}">Previous</a></li>
    {{ end }}
    {{ with .Next }}
      <li><a href="{{ .URL }}">Next</a></li>
    {{ end }}
    {{ with .Last }}
      <li><a href="{{ .URL }}">Last</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@y
{{ with $paginator }}
  <p>Pager {{ .PageNumber }} of {{ .TotalPages }}</p>
  <ul>
    {{ with .First }}
      <li><a href="{{ .URL }}">First</a></li>
    {{ end }}
    {{ with .Prev }}
      <li><a href="{{ .URL }}">Previous</a></li>
    {{ end }}
    {{ with .Next }}
      <li><a href="{{ .URL }}">Next</a></li>
    {{ end }}
    {{ with .Last }}
      <li><a href="{{ .URL }}">Last</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@z
