%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Resources
description: Returns a collection of page resources.
categories: []
keywords: []
action:
  related:
    - functions/resources/ByType
    - functions/resources/Get
    - functions/resources/GetMatch
    - functions/resources/GetRemote
    - functions/resources/Match
  returnType: resource.Resources
  signatures: [PAGE.Resources]
toc: true
---
@y
---
title: Resources
description: Returns a collection of page resources.
categories: []
keywords: []
action:
  related:
    - functions/resources/ByType
    - functions/resources/Get
    - functions/resources/GetMatch
    - functions/resources/GetRemote
    - functions/resources/Match
  returnType: resource.Resources
  signatures: [PAGE.Resources]
toc: true
---
@z

@x
The `Resources` method on a `Page` object returns a collection of page resources. A page resource is a file within a [page bundle].
@y
The `Resources` method on a `Page` object returns a collection of page resources. A page resource is a file within a [page bundle].
@z

@x
To work with global or remote resources, see the [`resources`] functions.
@y
To work with global or remote resources, see the [`resources`] functions.
@z

@x
## Methods
@y
## Methods
@z

@x
###### ByType
@y
###### ByType
@z

@x
(`resource.Resources`) Returns a collection of page resources of the given [media type], or nil if none found. The media type is typically one of `image`, `text`, `audio`, `video`, or `application`.
@y
(`resource.Resources`) Returns a collection of page resources of the given [media type], or nil if none found. The media type is typically one of `image`, `text`, `audio`, `video`, or `application`.
@z

@x
```go-html-template
{{ range .Resources.ByType "image" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ end }}
```
@y
```go-html-template
{{ range .Resources.ByType "image" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ end }}
```
@z

@x
When working with global resources instead of page resources, use the [`resources.ByType`] function.
@y
When working with global resources instead of page resources, use the [`resources.ByType`] function.
@z

@x
###### Get
@y
###### Get
@z

@x
(`resource.Resource`) Returns a page resource from the given path, or nil if none found.
@y
(`resource.Resource`) Returns a page resource from the given path, or nil if none found.
@z

@x
```go-html-template
{{ with .Resources.Get "images/a.jpg" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ end }}
```
@y
```go-html-template
{{ with .Resources.Get "images/a.jpg" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ end }}
```
@z

@x
When working with global resources instead of page resources, use the [`resources.Get`] function.
@y
When working with global resources instead of page resources, use the [`resources.Get`] function.
@z

@x
###### GetMatch
@y
###### GetMatch
@z

@x
(`resource.Resource`) Returns the first page resource from paths matching the given [glob pattern], or nil if none found.
@y
(`resource.Resource`) Returns the first page resource from paths matching the given [glob pattern], or nil if none found.
@z

@x
```go-html-template
{{ with .Resources.GetMatch "images/*.jpg" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ end }}
```
@y
```go-html-template
{{ with .Resources.GetMatch "images/*.jpg" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ end }}
```
@z

@x
When working with global resources instead of page resources, use the [`resources.GetMatch`] function.
@y
When working with global resources instead of page resources, use the [`resources.GetMatch`] function.
@z

@x
###### Match
@y
###### Match
@z

@x
(`resource.Resources`) Returns a collection of page resources from paths matching the given [glob pattern], or nil if none found.
@y
(`resource.Resources`) Returns a collection of page resources from paths matching the given [glob pattern], or nil if none found.
@z

@x
```go-html-template
{{ range .Resources.Match "images/*.jpg" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ end }}
```
@y
```go-html-template
{{ range .Resources.Match "images/*.jpg" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ end }}
```
@z

@x
When working with global resources instead of page resources, use the [`resources.Match`] function.
@y
When working with global resources instead of page resources, use the [`resources.Match`] function.
@z

@x
## Pattern matching
@y
## Pattern matching
@z

@x
With the `GetMatch` and `Match` methods, Hugo determines a match using a case-insensitive [glob pattern].
@y
With the `GetMatch` and `Match` methods, Hugo determines a match using a case-insensitive [glob pattern].
@z

@x
{{% include "functions/_common/glob-patterns.md" %}}
@y
{{% include "functions/_common/glob-patterns.md" %}}
@z

@x
[`resources.ByType`]: /functions/resources/ByType/
[`resources.GetMatch`]: /functions/resources/ByType/
[`resources.Get`]: /functions/resources/ByType/
[`resources.Match`]: /functions/resources/ByType/
[`resources`]: /functions/resources/
[glob pattern]: https://github.com/gobwas/glob#example
[media type]: https://en.wikipedia.org/wiki/Media_type
[page bundle]: /getting-started/glossary/#page-bundle
@y
[`resources.ByType`]: /functions/resources/ByType/
[`resources.GetMatch`]: /functions/resources/ByType/
[`resources.Get`]: /functions/resources/ByType/
[`resources.Match`]: /functions/resources/ByType/
[`resources`]: /functions/resources/
[glob pattern]: https://github.com/gobwas/glob#example
[media type]: https://en.wikipedia.org/wiki/Media_type
[page bundle]: /getting-started/glossary/#page-bundle
@z
