%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Pagers
description: Returns the pagers collection.
categories: []
keywords: []
action:
  related:
    - methods/page/Paginate
  returnType: page.pagers
  signatures: [PAGER.Pagers]
---
@y
---
title: Pagers
description: Returns the pagers collection.
categories: []
keywords: []
action:
  related:
    - methods/page/Paginate
  returnType: page.pagers
  signatures: [PAGER.Pagers]
---
@z

@x
Use the `Pagers` method to build navigation between pagers.
@y
Use the `Pagers` method to build navigation between pagers.
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
  <ul>
    {{ range .Pagers }}
      <li><a href="{{ .URL }}">{{ .PageNumber }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@y
{{ with $paginator }}
  <ul>
    {{ range .Pagers }}
      <li><a href="{{ .URL }}">{{ .PageNumber }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@z
