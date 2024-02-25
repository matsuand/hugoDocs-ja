%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: GroupByParam
description: Returns the given page collection grouped by the given parameter in ascending order.
categories: []
keywords: []
action:
  related: []
  returnType: page.PagesGroup
  signatures: ['PAGES.GroupByParam PARAM [SORT]']
---
@y
---
title: GroupByParam
description: Returns the given page collection grouped by the given parameter in ascending order.
categories: []
keywords: []
action:
  related: []
  returnType: page.PagesGroup
  signatures: ['PAGES.GroupByParam PARAM [SORT]']
---
@z

@x
{{% include "methods/pages/_common/group-sort-order.md" %}}
@y
{{% include "methods/pages/_common/group-sort-order.md" %}}
@z

@x
```go-html-template
{{ range .Pages.GroupByParam "color" }}
  <p>{{ .Key | title }}</p>
  <ul>
    {{ range .Pages }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.GroupByParam "color" }}
  <p>{{ .Key | title }}</p>
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
{{ range .Pages.GroupByParam "color" "desc" }}
  <p>{{ .Key | title }}</p>
  <ul>
    {{ range .Pages }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.GroupByParam "color" "desc" }}
  <p>{{ .Key | title }}</p>
  <ul>
    {{ range .Pages }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@z
