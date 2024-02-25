%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.GaussianBlur
description: Returns an image filter that applies a gaussian blur to an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.GaussianBlur SIGMA]
toc: true
---
@y
---
title: images.GaussianBlur
description: Returns an image filter that applies a gaussian blur to an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.GaussianBlur SIGMA]
toc: true
---
@z

@x
The sigma value must be positive, and indicates how much the image will be blurred. The blur-affected radius is approximately 3 times the sigma value.
@y
The sigma value must be positive, and indicates how much the image will be blurred. The blur-affected radius is approximately 3 times the sigma value.
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
{{ $filter := images.GaussianBlur 5 }}
```
@y
```go-html-template
{{ $filter := images.GaussianBlur 5 }}
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
  filter="GaussianBlur"
  filterArgs="5"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="GaussianBlur"
  filterArgs="5"
  example=true
>}}
@z
