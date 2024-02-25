%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: ResourceType
description: Returns the main type of the given resource's media type.
categories: []
keywords: []
action:
  related: []
  returnType: string
  signatures: [RESOURCE.ResourceType]
---
@y
---
title: ResourceType
description: Returns the main type of the given resource's media type.
categories: []
keywords: []
action:
  related: []
  returnType: string
  signatures: [RESOURCE.ResourceType]
---
@z

@x
Common resource types include `audio`, `image`, `text`, and `video`.
@y
Common resource types include `audio`, `image`, `text`, and `video`.
@z

@x
```go-html-template
{{ with resources.Get "image/a.jpg" }}
  {{ .ResourceType }} → image
  {{ .MediaType.MainType }} → image
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "image/a.jpg" }}
  {{ .ResourceType }} → image
  {{ .MediaType.MainType }} → image
{{ end }}
```
@z

@x
When working with content files, the resource type is `page`.
@y
When working with content files, the resource type is `page`.
@z

@x
```text
content/
├── lessons/
│   ├── lesson-1/
│   │   ├── _objectives.md  <-- resource type = page
│   │   ├── _topics.md      <-- resource type = page
│   │   ├── _example.jpg    <-- resource type = image
│   │   └── index.md
│   └── _index.md
└── _index.md
```
@y
```text
content/
├── lessons/
│   ├── lesson-1/
│   │   ├── _objectives.md  <-- resource type = page
│   │   ├── _topics.md      <-- resource type = page
│   │   ├── _example.jpg    <-- resource type = image
│   │   └── index.md
│   └── _index.md
└── _index.md
```
@z

@x
With the structure above, we can range through page resources of type `page` to build content:
@y
With the structure above, we can range through page resources of type `page` to build content:
@z

@x
{{< code file=layouts/lessons/single.html  >}}
{{ range .Resources.ByType "page" }}
  {{ .Content }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/lessons/single.html  >}}
{{ range .Resources.ByType "page" }}
  {{ .Content }}
{{ end }}
{{< /code >}}
@z

@x
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@y
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@z
