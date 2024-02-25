%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Colors
description: Applicable to images, returns a slice of the most dominant colors using a simple histogram method.
categories: []
keywords: []
action:
  related: []
  returnType: '[]string'
  signatures: [RESOURCE.Colors]
---
@y
---
title: Colors
description: Applicable to images, returns a slice of the most dominant colors using a simple histogram method.
categories: []
keywords: []
action:
  related: []
  returnType: '[]string'
  signatures: [RESOURCE.Colors]
---
@z

@x
{{< new-in 0.104.0 >}}
@y
{{< new-in 0.104.0 >}}
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .Colors }} → [#bebebd #514947 #768a9a #647789 #90725e #a48974]
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .Colors }} → [#bebebd #514947 #768a9a #647789 #90725e #a48974]
{{ end }}
```
@z

@x
This method is fast, but if you also scale down your images, it would be good for performance to extract the colors from the scaled image.
@y
This method is fast, but if you also scale down your images, it would be good for performance to extract the colors from the scaled image.
@z

@x
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@y
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@z
