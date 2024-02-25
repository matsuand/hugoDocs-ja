%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: ByDate
description: Returns the given page collection sorted by date in ascending order.
categories: []
keywords: []
action:
  related:
    - methods/pages/ByExpiryDate
    - methods/pages/ByLastMod
    - methods/pages/ByPublishDate
  returnType: page.Pages
  signatures: [PAGES.ByDate]
---
@y
---
title: ByDate
description: Returns the given page collection sorted by date in ascending order.
categories: []
keywords: []
action:
  related:
    - methods/pages/ByExpiryDate
    - methods/pages/ByLastMod
    - methods/pages/ByPublishDate
  returnType: page.Pages
  signatures: [PAGES.ByDate]
---
@z

@x
When sorting by date, the value is determined by your [site configuration], defaulting to the `date` field in front matter.
@y
When sorting by date, the value is determined by your [site configuration], defaulting to the `date` field in front matter.
@z

@x
[site configuration]: /getting-started/configuration/#configure-dates
@y
[site configuration]: /getting-started/configuration/#configure-dates
@z

@x
```go-html-template
{{ range .Pages.ByDate }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.ByDate }}
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
