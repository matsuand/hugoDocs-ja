%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Publish
description: Publishes the given resource.
categories: []
keywords: []
action:
  related:
    - methods/resource/Permalink
    - methods/resource/RelPermalink
  returnType: nil
  signatures: [RESOURCE.Publish]
---
@y
---
title: Publish
description: Publishes the given resource.
categories: []
keywords: []
action:
  related:
    - methods/resource/Permalink
    - methods/resource/RelPermalink
  returnType: nil
  signatures: [RESOURCE.Publish]
---
@z

@x
The `Publish` method on a `Resource` object writes the resource to the publish directory, typically `public`.
@y
The `Publish` method on a `Resource` object writes the resource to the publish directory, typically `public`.
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .Publish }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .Publish }}
{{ end }}
```
@z

@x
The `Permalink` and `RelPermalink` methods also publish a resource. `Publish` is a convenience method for publishing without a return value. For example, this:
@y
The `Permalink` and `RelPermalink` methods also publish a resource. `Publish` is a convenience method for publishing without a return value. For example, this:
@z

@x
```go-html-template
{{ $resource.Publish }}
```
@y
```go-html-template
{{ $resource.Publish }}
```
@z

@x
Instead of this:
@y
Instead of this:
@z

@x
```go-html-template
{{ $noop := $resource.Permalink }}
```
@y
```go-html-template
{{ $noop := $resource.Permalink }}
```
@z

@x
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@y
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@z
