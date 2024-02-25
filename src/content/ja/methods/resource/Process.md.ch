%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Process
description: Applicable to images, returns an image resource processed with the given specification.
categories: []
keywords: []
action:
  related:
    - methods/resource/Crop
    - methods/resource/Fit
    - methods/resource/Fill
    - methods/resource/Resize
    - functions/images/Process
  returnType: images.ImageResource
  signatures: [RESOURCE.Process SPEC]
toc: true
---
@y
---
title: Process
description: Applicable to images, returns an image resource processed with the given specification.
categories: []
keywords: []
action:
  related:
    - methods/resource/Crop
    - methods/resource/Fit
    - methods/resource/Fill
    - methods/resource/Resize
    - functions/images/Process
  returnType: images.ImageResource
  signatures: [RESOURCE.Process SPEC]
toc: true
---
@z

@x
Process an image with the given specification. The specification can contain an optional action, one of `crop`, `fill`, `fit`, or `resize`. This means that you can use this method instead of [`Crop`], [`Fill`], [`Fit`], or [`Resize`].
@y
Process an image with the given specification. The specification can contain an optional action, one of `crop`, `fill`, `fit`, or `resize`. This means that you can use this method instead of [`Crop`], [`Fill`], [`Fit`], or [`Resize`].
@z

@x
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with .Process "crop 200x200" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with .Process "crop 200x200" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@z

@x
You can also use this method to apply simple transformations such as rotation and conversion:
@y
You can also use this method to apply simple transformations such as rotation and conversion:
@z

@x
```go-html-template
{{/* Rotate 90 degrees counter-clockwise. */}}
{{ $image := $image.Process "r90" }}
@y
```go-html-template
{{/* Rotate 90 degrees counter-clockwise. */}}
{{ $image := $image.Process "r90" }}
@z

@x
{{/* Convert to WebP. */}}
{{ $image := $image.Process "webp" }}
```
@y
{{/* Convert to WebP. */}}
{{ $image := $image.Process "webp" }}
```
@z

@x
The `Process` method is also available as a filter, which is more effective if you need to apply multiple filters to an image. See [`images.Process`].
@y
The `Process` method is also available as a filter, which is more effective if you need to apply multiple filters to an image. See [`images.Process`].
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
  {{ with .Process "crop 200x200 topright webp q85 lanczos" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with .Process "crop 200x200 topright webp q85 lanczos" }}
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
  filterArgs="crop 200x200 topright webp q85 lanczos"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Process"
  filterArgs="crop 200x200 topright webp q85 lanczos"
  example=true
>}}
@z

@x
[`Crop`]: /methods/resource/crop/
[`Fill`]: /methods/resource/fill/
[`Fit`]: /methods/resource/fit/
[`Resize`]: /methods/resource/resize/
[`images.Process`]: /functions/images/process/
@y
[`Crop`]: /methods/resource/crop/
[`Fill`]: /methods/resource/fill/
[`Fit`]: /methods/resource/fit/
[`Resize`]: /methods/resource/resize/
[`images.Process`]: /functions/images/process/
@z
