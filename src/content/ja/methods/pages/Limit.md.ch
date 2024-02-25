%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Limit
description: Returns the first N pages from the given page collection.
categories: []
keywords: []
action:
  related: []
  returnType: page.Pages
  signatures: [PAGES.Limit NUMBER]
---
@y
---
title: Limit
description: Returns the first N pages from the given page collection.
categories: []
keywords: []
action:
  related: []
  returnType: page.Pages
  signatures: [PAGES.Limit NUMBER]
---
@z

@x
```go-html-template
{{ range .Pages.Limit 3 }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.Limit 3 }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z
