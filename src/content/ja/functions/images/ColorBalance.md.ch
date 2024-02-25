%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.ColorBalance
description: Returns an image filter that changes the color balance of an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.ColorBalance PCTRED PCTGREEN PCTBLUE]
toc: true
---
@y
---
title: images.ColorBalance
description: Returns an image filter that changes the color balance of an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: [images.ColorBalance PCTRED PCTGREEN PCTBLUE]
toc: true
---
@z

@x
The percentage for each channel (red, green, blue) must be in the range [-100, 500].
@y
The percentage for each channel (red, green, blue) must be in the range [-100, 500].
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
{{ $filter := images.ColorBalance -10 10 50 }}
```
@y
```go-html-template
{{ $filter := images.ColorBalance -10 10 50 }}
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
  filter="ColorBalance"
  filterArgs="-10,10,50"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="ColorBalance"
  filterArgs="-10,10,50"
  example=true
>}}
@z
