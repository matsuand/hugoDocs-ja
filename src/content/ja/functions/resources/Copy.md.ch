%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: resources.Copy
description: Copies the given resource to the target path.
categories: []
action:
  aliases: []
  related: []
  returnType: resource.Resource
  signatures: [resources.Copy TARGETPATH RESOURCE]
---
@y
---
title: resources.Copy
description: Copies the given resource to the target path.
categories: []
action:
  aliases: []
  related: []
  returnType: resource.Resource
  signatures: [resources.Copy TARGETPATH RESOURCE]
---
@z

@x
{{< new-in 0.100.0 >}}
@y
{{< new-in 0.100.0 >}}
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ with resources.Copy "img/new-image-name.jpg" . }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ with resources.Copy "img/new-image-name.jpg" . }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@z

@x
The relative URL of the new published resource will be:
@y
The relative URL of the new published resource will be:
@z

@x
```text
/img/new-image-name.jpg
```
@y
```text
/img/new-image-name.jpg
```
@z

@x
The target path must be different than the source path, as shown in the example above.
@y
The target path must be different than the source path, as shown in the example above.
@z

@x
{{% note %}}
Use the `resources.Copy` function with global, page, and remote resources.
{{% /note %}}
@y
{{% note %}}
Use the `resources.Copy` function with global, page, and remote resources.
{{% /note %}}
@z
