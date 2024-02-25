%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.Sigmoid
description: Returns an image filter that changes the contrast of an image using a sigmoidal function.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.Sigmoid MIDPOINT FACTOR]
toc: true
---
@y
---
title: images.Sigmoid
description: Returns an image filter that changes the contrast of an image using a sigmoidal function.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.Sigmoid MIDPOINT FACTOR]
toc: true
---
@z

@x
This is a non-linear contrast change useful for photo adjustments; it preserves highlight and shadow detail.
@y
This is a non-linear contrast change useful for photo adjustments; it preserves highlight and shadow detail.
@z

@x
The midpoint is the midpoint of contrast. It must be in the range [0, 1], typically 0.5.
@y
The midpoint is the midpoint of contrast. It must be in the range [0, 1], typically 0.5.
@z

@x
The factor indicates how much to increase or decrease the contrast, typically in the range [-10, 10] where 0 has no effect. A positive value increases contrast, while a negative value decrease contrast.
@y
The factor indicates how much to increase or decrease the contrast, typically in the range [-10, 10] where 0 has no effect. A positive value increases contrast, while a negative value decrease contrast.
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
{{ $filter := images.Sigmoid 0.6 -4 }}
```
@y
```go-html-template
{{ $filter := images.Sigmoid 0.6 -4 }}
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
  filter="Sigmoid"
  filterArgs="0.6,-4"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Sigmoid"
  filterArgs="0.6,-4"
  example=true
>}}
@z
