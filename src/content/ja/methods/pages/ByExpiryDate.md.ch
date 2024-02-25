%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: ByExpiryDate
description: Returns the given page collection sorted by expiration date in ascending order.
categories: []
keywords: []
action:
  related:
    - methods/pages/ByDate
    - methods/pages/ByLastMod
    - methods/pages/ByPublishDate
  returnType: page.Pages
  signatures: [PAGES.ByExpiryDate]
---
@y
---
title: ByExpiryDate
description: Returns the given page collection sorted by expiration date in ascending order.
categories: []
keywords: []
action:
  related:
    - methods/pages/ByDate
    - methods/pages/ByLastMod
    - methods/pages/ByPublishDate
  returnType: page.Pages
  signatures: [PAGES.ByExpiryDate]
---
@z

@x
When sorting by expiration date, the value is determined by your [site configuration], defaulting to the `expiryDate` field in front matter.
@y
When sorting by expiration date, the value is determined by your [site configuration], defaulting to the `expiryDate` field in front matter.
@z

@x
[site configuration]: /getting-started/configuration/#configure-dates
@y
[site configuration]: /getting-started/configuration/#configure-dates
@z

@x
```go-html-template
{{ range .Pages.ByExpiryDate }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.ByExpiryDate }}
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
{{ range .Pages.ByExpiryDate.Reverse }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.ByExpiryDate.Reverse }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z
