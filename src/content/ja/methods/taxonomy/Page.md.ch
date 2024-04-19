%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Page
description: Returns the taxonomy page or nil if the taxonomy has no terms.
categories: []
keywords: []
action:
  related: []
  returnType: page.Page
  signatures: [TAXONOMY.Page]
---
@y
---
title: Page
description: Returns the taxonomy page or nil if the taxonomy has no terms.
categories: []
keywords: []
action:
  related: []
  returnType: page.Page
  signatures: [TAXONOMY.Page]
---
@z

@x
{{< new-in 0.125.0 >}}
@y
{{< new-in 0.125.0 >}}
@z

@x
This `TAXONOMY` method returns nil if the taxonomy has no terms, so you must code defensively:
@y
This `TAXONOMY` method returns nil if the taxonomy has no terms, so you must code defensively:
@z

@x
```go-html-template
{{ with .Site.Taxonomies.tags.Page }}
  <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
{{ end }}
```
@y
```go-html-template
{{ with .Site.Taxonomies.tags.Page }}
  <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
{{ end }}
```
@z

@x
This is rendered to:
@y
This is rendered to:
@z

@x
```html
<a href="/tags/">Tags</a>
```
@y
```html
<a href="/tags/">Tags</a>
```
@z
