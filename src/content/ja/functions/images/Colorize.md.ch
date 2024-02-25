%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.Colorize
description: Returns an image filter that produces a colorized version of an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.Colorize HUE SATURATION PERCENTAGE]
toc: true
---
@y
---
title: images.Colorize
description: Returns an image filter that produces a colorized version of an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.Colorize HUE SATURATION PERCENTAGE]
toc: true
---
@z

@x
The hue is the angle on the color wheel, typically in the range [0, 360].
@y
The hue is the angle on the color wheel, typically in the range [0, 360].
@z

@x
The saturation must be in the range [0, 100].
@y
The saturation must be in the range [0, 100].
@z

@x
The percentage specifies the strength of the effect, and must be in the range [0, 100].
@y
The percentage specifies the strength of the effect, and must be in the range [0, 100].
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
{{ $filter := images.Colorize 180 50 20 }}
```
@y
```go-html-template
{{ $filter := images.Colorize 180 50 20 }}
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
  filter="Colorize"
  filterArgs="180,50,20"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Colorize"
  filterArgs="180,50,20"
  example=true
>}}
@z
