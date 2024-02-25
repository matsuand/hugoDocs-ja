%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: ByTitle
description: Returns the given page collection sorted by title in ascending order.
categories: []
keywords: []
action:
  related:
    - methods/pages/ByLinkTitle
    - methods/pages/ByParam
  returnType: page.Pages
  signatures: [PAGES.ByTitle]
---
@y
---
title: ByTitle
description: Returns the given page collection sorted by title in ascending order.
categories: []
keywords: []
action:
  related:
    - methods/pages/ByLinkTitle
    - methods/pages/ByParam
  returnType: page.Pages
  signatures: [PAGES.ByTitle]
---
@z

@x
```go-html-template
{{ range .Pages.ByTitle }}
  <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.ByTitle }}
  <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
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
{{ range .Pages.ByTitle.Reverse }}
  <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.ByTitle.Reverse }}
  <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
{{ end }}
```
@z
