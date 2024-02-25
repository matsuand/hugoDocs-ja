%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.UnsharpMask
description: Returns an image filter that sharpens an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.UnsharpMask SIGMA AMOUNT THRESHOLD]
toc: true
---
@y
---
title: images.UnsharpMask
description: Returns an image filter that sharpens an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.UnsharpMask SIGMA AMOUNT THRESHOLD]
toc: true
---
@z

@x
The sigma parameter is used in a gaussian function and affects the radius of effect. Sigma must be positive. The sharpen radius is approximately 3 times the sigma value.
@y
The sigma parameter is used in a gaussian function and affects the radius of effect. Sigma must be positive. The sharpen radius is approximately 3 times the sigma value.
@z

@x
The amount parameter controls how much darker and how much lighter the edge borders become. Typically between 0.5 and 1.5.
@y
The amount parameter controls how much darker and how much lighter the edge borders become. Typically between 0.5 and 1.5.
@z

@x
The threshold parameter controls the minimum brightness change that will be sharpened. Typically between 0 and 0.05.
@y
The threshold parameter controls the minimum brightness change that will be sharpened. Typically between 0 and 0.05.
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
{{ $filter := images.UnsharpMask 10 0.4 0.03 }}
```
@y
```go-html-template
{{ $filter := images.UnsharpMask 10 0.4 0.03 }}
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
  filter="UnsharpMask"
  filterArgs="10,0.4,0.03"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="UnsharpMask"
  filterArgs="10,0.4,0.03"
  example=true
>}}
@z
