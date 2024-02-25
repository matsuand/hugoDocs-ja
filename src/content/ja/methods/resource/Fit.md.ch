%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Fit
description: Applicable to images, returns an image resource downscaled to fit the given dimensions while maintaining aspect ratio. 
categories: []
keywords: []
action:
  related:
    - methods/resource/Crop
    - methods/resource/Fill
    - methods/resource/Resize
    - methods/resource/Process
    - functions/images/Process
  returnType: images.ImageResource
  signatures: [RESOURCE.Fit SPEC]
toc: true
---
@y
---
title: Fit
description: Applicable to images, returns an image resource downscaled to fit the given dimensions while maintaining aspect ratio. 
categories: []
keywords: []
action:
  related:
    - methods/resource/Crop
    - methods/resource/Fill
    - methods/resource/Resize
    - methods/resource/Process
    - functions/images/Process
  returnType: images.ImageResource
  signatures: [RESOURCE.Fit SPEC]
toc: true
---
@z

@x
Downscale an image to fit the given dimensions while maintaining aspect ratio. You must provide both width and height.
@y
Downscale an image to fit the given dimensions while maintaining aspect ratio. You must provide both width and height.
@z

@x
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with .Fit "200x200" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with .Fit "200x200" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@z

@x
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@y
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@z

@x
{{% include "/methods/resource/_common/processing-spec.md" %}}
@y
{{% include "/methods/resource/_common/processing-spec.md" %}}
@z

@x
## Example
@y
## Example
@z

@x
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with .Fit "300x175 webp q85 lanczos" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/original.jpg" }}
  {{ with .Fit "300x175 webp q85 lanczos" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@z

@x
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Process"
  filterArgs="fit 300x175 webp q85 lanczos"
  example=true
>}}
@y
{{< img
  src="images/examples/zion-national-park.jpg"
  alt="Zion National Park"
  filter="Process"
  filterArgs="fit 300x175 webp q85 lanczos"
  example=true
>}}
@z
