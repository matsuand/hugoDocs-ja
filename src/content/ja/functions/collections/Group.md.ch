%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Group
description: Groups the given page collection by the given key.
categories: []
keywords: []
action:
  aliases: [group]
  related: []
  returnType: any
  signatures: [collections.Group KEY PAGES]
aliases: [/functions/group]
---
@y
---
title: collections.Group
description: Groups the given page collection by the given key.
categories: []
keywords: []
action:
  aliases: [group]
  related: []
  returnType: any
  signatures: [collections.Group KEY PAGES]
aliases: [/functions/group]
---
@z

@x
```go-html-template
{{ $new := .Site.RegularPages | first 10 | group "New" }}
{{ $old := .Site.RegularPages | last 10 | group "Old" }}
{{ $groups := slice $new $old }}
{{ range $groups }}
  <h3>{{ .Key }}{{/* Prints "New", "Old" */}}</h3>
  <ul>
    {{ range .Pages }}
      <li>
        <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
        <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
      </li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ $new := .Site.RegularPages | first 10 | group "New" }}
{{ $old := .Site.RegularPages | last 10 | group "Old" }}
{{ $groups := slice $new $old }}
{{ range $groups }}
  <h3>{{ .Key }}{{/* Prints "New", "Old" */}}</h3>
  <ul>
    {{ range .Pages }}
      <li>
        <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
        <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
      </li>
    {{ end }}
  </ul>
{{ end }}
```
@z

@x
The page group you get from `group` is of the same type you get from the built-in [group methods](/templates/lists#group-content) in Hugo. The above example can be [paginated](/templates/pagination/#list-paginator-pages).
@y
The page group you get from `group` is of the same type you get from the built-in [group methods](/templates/lists#group-content) in Hugo. The above example can be [paginated](/templates/pagination/#list-paginator-pages).
@z
