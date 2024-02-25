%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.AutoOrient
description: Returns an image filter that rotates and flips an image as needed per its EXIF orientation tag.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.AutoOrient]
toc: true
---
@y
---
title: images.AutoOrient
description: Returns an image filter that rotates and flips an image as needed per its EXIF orientation tag.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.AutoOrient]
toc: true
---
@z

@x
{{< new-in 0.121.2 >}}
@y
{{< new-in 0.121.2 >}}
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
{{ $filter := images.AutoOrient }}
```
@y
```go-html-template
{{ $filter := images.AutoOrient }}
```
@z

@x
{{% include "functions/images/_common/apply-image-filter.md" %}}
@y
{{% include "functions/images/_common/apply-image-filter.md" %}}
@z

@x
{{% note %}}
When using with other filters, specify `images.AutoOrient` first.
{{% /note %}}
@y
{{% note %}}
When using with other filters, specify `images.AutoOrient` first.
{{% /note %}}
@z

@x
```go-html-template
{{ $filters := slice
  images.AutoOrient
  (images.Process "resize 200x")
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
  images.AutoOrient
  (images.Process "resize 200x")
}}
{{ with resources.Get "images/original.jpg" }}
  {{ with images.Filter $filters . }}
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
  src="images/examples/landscape-exif-orientation-5.jpg"
  alt="Zion National Park"
  filter="AutoOrient"
  filterArgs=""
  example=true
>}}
@y
{{< img
  src="images/examples/landscape-exif-orientation-5.jpg"
  alt="Zion National Park"
  filter="AutoOrient"
  filterArgs=""
  example=true
>}}
@z
