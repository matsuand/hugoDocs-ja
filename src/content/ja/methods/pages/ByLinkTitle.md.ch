%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: ByLinkTitle
description: Returns the given page collection sorted by link title in ascending order, falling back to title if link title is not defined.
categories: []
keywords: []
action:
  related:
    - methods/pages/ByTitle
    - methods/pages/ByParam
  returnType: page.Pages
  signatures: [PAGES.ByLinkTitle]
---
@y
---
title: ByLinkTitle
description: Returns the given page collection sorted by link title in ascending order, falling back to title if link title is not defined.
categories: []
keywords: []
action:
  related:
    - methods/pages/ByTitle
    - methods/pages/ByParam
  returnType: page.Pages
  signatures: [PAGES.ByLinkTitle]
---
@z

@x
```go-html-template
{{ range .Pages.ByLinkTitle }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.ByLinkTitle }}
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
{{ range .Pages.ByLinkTitle.Reverse }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.ByLinkTitle.Reverse }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z
