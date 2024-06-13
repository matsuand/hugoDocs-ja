%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: URL
description: Returns the URL of the current pager relative to the site root.
categories: []
keywords: []
action:
  related:
    - methods/page/Paginate
  returnType: string
  signatures: [PAGER.URL]
---
@y
---
title: URL
description: Returns the URL of the current pager relative to the site root.
categories: []
keywords: []
action:
  related:
    - methods/page/Paginate
  returnType: string
  signatures: [PAGER.URL]
---
@z

@x
Use the `URL` method to build navigation between pagers.
@y
Use the `URL` method to build navigation between pagers.
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
