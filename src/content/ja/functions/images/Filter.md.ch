%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.Filter
description: Applies one or more image filters to the given image resource.
categories: []
keywords: []
action:
  aliases: []
  related:
    - methods/resource/Filter
  returnType: images.ImageResource
  signatures: [images.Filter FILTERS... IMAGE]
toc: true
---
@y
---
title: images.Filter
description: Applies one or more image filters to the given image resource.
categories: []
keywords: []
action:
  aliases: []
  related:
    - methods/resource/Filter
  returnType: images.ImageResource
  signatures: [images.Filter FILTERS... IMAGE]
toc: true
---
@z

@x
Apply one or more [image filters](#image-filters) to the given image.
@y
Apply one or more [image filters](#image-filters) to the given image.
@z

@x
To apply a single filter:
@y
To apply a single filter:
@z

@x
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with images.Filter images.Grayscale . }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with images.Filter images.Grayscale . }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@z

@x
To apply two or more filters, executing from left to right:
@y
To apply two or more filters, executing from left to right:
@z

@x
```go-html-template
{{ $filters := slice
  images.Grayscale
  (images.GaussianBlur 8)
}}
{{ with resources.Get "images/original.jpg" }}
  {{ with images.Filter $filters . }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ $filters := slice
  images.Grayscale
  (images.GaussianBlur 8)
}}
{{ with resources.Get "images/original.jpg" }}
  {{ with images.Filter $filters . }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@z

@x
You can also apply image filters using the [`Filter`] method on a `Resource` object.
@y
You can also apply image filters using the [`Filter`] method on a `Resource` object.
@z

@x
[`Filter`]: /methods/resource/filter/
@y
[`Filter`]: /methods/resource/filter/
@z

@x
## Example
@y
## Example
@z

@x
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with images.Filter images.Grayscale . }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with images.Filter images.Grayscale . }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@z

@x
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Grayscale"
  filterArgs=""
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Grayscale"
  filterArgs=""
  example=true
>}}
@z

@x
## Image filters
@y
## Image filters
@z

@x
Use any of these filters with the `images.Filter` function, or with the `Filter` method on a `Resource` object.
@y
Use any of these filters with the `images.Filter` function, or with the `Filter` method on a `Resource` object.
@z

@x
{{< list-pages-in-section path=/functions/images filter=functions_images_no_filters filterType=exclude >}}
@y
{{< list-pages-in-section path=/functions/images filter=functions_images_no_filters filterType=exclude >}}
@z
