%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Resize
description: Applicable to images, returns an image resource resized to the given width and/or height.
categories: []
keywords: []
action:
  related:
    - methods/resource/Crop
    - methods/resource/Fit
    - methods/resource/Fill
    - methods/resource/Process
    - functions/images/Process
  returnType: images.ImageResource
  signatures: [RESOURCE.Resize SPEC]
---
@y
---
title: Resize
description: Applicable to images, returns an image resource resized to the given width and/or height.
categories: []
keywords: []
action:
  related:
    - methods/resource/Crop
    - methods/resource/Fit
    - methods/resource/Fill
    - methods/resource/Process
    - functions/images/Process
  returnType: images.ImageResource
  signatures: [RESOURCE.Resize SPEC]
---
@z

@x
Resize an image to the given width and/or height.
@y
Resize an image to the given width and/or height.
@z

@x
If you specify both width and height, the resulting image will be disproportionally scaled unless the original image has the same aspect ratio.
@y
If you specify both width and height, the resulting image will be disproportionally scaled unless the original image has the same aspect ratio.
@z

@x
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with .Resize "300x" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with .Resize "300x" }}
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
  {{ with .Resize "300x webp q85 lanczos" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with .Resize "300x webp q85 lanczos" }}
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
  filterArgs="resize 300x webp q85 lanczos"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Process"
  filterArgs="resize 300x webp q85 lanczos"
  example=true
>}}
@z
