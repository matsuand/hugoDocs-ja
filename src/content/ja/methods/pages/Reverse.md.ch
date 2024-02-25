%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Reverse
description: Returns the given page collection in reverse order.
categories: []
keywords: []
action:
  related: []
  returnType: page.Pages
  signatures: [PAGES.Reverse]
---
@y
---
title: Reverse
description: Returns the given page collection in reverse order.
categories: []
keywords: []
action:
  related: []
  returnType: page.Pages
  signatures: [PAGES.Reverse]
---
@z

@x
```go-html-template
{{ range .Pages.ByDate.Reverse }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.ByDate.Reverse }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z
