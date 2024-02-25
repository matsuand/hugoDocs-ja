%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: resources.Get
description: Returns a global resource from the given path, or nil if none found.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/resources/ByType
    - functions/resources/GetMatch
    - functions/resources/GetRemote
    - functions/resources/Match
    - methods/page/Resources
  returnType: resource.Resource
  signatures: [resources.Get PATH]
---
@y
---
title: resources.Get
description: Returns a global resource from the given path, or nil if none found.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/resources/ByType
    - functions/resources/GetMatch
    - functions/resources/GetRemote
    - functions/resources/Match
    - methods/page/Resources
  returnType: resource.Resource
  signatures: [resources.Get PATH]
---
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
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
For page resources, use the [`Resources.Get`] method on the Page object.
@y
For page resources, use the [`Resources.Get`] method on the Page object.
@z

@x
[`Resources.Get`]: /methods/page/resources/
{{% /note %}}
@y
[`Resources.Get`]: /methods/page/resources/
{{% /note %}}
@z
