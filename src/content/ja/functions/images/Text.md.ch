%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.Text
description: Returns an image filter that adds text to an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: ['images.Text TEXT [OPTIONS]']
toc: true
---
@y
---
title: images.Text
description: Returns an image filter that adds text to an image.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/images/Filter
    - methods/resource/Filter
  returnType: images.filter
  signatures: ['images.Text TEXT [OPTIONS]']
toc: true
---
@z

@x
## Options
@y
## Options
@z

@x
Although none of the options are required, at a minimum you will want to set the `size` to be some reasonable percentage of the image height.
@y
Although none of the options are required, at a minimum you will want to set the `size` to be some reasonable percentage of the image height.
@z

@x
color
: (`string`) The font color, either a 3-digit or 6-digit hexadecimal color code. Default is `#ffffff` (white).
@y
color
: (`string`) The font color, either a 3-digit or 6-digit hexadecimal color code. Default is `#ffffff` (white).
@z

@x
font
: (`resource.Resource`) The font can be a [global resource], a [page resource], or a [remote resource]. Default is [Go Regular], a proportional sans-serif TrueType font.
@y
font
: (`resource.Resource`) The font can be a [global resource], a [page resource], or a [remote resource]. Default is [Go Regular], a proportional sans-serif TrueType font.
@z

@x
[Go Regular]: https://go.dev/blog/go-fonts#sans-serif
@y
[Go Regular]: https://go.dev/blog/go-fonts#sans-serif
@z

@x
linespacing
: (`int`) The number of pixels between each line. For a line height of 1.4, set the `linespacing` to 0.4 multiplied by the `size`. Default is `2`.
@y
linespacing
: (`int`) The number of pixels between each line. For a line height of 1.4, set the `linespacing` to 0.4 multiplied by the `size`. Default is `2`.
@z

@x
size
: (`int`) The font size in pixels. Default is `20`.
@y
size
: (`int`) The font size in pixels. Default is `20`.
@z

@x
x
: (`int`) The horizontal offset, in pixels, relative to the left of the image. Default is `10`.
@y
x
: (`int`) The horizontal offset, in pixels, relative to the left of the image. Default is `10`.
@z

@x
y
: (`int`) The vertical offset, in pixels, relative to the top of the image. Default is `10`.
@y
y
: (`int`) The vertical offset, in pixels, relative to the top of the image. Default is `10`.
@z

@x
[global resource]: /getting-started/glossary/#global-resource
[page resource]: /getting-started/glossary/#page-resource
[remote resource]: /getting-started/glossary/#remote-resource
@y
[global resource]: /getting-started/glossary/#global-resource
[page resource]: /getting-started/glossary/#page-resource
[remote resource]: /getting-started/glossary/#remote-resource
@z

@x
## Usage
@y
## Usage
@z

@x
Capture the font as a resource:
@y
Capture the font as a resource:
@z

@x
```go-html-template
{{ $font := "" }}
{{ $path := "https://github.com/google/fonts/raw/main/ofl/lato/Lato-Regular.ttf" }}
{{ with resources.GetRemote $path }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    {{ $font = . }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get resource %q" $path }}
{{ end }}
```
@y
```go-html-template
{{ $font := "" }}
{{ $path := "https://github.com/google/fonts/raw/main/ofl/lato/Lato-Regular.ttf" }}
{{ with resources.GetRemote $path }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    {{ $font = . }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get resource %q" $path }}
{{ end }}
```
@z

@x
Create the options map:
@y
Create the options map:
@z

@x
```go-html-template
{{ $opts := dict
  "color" "#fbfaf5"
  "font" $font
  "linespacing" 8
  "size" 40
  "x" 25
  "y" 190
}}
```
@y
```go-html-template
{{ $opts := dict
  "color" "#fbfaf5"
  "font" $font
  "linespacing" 8
  "size" 40
  "x" 25
  "y" 190
}}
```
@z

@x
Set the text:
@y
Set the text:
@z

@x
```go-html-template
{{ $text := "Zion National Park" }}
```
@y
```go-html-template
{{ $text := "Zion National Park" }}
```
@z

@x
Create the filter:
@y
Create the filter:
@z

@x
```go-html-template
{{ $filter := images.Text $text $opts }}
```
@y
```go-html-template
{{ $filter := images.Text $text $opts }}
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
  filter="Text"
  filterArgs="Zion National Park,25,190,40,1.2,#fbfaf5"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Text"
  filterArgs="Zion National Park,25,190,40,1.2,#fbfaf5"
  example=true
>}}
@z
