%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.Process
description: Returns an image filter that processes the given image using the given specification.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
    - methods/resource/Process
  returnType: images.filter
  signatures: [images.Process SPEC]
toc: true
---
@y
---
title: images.Process
description: Returns an image filter that processes the given image using the given specification.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
    - methods/resource/Process
  returnType: images.filter
  signatures: [images.Process SPEC]
toc: true
---
@z

@x
{{< new-in 0.119.0 >}}
@y
{{< new-in 0.119.0 >}}
@z

@x
This filter has the same options as the [`Process`] method on a `Resource` object, but using it as a filter may be more effective if you need to apply multiple filters to an image.
@y
This filter has the same options as the [`Process`] method on a `Resource` object, but using it as a filter may be more effective if you need to apply multiple filters to an image.
@z

@x
[`Process`]: /methods/resource/process/
@y
[`Process`]: /methods/resource/process/
@z

@x
The process specification is a space-delimited, case-insensitive list of one or more of the following in any sequence:
@y
The process specification is a space-delimited, case-insensitive list of one or more of the following in any sequence:
@z

@x
action
: Specify zero or one of `crop`, `fill`, `fit`, or `resize`. If you specify an action you must also provide dimensions. See&nbsp;[details](content-management/image-processing/#image-processing-methods).
@y
action
: Specify zero or one of `crop`, `fill`, `fit`, or `resize`. If you specify an action you must also provide dimensions. See&nbsp;[details](content-management/image-processing/#image-processing-methods).
@z

@x
```go-html-template
{{ $filter := images.Process "resize 300x" }}
```
@y
```go-html-template
{{ $filter := images.Process "resize 300x" }}
```
@z

@x
dimensions
: Required if you specify an action. Provide width _or_ height when using `resize`, else provide both width _and_ height. See&nbsp;[details](/content-management/image-processing/#dimensions).
@y
dimensions
: Required if you specify an action. Provide width _or_ height when using `resize`, else provide both width _and_ height. See&nbsp;[details](/content-management/image-processing/#dimensions).
@z

@x
```go-html-template
{{ $filter := images.Process "crop 200x200" }}
```
@y
```go-html-template
{{ $filter := images.Process "crop 200x200" }}
```
@z

@x
anchor
: Use with the `crop` or `fill` action. Specify zero or one of `TopLeft`, `Top`, `TopRight`, `Left`, `Center`, `Right`, `BottomLeft`, `Bottom`, `BottomRight`, or `Smart`. Default is `Smart`. See&nbsp;[details](/content-management/image-processing/#anchor).
@y
anchor
: Use with the `crop` or `fill` action. Specify zero or one of `TopLeft`, `Top`, `TopRight`, `Left`, `Center`, `Right`, `BottomLeft`, `Bottom`, `BottomRight`, or `Smart`. Default is `Smart`. See&nbsp;[details](/content-management/image-processing/#anchor).
@z

@x
```go-html-template
{{ $filter := images.Process "crop 200x200 center" }}
```
@y
```go-html-template
{{ $filter := images.Process "crop 200x200 center" }}
```
@z

@x
rotation
: Typically specify zero or one of `r90`, `r180`, or `r270`. Also supports arbitrary rotation angles. See&nbsp;[details](/content-management/image-processing/#rotation).
@y
rotation
: Typically specify zero or one of `r90`, `r180`, or `r270`. Also supports arbitrary rotation angles. See&nbsp;[details](/content-management/image-processing/#rotation).
@z

@x
```go-html-template
{{ $filter := images.Process "r90" }}
{{ $filter := images.Process "crop 200x200 center r90" }}
```
@y
```go-html-template
{{ $filter := images.Process "r90" }}
{{ $filter := images.Process "crop 200x200 center r90" }}
```
@z

@x
target format
: Specify zero or one of `gif`, `jpeg`, `png`, `tiff`, or `webp`. See&nbsp;[details](/content-management/image-processing/#target-format).
@y
target format
: Specify zero or one of `gif`, `jpeg`, `png`, `tiff`, or `webp`. See&nbsp;[details](/content-management/image-processing/#target-format).
@z

@x
```go-html-template
{{ $filter := images.Process "webp" }}
{{ $filter := images.Process "crop 200x200 center r90 webp" }}
```
@y
```go-html-template
{{ $filter := images.Process "webp" }}
{{ $filter := images.Process "crop 200x200 center r90 webp" }}
```
@z

@x
quality
: Applicable to JPEG and WebP images. Optionally specify `qN` where `N` is an integer in the range [0, 100]. Default is `75`. See&nbsp;[details](/content-management/image-processing/#quality).
@y
quality
: Applicable to JPEG and WebP images. Optionally specify `qN` where `N` is an integer in the range [0, 100]. Default is `75`. See&nbsp;[details](/content-management/image-processing/#quality).
@z

@x
```go-html-template
{{ $filter := images.Process "q50" }}
{{ $filter := images.Process "crop 200x200 center r90 webp q50" }}
```
@y
```go-html-template
{{ $filter := images.Process "q50" }}
{{ $filter := images.Process "crop 200x200 center r90 webp q50" }}
```
@z

@x
hint
: Applicable to WebP images and equivalent to the `-preset` flag for the [`cwebp`] encoder. Specify zero or one of `drawing`, `icon`, `photo`, `picture`, or `text`. Default is `photo`. See&nbsp;[details](/content-management/image-processing/#hint).
@y
hint
: Applicable to WebP images and equivalent to the `-preset` flag for the [`cwebp`] encoder. Specify zero or one of `drawing`, `icon`, `photo`, `picture`, or `text`. Default is `photo`. See&nbsp;[details](/content-management/image-processing/#hint).
@z

@x
[`cwebp`]: https://developers.google.com/speed/webp/docs/cwebp
@y
[`cwebp`]: https://developers.google.com/speed/webp/docs/cwebp
@z

@x
```go-html-template
{{ $filter := images.Process "webp" "icon" }}
{{ $filter := images.Process "crop 200x200 center r90 webp q50 icon" }}
```
@y
```go-html-template
{{ $filter := images.Process "webp" "icon" }}
{{ $filter := images.Process "crop 200x200 center r90 webp q50 icon" }}
```
@z

@x
background color
: When converting a PNG or WebP with transparency to a format that does not support transparency, optionally specify a background color using a 3-digit or a 6-digit hexadecimal color code. Default is `#ffffff` (white). See&nbsp;[details](/content-management/image-processing/#background-color).
@y
background color
: When converting a PNG or WebP with transparency to a format that does not support transparency, optionally specify a background color using a 3-digit or a 6-digit hexadecimal color code. Default is `#ffffff` (white). See&nbsp;[details](/content-management/image-processing/#background-color).
@z

@x
```go-html-template
{{ $filter := images.Process "jpeg #000" }}
{{ $filter := images.Process "crop 200x200 center r90 q50 jpeg #000" }}
```
@y
```go-html-template
{{ $filter := images.Process "jpeg #000" }}
{{ $filter := images.Process "crop 200x200 center r90 q50 jpeg #000" }}
```
@z

@x
resampling filter
: Typically specify zero or one of `Box`, `Lanczos`, `CatmullRom`, `MitchellNetravali`, `Linear`, or `NearestNeighbor`. Other resampling filters are available. See&nbsp;[details](/content-management/image-processing/#resampling-filter).
@y
resampling filter
: Typically specify zero or one of `Box`, `Lanczos`, `CatmullRom`, `MitchellNetravali`, `Linear`, or `NearestNeighbor`. Other resampling filters are available. See&nbsp;[details](/content-management/image-processing/#resampling-filter).
@z

@x
```go-html-template
{{ $filter := images.Process "resize 300x lanczos" }}
{{ $filter := images.Process "resize 300x r90 q50 jpeg #000 lanczos" }}
```
@y
```go-html-template
{{ $filter := images.Process "resize 300x lanczos" }}
{{ $filter := images.Process "resize 300x r90 q50 jpeg #000 lanczos" }}
```
@z

@x
## Usage
@y
## Usage
@z

@x
Create a filter:
@y
Create a filter:
@z

@x
```go-html-template
{{ $filter := images.Process "resize 256x q40 webp" }}
```
@y
```go-html-template
{{ $filter := images.Process "resize 256x q40 webp" }}
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
  filter="Process"
  filterArgs="resize 256x q40 webp"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Process"
  filterArgs="resize 256x q40 webp"
  example=true
>}}
@z
