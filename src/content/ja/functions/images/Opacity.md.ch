%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.Opacity
description: Returns an image filter that changes the opacity of an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.Opacity OPACITY]
toc: true
---
@y
---
title: images.Opacity
description: Returns an image filter that changes the opacity of an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.Opacity OPACITY]
toc: true
---
@z

@x
{{< new-in 0.119.0 >}}
@y
{{< new-in 0.119.0 >}}
@z

@x
The opacity value must be in the range [0, 1]. A value of `0` produces a transparent image, and a value of `1` produces an opaque image (no transparency).
@y
The opacity value must be in the range [0, 1]. A value of `0` produces a transparent image, and a value of `1` produces an opaque image (no transparency).
@z

@x
## Usage
@y
## Usage
@z

@x
Create the filter:
@y
Create the filter:
@z

@x
```go-html-template
{{ $filter := images.Opacity 0.65 }}
```
@y
```go-html-template
{{ $filter := images.Opacity 0.65 }}
```
@z

@x
{{% include "functions/images/_common/apply-image-filter.md" %}}
@y
{{% include "functions/images/_common/apply-image-filter.md" %}}
@z

@x
The `images.Opacity` filter is most useful for target formats such as PNG and WebP that support transparency. If the source image does not support transparency, combine this filter with the `images.Process` filter:
@y
The `images.Opacity` filter is most useful for target formats such as PNG and WebP that support transparency. If the source image does not support transparency, combine this filter with the `images.Process` filter:
@z

@x
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ $filters := slice
    (images.Opacity 0.65)
    (images.Process "png")
  }}
  {{ with . | images.Filter $filters }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ $filters := slice
    (images.Opacity 0.65)
    (images.Process "png")
  }}
  {{ with . | images.Filter $filters }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@z

@x
## Example
@y
## Example
@z

@x
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Opacity"
  filterArgs="0.65"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Opacity"
  filterArgs="0.65"
  example=true
>}}
@z
