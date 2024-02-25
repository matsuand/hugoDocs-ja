%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.Sepia
description: Returns an image filter that produces a sepia-toned version of an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.Sepia PERCENTAGE]
toc: true
---
@y
---
title: images.Sepia
description: Returns an image filter that produces a sepia-toned version of an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.Sepia PERCENTAGE]
toc: true
---
@z

@x
The percentage must be in the range [0, 100] where 0 has no effect.
@y
The percentage must be in the range [0, 100] where 0 has no effect.
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
{{ $filter := images.Sepia 75 }}
```
@y
```go-html-template
{{ $filter := images.Sepia 75 }}
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
  filter="Sepia"
  filterArgs="75"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Sepia"
  filterArgs="75"
  example=true
>}}
@z
