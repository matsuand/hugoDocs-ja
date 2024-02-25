%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: ByLastmod
description: Returns the given page collection sorted by last modification date in ascending order.
categories: []
keywords: []
action:
  related:
    - methods/pages/ByDate
    - methods/pages/ByExpiryDate
    - methods/pages/ByPublishDate
  returnType: page.Pages
  signatures: [PAGES.ByLastmod]
---
@y
---
title: ByLastmod
description: Returns the given page collection sorted by last modification date in ascending order.
categories: []
keywords: []
action:
  related:
    - methods/pages/ByDate
    - methods/pages/ByExpiryDate
    - methods/pages/ByPublishDate
  returnType: page.Pages
  signatures: [PAGES.ByLastmod]
---
@z

@x
When sorting by last modification date, the value is determined by your [site configuration], defaulting to the `lastmod` field in front matter.
@y
When sorting by last modification date, the value is determined by your [site configuration], defaulting to the `lastmod` field in front matter.
@z

@x
[site configuration]: /getting-started/configuration/#configure-dates
@y
[site configuration]: /getting-started/configuration/#configure-dates
@z

@x
```go-html-template
{{ range .Pages.ByLastmod }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.ByLastmod }}
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
{{ range .Pages.ByLastmod.Reverse }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.ByLastmod.Reverse }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z
