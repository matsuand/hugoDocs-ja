%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.Dither
description: Returns an image filter that dithers an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - functions/images/Process
    - methods/resource/Colors
    - methods/resource/Filter
  returnType: images.filter
  signatures: ['images.Dither [OPTIONS]']
toc: true
---
@y
---
title: images.Dither
description: Returns an image filter that dithers an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - functions/images/Process
    - methods/resource/Colors
    - methods/resource/Filter
  returnType: images.filter
  signatures: ['images.Dither [OPTIONS]']
toc: true
---
@z

@x
{{< new-in 0.123.0 >}}
@y
{{< new-in 0.123.0 >}}
@z

@x
## Options
@y
## Options
@z

@x
colors
: (`string array`) A slice of two or more colors that make up the dithering palette, each expressed as an RGB or RGBA [hexadecimal] value, with or without a leading hash mark. The default values are opaque black (`000000ff`) and opaque white (`ffffffff`).
@y
colors
: (`string array`) A slice of two or more colors that make up the dithering palette, each expressed as an RGB or RGBA [hexadecimal] value, with or without a leading hash mark. The default values are opaque black (`000000ff`) and opaque white (`ffffffff`).
@z

@x
[hexadecimal]: https://developer.mozilla.org/en-US/docs/Web/CSS/hex-color
@y
[hexadecimal]: https://developer.mozilla.org/en-US/docs/Web/CSS/hex-color
@z

@x
method
: (`string`) The dithering method. See the [dithering methods](#dithering-methods) section below for a list of the available methods. Default is `FloydSteinberg`.
@y
method
: (`string`) The dithering method. See the [dithering methods](#dithering-methods) section below for a list of the available methods. Default is `FloydSteinberg`.
@z

@x
serpentine
: (`bool`) Applicable to error diffusion dithering methods, serpentine controls whether the error diffusion matrix is applied in a serpentine manner, meaning that it goes right-to-left every other line. This greatly reduces line-type artifacts. Default is `true`.
@y
serpentine
: (`bool`) Applicable to error diffusion dithering methods, serpentine controls whether the error diffusion matrix is applied in a serpentine manner, meaning that it goes right-to-left every other line. This greatly reduces line-type artifacts. Default is `true`.
@z

@x
strength
: (`float`) The strength at which to apply the dithering matrix, typically a value in the range [0, 1]. A value of `1.0` applies the dithering matrix at 100% strength (no modifification of the dither matrix). The `strength` is inversely proportional to contrast; reducing the strength increases the contrast. Setting `strength` to a value such as `0.8` can be useful to reduce noise in the dithered image. Default is `1.0`.
@y
strength
: (`float`) The strength at which to apply the dithering matrix, typically a value in the range [0, 1]. A value of `1.0` applies the dithering matrix at 100% strength (no modifification of the dither matrix). The `strength` is inversely proportional to contrast; reducing the strength increases the contrast. Setting `strength` to a value such as `0.8` can be useful to reduce noise in the dithered image. Default is `1.0`.
@z

@x
## Usage
@y
## Usage
@z

@x
Create the options map:
@y
Create the options map:
@z

@x
```go-html-template
{{ $opts := dict
  "colors" (slice "222222" "808080" "dddddd")
  "method" "ClusteredDot4x4"
  "strength" 0.85
}}
```
@y
```go-html-template
{{ $opts := dict
  "colors" (slice "222222" "808080" "dddddd")
  "method" "ClusteredDot4x4"
  "strength" 0.85
}}
```
@z

@x
Create the filter:
@y
Create the filter:
@z

@x
```go-html-template
{{ $filter := images.Dither $opts }}
```
@y
```go-html-template
{{ $filter := images.Dither $opts }}
```
@z

@x
Or create the filter using the default settings:
@y
Or create the filter using the default settings:
@z

@x
```go-html-template
{{ $filter := images.Dither }}
```
@y
```go-html-template
{{ $filter := images.Dither }}
```
@z

@x
{{% include "functions/images/_common/apply-image-filter.md" %}}
@y
{{% include "functions/images/_common/apply-image-filter.md" %}}
@z

@x
## Dithering methods
@y
## Dithering methods
@z

@x
See the [Go documentation] for descriptions of each of the dithering methods below.
@y
See the [Go documentation] for descriptions of each of the dithering methods below.
@z

@x
[Go documentation]: https://pkg.go.dev/github.com/makeworld-the-better-one/dither/v2#pkg-variables 
@y
[Go documentation]: https://pkg.go.dev/github.com/makeworld-the-better-one/dither/v2#pkg-variables 
@z

@x
Error diffusion dithering methods:
@y
Error diffusion dithering methods:
@z

@x
- Atkinson
- Burkes
- FalseFloydSteinberg
- FloydSteinberg
- JarvisJudiceNinke
- Sierra
- Sierra2
- Sierra2_4A
- Sierra3
- SierraLite
- Simple2D
- StevenPigeon
- Stucki
- TwoRowSierra
@y
- Atkinson
- Burkes
- FalseFloydSteinberg
- FloydSteinberg
- JarvisJudiceNinke
- Sierra
- Sierra2
- Sierra2_4A
- Sierra3
- SierraLite
- Simple2D
- StevenPigeon
- Stucki
- TwoRowSierra
@z

@x
Ordered dithering methods:
@y
Ordered dithering methods:
@z

@x
- ClusteredDot4x4
- ClusteredDot6x6
- ClusteredDot6x6_2
- ClusteredDot6x6_3
- ClusteredDot8x8
- ClusteredDotDiagonal16x16
- ClusteredDotDiagonal6x6
- ClusteredDotDiagonal8x8
- ClusteredDotDiagonal8x8_2
- ClusteredDotDiagonal8x8_3
- ClusteredDotHorizontalLine
- ClusteredDotSpiral5x5
- ClusteredDotVerticalLine
- Horizontal3x5
- Vertical5x3
@y
- ClusteredDot4x4
- ClusteredDot6x6
- ClusteredDot6x6_2
- ClusteredDot6x6_3
- ClusteredDot8x8
- ClusteredDotDiagonal16x16
- ClusteredDotDiagonal6x6
- ClusteredDotDiagonal8x8
- ClusteredDotDiagonal8x8_2
- ClusteredDotDiagonal8x8_3
- ClusteredDotHorizontalLine
- ClusteredDotSpiral5x5
- ClusteredDotVerticalLine
- Horizontal3x5
- Vertical5x3
@z

@x
## Example
@y
## Example
@z

@x
This example uses the default dithering options.
@y
This example uses the default dithering options.
@z

@x
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Dither"
  filterArgs=""
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Dither"
  filterArgs=""
  example=true
>}}
@z

