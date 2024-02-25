%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.Contrast
description: Returns an image filter that changes the contrast of an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.Contrast PERCENTAGE]
toc: true
---
@y
---
title: images.Contrast
description: Returns an image filter that changes the contrast of an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.Contrast PERCENTAGE]
toc: true
---
@z

@x
The percentage must be in the range [-100, 100] where 0 has no effect. A value of `-100` produces a solid grey image, and a value of `100` produces an over-contrasted image.
@y
The percentage must be in the range [-100, 100] where 0 has no effect. A value of `-100` produces a solid grey image, and a value of `100` produces an over-contrasted image.
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
{{ $filter := images.Contrast -20 }}
```
@y
```go-html-template
{{ $filter := images.Contrast -20 }}
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
  filter="Contrast"
  filterArgs="-20"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Contrast"
  filterArgs="-20"
  example=true
>}}
@z
