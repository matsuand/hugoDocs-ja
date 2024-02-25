%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Width
description: Applicable to images, returns the width of the given resource.
categories: []
keywords: []
action:
  related:
    - methods/resource/Height
  returnType: int
  signatures: [RESOURCE.Width]
---
@y
---
title: Width
description: Applicable to images, returns the width of the given resource.
categories: []
keywords: []
action:
  related:
    - methods/resource/Height
  returnType: int
  signatures: [RESOURCE.Width]
---
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .Width }} → 600
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .Width }} → 600
{{ end }}
```
@z

@x
Use the `Width` and `Height` methods together when rendering an `img` element:
@y
Use the `Width` and `Height` methods together when rendering an `img` element:
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}">
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}">
{{ end }}
```
@z

@x
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@y
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@z
