%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: ByLanguage
description: Returns the given page collection sorted by language in ascending order.
categories: []
keywords: []
action:
  related: []
  returnType: page.Pages
  signatures: [PAGES.ByLanguage]
---
@y
---
title: ByLanguage
description: Returns the given page collection sorted by language in ascending order.
categories: []
keywords: []
action:
  related: []
  returnType: page.Pages
  signatures: [PAGES.ByLanguage]
---
@z

@x
```go-html-template
{{ range .Site.AllPages.ByLanguage }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Site.AllPages.ByLanguage }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z

@x
To sort in descending order:
@y
To sort in descending order:
@z

@x
```go-html-template
{{ range .Site.AllPages.ByLanguage.Reverse }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Site.AllPages.ByLanguage.Reverse }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z
