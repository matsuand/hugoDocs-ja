%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.Brightness
description: Returns an image filter that changes the brightness of an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.Brightness PERCENTAGE]
toc: true
---
@y
---
title: images.Brightness
description: Returns an image filter that changes the brightness of an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.Brightness PERCENTAGE]
toc: true
---
@z

@x
The percentage must be in the range [-100, 100] where 0 has no effect. A value of `-100` produces a solid black image, and a value of `100` produces a solid white image.
@y
The percentage must be in the range [-100, 100] where 0 has no effect. A value of `-100` produces a solid black image, and a value of `100` produces a solid white image.
@z

@x
## Usage
@y
## Usage
@z

@x
Create the image filter:
@y
Create the image filter:
@z

@x
```go-html-template
{{ $filter := images.Brightness 12 }}
```
@y
```go-html-template
{{ $filter := images.Brightness 12 }}
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
  filter="Brightness"
  filterArgs="12"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Brightness"
  filterArgs="12"
  example=true
>}}
@z
