%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: ByParam
description: Returns the given page collection sorted by the given parameter in ascending order.
categories: []
keywords: []
action:
  related:
    - methods/pages/ByTitle
    - methods/pages/ByLinkTitle
  returnType: page.Pages
  signatures: [PAGES.ByParam PARAM]
---
@y
---
title: ByParam
description: Returns the given page collection sorted by the given parameter in ascending order.
categories: []
keywords: []
action:
  related:
    - methods/pages/ByTitle
    - methods/pages/ByLinkTitle
  returnType: page.Pages
  signatures: [PAGES.ByParam PARAM]
---
@z

@x
If the given parameter is not present in front matter, Hugo will use the matching parameter in your site configuration if present.
@y
If the given parameter is not present in front matter, Hugo will use the matching parameter in your site configuration if present.
@z

@x
```go-html-template
{{ range .Pages.ByParam "author" }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.ByParam "author" }}
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
{{ range (.Pages.ByParam "author").Reverse }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range (.Pages.ByParam "author").Reverse }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z

@x
If the targeted parameter is nested, access the field using dot notation:
@y
If the targeted parameter is nested, access the field using dot notation:
@z

@x
```go-html-template
{{ range .Pages.ByParam "author.last_name" }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.ByParam "author.last_name" }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z
