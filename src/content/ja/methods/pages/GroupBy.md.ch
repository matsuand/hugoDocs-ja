%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: GroupBy
description: Returns the given page collection grouped by the given field in ascending order.
categories: []
keywords: []
action:
  related: []
  returnType: page.PagesGroup
  signatures: ['PAGES.GroupBy FIELD [SORT]']
---
@y
---
title: GroupBy
description: Returns the given page collection grouped by the given field in ascending order.
categories: []
keywords: []
action:
  related: []
  returnType: page.PagesGroup
  signatures: ['PAGES.GroupBy FIELD [SORT]']
---
@z

@x
{{% include "methods/pages/_common/group-sort-order.md" %}}
@y
{{% include "methods/pages/_common/group-sort-order.md" %}}
@z

@x
```go-html-template
{{ range .Pages.GroupBy "Section" }}
  <p>{{ .Key }}</p>
  <ul>
    {{ range .Pages }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.GroupBy "Section" }}
  <p>{{ .Key }}</p>
  <ul>
    {{ range .Pages }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@z

@x
To sort the groups in descending order:
@y
To sort the groups in descending order:
@z

@x
```go-html-template
{{ range .Pages.GroupBy "Section" "desc" }}
  <p>{{ .Key }}</p>
  <ul>
    {{ range .Pages }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.GroupBy "Section" "desc" }}
  <p>{{ .Key }}</p>
  <ul>
    {{ range .Pages }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@z
