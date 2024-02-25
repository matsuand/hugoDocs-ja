%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.Grayscale
description: Returns an image filter that produces a grayscale version of an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.Grayscale]
toc: true
---
@y
---
title: images.Grayscale
description: Returns an image filter that produces a grayscale version of an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.Grayscale]
toc: true
---
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
{{ $filter := images.Grayscale }}
```
@y
```go-html-template
{{ $filter := images.Grayscale }}
```
@z

@x
{{% include "functions/images/_common/apply-image-filter.md" %}}
@y
{{% include "functions/images/_common/apply-image-filter.md" %}}
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
