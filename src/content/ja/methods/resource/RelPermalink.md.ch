%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: RelPermalink
description: Publishes the given resource and returns its relative permalink.
categories: []
keywords: []
action:
  related:
    - methods/resource/Permalink
    - methods/resource/Publish
  returnType: string
  signatures: [RESOURCE.RelPermalink]
---
@y
---
title: RelPermalink
description: Publishes the given resource and returns its relative permalink.
categories: []
keywords: []
action:
  related:
    - methods/resource/Permalink
    - methods/resource/Publish
  returnType: string
  signatures: [RESOURCE.RelPermalink]
---
@z

@x
The `Permalink` method on a `Resource` object writes the resource to the publish directory, typically `public`, and returns its [relative permalink].
@y
The `Permalink` method on a `Resource` object writes the resource to the publish directory, typically `public`, and returns its [relative permalink].
@z

@x
[relative permalink]: /getting-started/glossary/#relative-permalink
@y
[relative permalink]: /getting-started/glossary/#relative-permalink
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .RelPermalink }} → /images/a.jpg
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .RelPermalink }} → /images/a.jpg
{{ end }}
```
@z

@x
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@y
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@z
