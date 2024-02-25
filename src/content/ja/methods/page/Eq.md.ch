%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Eq
description: Reports whether two Page objects are equal.
categories: []
keywords: []
action:
  related: []
  returnType: bool
  signatures: [PAGE1.Eq PAGE2]
---
@y
---
title: Eq
description: Reports whether two Page objects are equal.
categories: []
keywords: []
action:
  related: []
  returnType: bool
  signatures: [PAGE1.Eq PAGE2]
---
@z

@x
In this contrived example from a single page template, we list all pages in the current section except for the current page.
@y
In this contrived example from a single page template, we list all pages in the current section except for the current page.
@z

@x
```go-html-template
{{ $currentPage := . }}
{{ range .CurrentSection.Pages  }}
  {{ if not (.Eq $currentPage) }}
    <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ $currentPage := . }}
{{ range .CurrentSection.Pages  }}
  {{ if not (.Eq $currentPage) }}
    <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
  {{ end }}
{{ end }}
```
@z
