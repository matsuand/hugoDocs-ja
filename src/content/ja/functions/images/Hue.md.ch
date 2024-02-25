%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.Hue
description: Returns an image filter that rotates the hue of an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.Hue SHIFT]
toc: true
---
@y
---
title: images.Hue
description: Returns an image filter that rotates the hue of an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.Hue SHIFT]
toc: true
---
@z

@x
The hue angle shift is typically in the range [-180, 180] where 0 has no effect.
@y
The hue angle shift is typically in the range [-180, 180] where 0 has no effect.
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
{{ $filter := images.Hue -15 }}
```
@y
```go-html-template
{{ $filter := images.Hue -15 }}
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
  filter="Hue"
  filterArgs="-15"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Hue"
  filterArgs="-15"
  example=true
>}}
@z