@x
## Recommendations
@y
## Recommendations
@z

@x
Regardless of dithering method, do both of the following to obtain the best results:
@y
Regardless of dithering method, do both of the following to obtain the best results:
@z

@x
1. Scale the image _before_ dithering
2. Output the image to a lossless format such as GIF or PNG
@y
1. Scale the image _before_ dithering
2. Output the image to a lossless format such as GIF or PNG
@z

@x
The example below does both of these, and it sets the dithering palette to the three most dominant colors in the image.
@y
The example below does both of these, and it sets the dithering palette to the three most dominant colors in the image.
@z

@x
```go-html-template
{{ with resources.Get "original.jpg" }}
  {{ $opts := dict
    "method" "ClusteredDotSpiral5x5"
    "colors" (first 3 .Colors)
  }}
  {{ $filters := slice
    (images.Process "resize 800x")
    (images.Dither $opts)
    (images.Process "png")
  }}
  {{ with . | images.Filter $filters }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "original.jpg" }}
  {{ $opts := dict
    "method" "ClusteredDotSpiral5x5"
    "colors" (first 3 .Colors)
  }}
  {{ $filters := slice
    (images.Process "resize 800x")
    (images.Dither $opts)
    (images.Process "png")
  }}
  {{ with . | images.Filter $filters }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@z

@x
For best results, if the dithering palette is grayscale, convert the image to grayscale before dithering.
@y
For best results, if the dithering palette is grayscale, convert the image to grayscale before dithering.
@z

@x
```go-html-template
{{ $opts := dict "colors" (slice "222" "808080" "ddd") }}
{{ $filters := slice
  (images.Process "resize 800x")
  (images.Grayscale)
  (images.Dither $opts)
  (images.Process "png")
}}
{{ with images.Filter $filters . }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ end }}
```
@y
```go-html-template
{{ $opts := dict "colors" (slice "222" "808080" "ddd") }}
{{ $filters := slice
  (images.Process "resize 800x")
  (images.Grayscale)
  (images.Dither $opts)
  (images.Process "png")
}}
{{ with images.Filter $filters . }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ end }}
```
@z

@x
The example above:
@y
The example above:
@z

@x
1. Resizes the image to be 800 px wide
2. Converts the image to grayscale
3. Dithers the image using the default (`FloydSteinberg`) dithering method with a grayscale palette
4. Converts the image to the PNG format
@y
1. Resizes the image to be 800 px wide
2. Converts the image to grayscale
3. Dithers the image using the default (`FloydSteinberg`) dithering method with a grayscale palette
4. Converts the image to the PNG format
@z
