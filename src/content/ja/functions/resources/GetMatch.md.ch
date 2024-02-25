%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: resources.GetMatch
description: Returns the first global resource from paths matching the given glob pattern, or nil if none found.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/resources/ByType
    - functions/resources/Get
    - functions/resources/GetRemote
    - functions/resources/Match
    - methods/page/Resources
  returnType: resource.Resource
  signatures: [resources.GetMatch PATTERN]
---
@y
---
title: resources.GetMatch
description: Returns the first global resource from paths matching the given glob pattern, or nil if none found.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/resources/ByType
    - functions/resources/Get
    - functions/resources/GetRemote
    - functions/resources/Match
    - methods/page/Resources
  returnType: resource.Resource
  signatures: [resources.GetMatch PATTERN]
---
@z

@x
```go-html-template
{{ with resources.GetMatch "images/*.jpg" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ end }}
```
@y
```go-html-template
{{ with resources.GetMatch "images/*.jpg" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ end }}
```
@z

@x
{{% note %}}
This function operates on global resources. A global resource is a file within the assets directory, or within any directory mounted to the assets directory.
@y
{{% note %}}
This function operates on global resources. A global resource is a file within the assets directory, or within any directory mounted to the assets directory.
@z

@x
For page resources, use the [`Resources.GetMatch`] method on the Page object.
@y
For page resources, use the [`Resources.GetMatch`] method on the Page object.
@z

@x
[`Resources.GetMatch`]: /methods/page/resources/
{{% /note %}}
@y
[`Resources.GetMatch`]: /methods/page/resources/
{{% /note %}}
@z

@x
Hugo determines a match using a case-insensitive [glob pattern].
@y
Hugo determines a match using a case-insensitive [glob pattern].
@z

@x
{{% include "functions/_common/glob-patterns.md" %}}
@y
{{% include "functions/_common/glob-patterns.md" %}}
@z

@x
[glob pattern]: https://github.com/gobwas/glob#example
@y
[glob pattern]: https://github.com/gobwas/glob#example
@z
