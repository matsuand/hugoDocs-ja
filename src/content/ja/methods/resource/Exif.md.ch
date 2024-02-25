%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Exif
description: Applicable to JPEG and TIFF images, returns an EXIF object containing image metadata.
categories: []
keywords: []
action:
  related: []
  returnType: exif.ExifInfo
  signatures: [RESOURCE.Exif]
toc: true
---
@y
---
title: Exif
description: Applicable to JPEG and TIFF images, returns an EXIF object containing image metadata.
categories: []
keywords: []
action:
  related: []
  returnType: exif.ExifInfo
  signatures: [RESOURCE.Exif]
toc: true
---
@z

@x
Applicable to JPEG and TIFF images, the `Exif` method on an image `Resource` object returns an [EXIF] object containing image metadata.
@y
Applicable to JPEG and TIFF images, the `Exif` method on an image `Resource` object returns an [EXIF] object containing image metadata.
@z

@x
## Methods
@y
## Methods
@z

@x
Date
: (`time.Time`) Returns the image creation date/time. Format with the [`time.Format`]function.
@y
Date
: (`time.Time`) Returns the image creation date/time. Format with the [`time.Format`]function.
@z

@x
Lat
: (`float64`) Returns the GPS latitude in degrees.
@y
Lat
: (`float64`) Returns the GPS latitude in degrees.
@z

@x
Long
: (`float64`) Returns the GPS longitude in degrees.
@y
Long
: (`float64`) Returns the GPS longitude in degrees.
@z

@x
Tags
: (`exif.Tags`) Returns a collection of the available EXIF tags for this image. You may include or exclude specific tags from this collection in the [site configuration].
@y
Tags
: (`exif.Tags`) Returns a collection of the available EXIF tags for this image. You may include or exclude specific tags from this collection in the [site configuration].
@z

@x
## Examples
@y
## Examples
@z

@x
To list the creation date, location, and EXIF tags:
@y
To list the creation date, location, and EXIF tags:
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ with .Exif }}
    <p>Date: {{ .Date }}</p>
    <p>Lat/Long: {{ .Lat }}/{{ .Long }}</p>
    {{ with .Tags }}
      <p>Tags</p>
      <table>
        <thead>
          <tr><th>Tag</th><th>Value</th></tr>
        </thead>
        <tbody>
          {{ range $k, $v := . }}
          <tr><td>{{ $k }}</td><td>{{ $v }}</td></tr>
          {{ end }}
        </tbody>
      </table>
    {{ end }}
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ with .Exif }}
    <p>Date: {{ .Date }}</p>
    <p>Lat/Long: {{ .Lat }}/{{ .Long }}</p>
    {{ with .Tags }}
      <p>Tags</p>
      <table>
        <thead>
          <tr><th>Tag</th><th>Value</th></tr>
        </thead>
        <tbody>
          {{ range $k, $v := . }}
          <tr><td>{{ $k }}</td><td>{{ $v }}</td></tr>
          {{ end }}
        </tbody>
      </table>
    {{ end }}
  {{ end }}
{{ end }}
```
@z

@x
To list specific values:
@y
To list specific values:
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ with .Exif }}
    <ul>
      {{ with .Date }}<li>Date: {{ .Format "January 02, 2006" }}</li>{{ end }}
      {{ with .Tags.ApertureValue }}<li>Aperture: {{ lang.FormatNumber 2 . }}</li>{{ end }}
      {{ with .Tags.BrightnessValue }}<li>Brightness: {{ lang.FormatNumber 2 . }}</li>{{ end }}
      {{ with .Tags.ExposureTime }}<li>Exposure Time: {{ . }}</li>{{ end }}
      {{ with .Tags.FNumber }}<li>F Number: {{ . }}</li>{{ end }}
      {{ with .Tags.FocalLength }}<li>Focal Length: {{ . }}</li>{{ end }}
      {{ with .Tags.ISOSpeedRatings }}<li>ISO Speed Ratings: {{ . }}</li>{{ end }}
      {{ with .Tags.LensModel }}<li>Lens Model: {{ . }}</li>{{ end }}
    </ul>
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ with .Exif }}
    <ul>
      {{ with .Date }}<li>Date: {{ .Format "January 02, 2006" }}</li>{{ end }}
      {{ with .Tags.ApertureValue }}<li>Aperture: {{ lang.FormatNumber 2 . }}</li>{{ end }}
      {{ with .Tags.BrightnessValue }}<li>Brightness: {{ lang.FormatNumber 2 . }}</li>{{ end }}
      {{ with .Tags.ExposureTime }}<li>Exposure Time: {{ . }}</li>{{ end }}
      {{ with .Tags.FNumber }}<li>F Number: {{ . }}</li>{{ end }}
      {{ with .Tags.FocalLength }}<li>Focal Length: {{ . }}</li>{{ end }}
      {{ with .Tags.ISOSpeedRatings }}<li>ISO Speed Ratings: {{ . }}</li>{{ end }}
      {{ with .Tags.LensModel }}<li>Lens Model: {{ . }}</li>{{ end }}
    </ul>
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
[exif]: https://en.wikipedia.org/wiki/Exif
[site configuration]: /content-management/image-processing/#exif-data
[`time.Format`]: /functions/time/format/
@y
[exif]: https://en.wikipedia.org/wiki/Exif
[site configuration]: /content-management/image-processing/#exif-data
[`time.Format`]: /functions/time/format/
@z
