%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Next
description: Returns the next pager in the pager collection.
categories: []
keywords: []
action:
  related:
    - methods/pager/Prev
    - methods/pager/HasPrev
    - methods/pager/HasNext
    - methods/pager/First
    - methods/pager/Last
    - methods/page/Paginate
  returnType: page.Pager
  signatures: [PAGER.Next]
---
@y
---
title: Next
description: Returns the next pager in the pager collection.
categories: []
keywords: []
action:
  related:
    - methods/pager/Prev
    - methods/pager/HasPrev
    - methods/pager/HasNext
    - methods/pager/First
    - methods/pager/Last
    - methods/page/Paginate
  returnType: page.Pager
  signatures: [PAGER.Next]
---
@z

@x
Use the `Next` method to build navigation between pagers.
@y
Use the `Next` method to build navigation between pagers.
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
