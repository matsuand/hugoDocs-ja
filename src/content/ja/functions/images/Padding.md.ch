%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.Padding
description: Returns an image filter that resizes the image canvas without resizing the image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: ['images.Padding V1 [V2] [V3] [V4] [COLOR]']
toc: true
---
@y
---
title: images.Padding
description: Returns an image filter that resizes the image canvas without resizing the image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: ['images.Padding V1 [V2] [V3] [V4] [COLOR]']
toc: true
---
@z

@x
{{< new-in 0.120.0 >}}
@y
{{< new-in 0.120.0 >}}
@z

@x
The last argument is the canvas color, expressed as an RGB or RGBA [hexadecimal color]. The default value is `ffffffff` (opaque white). The preceding arguments are the padding values, in pixels, using the CSS [shorthand property] syntax. Negative padding values will crop the image.
@y
The last argument is the canvas color, expressed as an RGB or RGBA [hexadecimal color]. The default value is `ffffffff` (opaque white). The preceding arguments are the padding values, in pixels, using the CSS [shorthand property] syntax. Negative padding values will crop the image.
@z

@x
[hexadecimal color]: https://developer.mozilla.org/en-US/docs/Web/CSS/hex-color
[shorthand property]: https://developer.mozilla.org/en-US/docs/Web/CSS/Shorthand_properties#edges_of_a_box
@y
[hexadecimal color]: https://developer.mozilla.org/en-US/docs/Web/CSS/hex-color
[shorthand property]: https://developer.mozilla.org/en-US/docs/Web/CSS/Shorthand_properties#edges_of_a_box
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
{{ $filter := images.Padding 20 40 "#976941" }}
```
@y
```go-html-template
{{ $filter := images.Padding 20 40 "#976941" }}
```
@z

@x
{{% include "functions/images/_common/apply-image-filter.md" %}}
@y
{{% include "functions/images/_common/apply-image-filter.md" %}}
@z

@x
Combine with the [`Colors`] method to create a border with one of the image's most dominant colors:
@y
Combine with the [`Colors`] method to create a border with one of the image's most dominant colors:
@z

@x
[`Colors`]: /methods/resource/colors/
@y
[`Colors`]: /methods/resource/colors/
@z

@x
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ $filter := images.Padding 20 40 (index .Colors 2) }}
  {{ with . | images.Filter $filter }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ $filter := images.Padding 20 40 (index .Colors 2) }}
  {{ with . | images.Filter $filter }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
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
  filter="Padding"
  filterArgs="20,40,20,40,#976941"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Padding"
  filterArgs="20,40,20,40,#976941"
  example=true
>}}
@z

@x
## Other recipes
@y
## Other recipes
@z

@x
This example resizes an image to 300px wide, converts it to the WebP format, adds 20px vertical padding and 50px horizontal padding, then sets the canvas color to dark green with 33% opacity.
@y
This example resizes an image to 300px wide, converts it to the WebP format, adds 20px vertical padding and 50px horizontal padding, then sets the canvas color to dark green with 33% opacity.
@z

@x
Conversion to WebP is required to support transparency. PNG and WebP images have an alpha channel; JPEG and GIF do not.
@y
Conversion to WebP is required to support transparency. PNG and WebP images have an alpha channel; JPEG and GIF do not.
@z

@x
```go-html-template
{{ $img := resources.Get "images/a.jpg" }}
{{ $filters := slice
  (images.Process "resize 300x webp")
  (images.Padding 20 50 "#0705")
}}
{{ $img = $img.Filter $filters }}
```
@y
```go-html-template
{{ $img := resources.Get "images/a.jpg" }}
{{ $filters := slice
  (images.Process "resize 300x webp")
  (images.Padding 20 50 "#0705")
}}
{{ $img = $img.Filter $filters }}
```
@z

@x
To add a 2px gray border to an image:
@y
To add a 2px gray border to an image:
@z

@x
```go-html-template
{{ $img = $img.Filter (images.Padding 2 "#777") }}
```
@y
```go-html-template
{{ $img = $img.Filter (images.Padding 2 "#777") }}
```
@z
