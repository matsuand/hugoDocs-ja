%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Permalink
description:  Publishes the given resource and returns its permalink.
categories: []
keywords: []
action:
  related:
    - methods/resource/RelPermalink
    - methods/resource/Publish
  returnType: string
  signatures: [RESOURCE.Permalink]
---
@y
---
title: Permalink
description:  Publishes the given resource and returns its permalink.
categories: []
keywords: []
action:
  related:
    - methods/resource/RelPermalink
    - methods/resource/Publish
  returnType: string
  signatures: [RESOURCE.Permalink]
---
@z

@x
The `Permalink` method on a `Resource` object writes the resource to the publish directory, typically `public`, and returns its [permalink].
@y
The `Permalink` method on a `Resource` object writes the resource to the publish directory, typically `public`, and returns its [permalink].
@z

@x
[permalink]: /getting-started/glossary/#permalink
@y
[permalink]: /getting-started/glossary/#permalink
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .Permalink }} → https://example.org/images/a.jpg
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .Permalink }} → https://example.org/images/a.jpg
{{ end }}
```
@z

@x
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@y
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@z
