%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: ByWeight
description: Returns the given page collection sorted by weight in ascending order.
categories: []
keywords: []
action:
  related: []
  returnType: page.Pages
  signatures: [PAGES.ByWeight]
---
@y
---
title: ByWeight
description: Returns the given page collection sorted by weight in ascending order.
categories: []
keywords: []
action:
  related: []
  returnType: page.Pages
  signatures: [PAGES.ByWeight]
---
@z

@x
Assign a [weight] to a page using the `weight` field in front matter. The weight must be a non-zero integer. Lighter items float to the top, while heavier items sink to the bottom. Unweighted or zero-weighted pages are placed at the end of the collection.
@y
Assign a [weight] to a page using the `weight` field in front matter. The weight must be a non-zero integer. Lighter items float to the top, while heavier items sink to the bottom. Unweighted or zero-weighted pages are placed at the end of the collection.
@z

@x
[weight]: /getting-started/glossary/#weight
@y
[weight]: /getting-started/glossary/#weight
@z

@x
```go-html-template
{{ range .Pages.ByWeight }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.ByWeight }}
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
{{ range .Pages.ByWeight.Reverse }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.ByWeight.Reverse }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z
