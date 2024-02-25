%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Fill
description:  Applicable to images, returns an image resource cropped and resized to the given dimensions.
categories: []
keywords: []
action:
  related:
    - methods/resource/Crop
    - methods/resource/Fit
    - methods/resource/Resize
    - methods/resource/Process
    - functions/images/Process
  returnType: images.ImageResource
  signatures: [RESOURCE.Fill SPEC]
toc: true
---
@y
---
title: Fill
description:  Applicable to images, returns an image resource cropped and resized to the given dimensions.
categories: []
keywords: []
action:
  related:
    - methods/resource/Crop
    - methods/resource/Fit
    - methods/resource/Resize
    - methods/resource/Process
    - functions/images/Process
  returnType: images.ImageResource
  signatures: [RESOURCE.Fill SPEC]
toc: true
---
@z

@x
Crop and resize an image to match the given dimensions. You must provide both width and height.
@y
Crop and resize an image to match the given dimensions. You must provide both width and height.
@z

@x
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with .Fill "200x200" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with .Fill "200x200" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@z

@x
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@y
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@z

@x
{{% include "/methods/resource/_common/processing-spec.md" %}}
@y
{{% include "/methods/resource/_common/processing-spec.md" %}}
@z

@x
## Example
@y
## Example
@z

@x
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with .Fill "200x200 top webp q85 lanczos" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with .Fill "200x200 top webp q85 lanczos" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@z

@x
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Process"
  filterArgs="fill 200x200 top webp q85 lanczos"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Process"
  filterArgs="fill 200x200 top webp q85 lanczos"
  example=true
>}}
@z
