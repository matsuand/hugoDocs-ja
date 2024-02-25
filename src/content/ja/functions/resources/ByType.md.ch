%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: resources.ByType
description: Returns a collection of global resources of the given media type, or nil if none found.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/resources/Get
    - functions/resources/GetMatch
    - functions/resources/GetRemote
    - functions/resources/Match
    - methods/page/Resources
  returnType: resource.Resources
  signatures: [resources.ByType MEDIATYPE]
---
@y
---
title: resources.ByType
description: Returns a collection of global resources of the given media type, or nil if none found.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/resources/Get
    - functions/resources/GetMatch
    - functions/resources/GetRemote
    - functions/resources/Match
    - methods/page/Resources
  returnType: resource.Resources
  signatures: [resources.ByType MEDIATYPE]
---
@z

@x
The [media type] is typically one of `image`, `text`, `audio`, `video`, or `application`.
@y
The [media type] is typically one of `image`, `text`, `audio`, `video`, or `application`.
@z

@x
```go-html-template
{{ range resources.ByType "image" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ end }}
```
@y
```go-html-template
{{ range resources.ByType "image" }}
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
For page resources, use the [`Resources.ByType`] method on the Page object.
@y
For page resources, use the [`Resources.ByType`] method on the Page object.
@z

@x
[`Resources.ByType`]: /methods/page/resources/
{{% /note %}}
@y
[`Resources.ByType`]: /methods/page/resources/
{{% /note %}}
@z

@x
[media type]: https://en.wikipedia.org/wiki/Media_type
@y
[media type]: https://en.wikipedia.org/wiki/Media_type
@z
