%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Image processing
description: Resize, crop, rotate, filter, and convert images.
categories: [content management,fundamentals]
keywords: [resources,images]
menu:
  docs:
    parent: content-management
    weight: 90
toc: true
weight: 90
---
@y
---
title: イメージ処理
description: イメージのリサイズ、刈り込み、回転、フィルタリング、変換を行います。
categories: [content management,fundamentals]
keywords: [resources,images]
menu:
  docs:
    parent: content-management
    weight: 90
toc: true
weight: 90
---
@z

@x
## Image resources
@y
## イメージリソース {#image-resources}
@z

@x
To process an image you must access the file as a page resource, global resource, or remote resource.
@y
イメージ処理を行うためには、イメージファイルをページリソース、グローバルリソース、リモートリソースのいずれかとする必要があります。
@z

@x
### Page resource
@y
### ページリソース {#page-resource}
@z

@x
A page resource is a file within a [page bundle]. A page bundle is a directory with an `index.md` or `_index.md` file at its root.
@y
ページリソース (page resource) とは、[ページバンドル (page bundle)][page bundle] というものの中にあるファイルを指します。
そしてページバンドルとは、ディレクトリのルートに `index.md` ファイルまたは `_index.md` ファイルを含むディレクトリのことです。
@z

@x
```text
content/
└── posts/
    └── post-1/           <-- page bundle
        ├── index.md
        └── sunset.jpg    <-- page resource
```
@y
```text
content/
└── posts/
    └── post-1/           <-- ページバンドル
        ├── index.md
        └── sunset.jpg    <-- ページリソース
```
@z

@x
To access an image as a page resource:
@y
ページリソースとしてイメージにアクセスするには以下のようにします。
@z

@x
```go-html-template
{{ $image := .Resources.Get "sunset.jpg" }}
```
@y
```go-html-template
{{ $image := .Resources.Get "sunset.jpg" }}
```
@z

@x
### Global resource
@y
### グローバルリソース {#global-resource}
@z

@x
A global resource is a file within the `assets` directory, or within any directory [mounted] to the `assets` directory.
@y
グローバルリソース (global resource) とは `assets` ディレクトリ、または `assets` に [マウントされた][mounted] ディレクトリ内にあるファイルを指します。
@z

@x
```text
assets/
└── images/
    └── sunset.jpg    <-- global resource
```
@y
```text
assets/
└── images/
    └── sunset.jpg    <-- グローバルリソース
```
@z

@x
To access an image as a global resource:
@y
グローバルリソースとしてイメージにアクセスするには以下のようにします。
@z

@x
```go-html-template
{{ $image := resources.Get "images/sunset.jpg" }}
```
@y
```go-html-template
{{ $image := resources.Get "images/sunset.jpg" }}
```
@z

@x
### Remote resource
@y
### リモートリソース {#remote-resource}
@z

@x
A remote resource is a file on a remote server, accessible via HTTP or HTTPS. To access an image as a remote resource:
@y
リモートリソース (remote resource) とは、リモートサーバー上にあるファイルを指します。
これらは HTTP または HTTPS を通じてアクセスするものです。
リモートリソースとしてイメージにアクセスするには以下のようにします。
@z

@x
```go-html-template
{{ $image := resources.GetRemote "https://gohugo.io/img/hugo-logo.png" }}
```
@y
```go-html-template
{{ $image := resources.GetRemote "https://gohugo.io/img/hugo-logo.png" }}
```
@z

@x
## Image rendering
@y
## イメージレンダリング {#image-rendering}
@z

@x
Once you have accessed an image as either a page resource or a global resource, render it in your templates using the `Permalink`, `RelPermalink`, `Width`, and `Height` properties.
@y
ページリソースかグローバルリソースとしてイメージへのアクセスを行なっておき、テンプレート内において `Permalink`, `RelPermalink`, `Width`, `Height` の各プロパティを用いてイメージをレンダリングします。
@z

@x
Example 1: Throws an error if the resource is not found.
@y
例 1: リソースが見つからない場合にエラーをスローする
@z

@x
```go-html-template
{{ $image := .Resources.GetMatch "sunset.jpg" }}
<img src="{{ $image.RelPermalink }}" width="{{ $image.Width }}" height="{{ $image.Height }}">
```
@y
```go-html-template
{{ $image := .Resources.GetMatch "sunset.jpg" }}
<img src="{{ $image.RelPermalink }}" width="{{ $image.Width }}" height="{{ $image.Height }}">
```
@z

@x
Example 2: Skips image rendering if the resource is not found.
@y
例 2: リソースが見つからない場合にイメージレンダリングをスキップする
@z

@x
```go-html-template
{{ $image := .Resources.GetMatch "sunset.jpg" }}
{{ with $image }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}">
{{ end }}
```
@y
```go-html-template
{{ $image := .Resources.GetMatch "sunset.jpg" }}
{{ with $image }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}">
{{ end }}
```
@z

@x
Example 3: A more concise way to skip image rendering if the resource is not found.
@y
例 3: リソースが見つからなかった場合にイメージレンダリングをスキップする、より簡単な方法
@z

@x
```go-html-template
{{ with .Resources.GetMatch "sunset.jpg" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}">
{{ end }}
```
@y
```go-html-template
{{ with .Resources.GetMatch "sunset.jpg" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}">
{{ end }}
```
@z

@x
Example 4: Skips rendering if there's problem accessing a remote resource.
@y
例 4: リモートリソースへのアクセスに問題が発生した場合にレンダリングをスキップする
@z

@x
```go-html-template
{{ $u := "https://gohugo.io/img/hugo-logo.png" }}
{{ with resources.GetRemote $u }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}">
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $u }}
{{ end }}
```
@y
```go-html-template
{{ $u := "https://gohugo.io/img/hugo-logo.png" }}
{{ with resources.GetRemote $u }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}">
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $u }}
{{ end }}
```
@z

@x
## Image processing methods
@y
## イメージ処理方法 {#image-processing-methods}
@z

@x
The `image` resource implements the  [`Process`],  [`Resize`], [`Fit`], [`Fill`], [`Crop`], [`Filter`], [`Colors`] and [`Exif`] methods.
@y
`image` リソースには [`Process`],  [`Resize`], [`Fit`], [`Fill`], [`Crop`], [`Filter`], [`Colors`], [`Exif`] の各メソッドが実装されます。
@z

@x
{{% note %}}
Metadata (EXIF, IPTC, XMP, etc.) is not preserved during image transformation. Use the `Exif` method with the _original_ image to extract EXIF metadata from JPEG or TIFF images.
{{% /note %}}
@y
{{% note %}}
イメージの変形処理を行った際にはメタデータ (EXIF, IPTC, XMP, など) は保持されません。
その場合は、*オリジナル* のイメージに対して `Exif` メソッドを使い、JPEG や TIFF の各イメージから EXIF メタデータを抽出してください。
{{% /note %}}
@z

@x
### Process
@y
### Process
@z

@x
{{< new-in 0.119.0 >}}
@y
{{< new-in 0.119.0 >}}
@z

@x
{{% note %}}
The `Process` method is also available as a filter, which is more effective if you need to apply multiple filters to an image. See [Process filter](/functions/images/process).
{{% /note %}}
@y
{{% note %}}
The `Process` method is also available as a filter, which is more effective if you need to apply multiple filters to an image. See [Process filter](/functions/images/process).
{{% /note %}}
@z

@x
Process processes the image with the given specification. The specification can contain an optional action, one of `resize`, `crop`, `fit` or `fill`. This means that you can use this method instead of [`Resize`], [`Fit`], [`Fill`], or [`Crop`].
@y
Process processes the image with the given specification. The specification can contain an optional action, one of `resize`, `crop`, `fit` or `fill`. This means that you can use this method instead of [`Resize`], [`Fit`], [`Fill`], or [`Crop`].
@z

@x
See [Options](#image-processing-options) for available options.
@y
See [Options](#image-processing-options) for available options.
@z

@x
You can also use this method apply image processing that does not need any scaling, e.g. format conversions:
@y
You can also use this method apply image processing that does not need any scaling, e.g. format conversions:
@z

@x
```go-html-template
{{/* Convert the image from JPG to PNG. */}}
{{ $png := $jpg.Process "png" }}
```
@y
```go-html-template
{{/* Convert the image from JPG to PNG. */}}
{{ $png := $jpg.Process "png" }}
```
@z

@x
Some more examples:
@y
Some more examples:
@z

@x
```go-html-template
{{/* Rotate the image 90 degrees counter-clockwise. */}}
{{ $image := $image.Process "r90" }}
@y
```go-html-template
{{/* Rotate the image 90 degrees counter-clockwise. */}}
{{ $image := $image.Process "r90" }}
@z

@x
{{/* Scaling actions. */}}
{{ $image := $image.Process "resize 600x" }}
{{ $image := $image.Process "crop 600x400" }}
{{ $image := $image.Process "fit 600x400" }}
{{ $image := $image.Process "fill 600x400" }}
```
@y
{{/* Scaling actions. */}}
{{ $image := $image.Process "resize 600x" }}
{{ $image := $image.Process "crop 600x400" }}
{{ $image := $image.Process "fit 600x400" }}
{{ $image := $image.Process "fill 600x400" }}
```
@z

@x
### Resize
@y
### Resize
@z

@x
Resize an image to the given width and/or height.
@y
Resize an image to the given width and/or height.
@z

@x
If you specify both width and height, the resulting image will be disproportionally scaled unless the original image has the same aspect ratio.
@y
If you specify both width and height, the resulting image will be disproportionally scaled unless the original image has the same aspect ratio.
@z

@x
```go-html-template
{{/* Resize to a width of 600px and preserve aspect ratio */}}
{{ $image := $image.Resize "600x" }}
@y
```go-html-template
{{/* Resize to a width of 600px and preserve aspect ratio */}}
{{ $image := $image.Resize "600x" }}
@z

@x
{{/* Resize to a height of 400px and preserve aspect ratio */}}
{{ $image := $image.Resize "x400" }}
@y
{{/* Resize to a height of 400px and preserve aspect ratio */}}
{{ $image := $image.Resize "x400" }}
@z

@x
{{/* Resize to a width of 600px and a height of 400px */}}
{{ $image := $image.Resize "600x400" }}
```
@y
{{/* Resize to a width of 600px and a height of 400px */}}
{{ $image := $image.Resize "600x400" }}
```
@z

@x
### Fit
@y
### Fit
@z

@x
Downscale an image to fit the given dimensions while maintaining aspect ratio. You must provide both width and height.
@y
Downscale an image to fit the given dimensions while maintaining aspect ratio. You must provide both width and height.
@z

@x
```go-html-template
{{ $image := $image.Fit "600x400" }}
```
@y
```go-html-template
{{ $image := $image.Fit "600x400" }}
```
@z

@x
### Fill
@y
### Fill
@z

@x
Crop and resize an image to match the given dimensions. You must provide both width and height. Use the [`anchor`] option to change the crop box anchor point.
@y
Crop and resize an image to match the given dimensions. You must provide both width and height. Use the [`anchor`] option to change the crop box anchor point.
@z

@x
```go-html-template
{{ $image := $image.Fill "600x400" }}
```
@y
```go-html-template
{{ $image := $image.Fill "600x400" }}
```
@z

@x
### Crop
@y
### Crop
@z

@x
Crop an image to match the given dimensions without resizing. You must provide both width and height. Use the [`anchor`] option to change the crop box anchor point.
@y
Crop an image to match the given dimensions without resizing. You must provide both width and height. Use the [`anchor`] option to change the crop box anchor point.
@z

@x
```go-html-template
{{ $image := $image.Crop "600x400" }}
```
@y
```go-html-template
{{ $image := $image.Crop "600x400" }}
```
@z

@x
### Filter
@y
### Filter
@z

@x
Apply one or more [filters] to an image.
@y
Apply one or more [filters] to an image.
@z

@x
```go-html-template
{{ $image := $image.Filter (images.GaussianBlur 6) (images.Pixelate 8) }}
```
@y
```go-html-template
{{ $image := $image.Filter (images.GaussianBlur 6) (images.Pixelate 8) }}
```
@z

@x
Write this in a more functional style using pipes. Hugo applies the filters in the order given.
@y
Write this in a more functional style using pipes. Hugo applies the filters in the order given.
@z

@x
```go-html-template
{{ $image := $image | images.Filter (images.GaussianBlur 6) (images.Pixelate 8) }}
```
@y
```go-html-template
{{ $image := $image | images.Filter (images.GaussianBlur 6) (images.Pixelate 8) }}
```
@z

@x
Sometimes it can be useful to create the filter chain once and then reuse it.
@y
Sometimes it can be useful to create the filter chain once and then reuse it.
@z

@x
```go-html-template
{{ $filters := slice  (images.GaussianBlur 6) (images.Pixelate 8) }}
{{ $image1 := $image1.Filter $filters }}
{{ $image2 := $image2.Filter $filters }}
```
@y
```go-html-template
{{ $filters := slice  (images.GaussianBlur 6) (images.Pixelate 8) }}
{{ $image1 := $image1.Filter $filters }}
{{ $image2 := $image2.Filter $filters }}
```
@z

@x
### Colors
@y
### Colors
@z

@x
{{< new-in 0.104.0 >}}
@y
{{< new-in 0.104.0 >}}
@z

@x
`.Colors` returns a slice of hex strings with the dominant colors in the image using a simple histogram method.
@y
`.Colors` returns a slice of hex strings with the dominant colors in the image using a simple histogram method.
@z

@x
```go-html-template
{{ $colors := $image.Colors }}
```
@y
```go-html-template
{{ $colors := $image.Colors }}
```
@z

@x
This method is fast, but if you also scale down your images, it would be good for performance to extract the colors from the scaled down image.
@y
This method is fast, but if you also scale down your images, it would be good for performance to extract the colors from the scaled down image.
@z

@x
### EXIF
@y
### EXIF
@z

@x
Provides an [EXIF] object containing image metadata.
@y
Provides an [EXIF] object containing image metadata.
@z

@x
You may access EXIF data in JPEG and TIFF images. To prevent errors when processing images without EXIF data, wrap the access in a [`with`] statement.
@y
You may access EXIF data in JPEG and TIFF images. To prevent errors when processing images without EXIF data, wrap the access in a [`with`] statement.
@z

@x
```go-html-template
{{ with $image.Exif }}
  Date: {{ .Date }}
  Lat/Long: {{ .Lat }}/{{ .Long }}
  Tags:
  {{ range $k, $v := .Tags }}
    TAG: {{ $k }}: {{ $v }}
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with $image.Exif }}
  Date: {{ .Date }}
  Lat/Long: {{ .Lat }}/{{ .Long }}
  Tags:
  {{ range $k, $v := .Tags }}
    TAG: {{ $k }}: {{ $v }}
  {{ end }}
{{ end }}
```
@z

@x
You may also access EXIF fields individually, using the [`lang.FormatNumber`] function to format the fields as needed.
@y
You may also access EXIF fields individually, using the [`lang.FormatNumber`] function to format the fields as needed.
@z

@x
```go-html-template
{{ with $image.Exif }}
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
```
@y
```go-html-template
{{ with $image.Exif }}
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
```
@z

@x
#### EXIF variables
@y
#### EXIF variables
@z

@x
.Date
: Image creation date/time. Format with the [time.Format] function.
@y
.Date
: Image creation date/time. Format with the [time.Format] function.
@z

@x
.Lat
: GPS latitude in degrees.
@y
.Lat
: GPS latitude in degrees.
@z

@x
.Long
: GPS longitude in degrees.
@y
.Long
: GPS longitude in degrees.
@z

@x
.Tags
: A collection of the available EXIF tags for this image. You may include or exclude specific tags from this collection in the [site configuration](#exif-data).
@y
.Tags
: A collection of the available EXIF tags for this image. You may include or exclude specific tags from this collection in the [site configuration](#exif-data).
@z

@x
## Image processing options
@y
## Image processing options
@z

@x
The [`Resize`], [`Fit`], [`Fill`], and [`Crop`] methods accept a space-delimited, case-insensitive list of options. The order of the options within the list is irrelevant.
@y
The [`Resize`], [`Fit`], [`Fill`], and [`Crop`] methods accept a space-delimited, case-insensitive list of options. The order of the options within the list is irrelevant.
@z

@x
### Dimensions
@y
### Dimensions
@z

@x
With the [`Resize`] method you must specify width, height, or both. The [`Fit`], [`Fill`], and [`Crop`] methods require both width and height. All dimensions are in pixels.
@y
With the [`Resize`] method you must specify width, height, or both. The [`Fit`], [`Fill`], and [`Crop`] methods require both width and height. All dimensions are in pixels.
@z

@x
```go-html-template
{{ $image := $image.Resize "600x" }}
{{ $image := $image.Resize "x400" }}
{{ $image := $image.Resize "600x400" }}
{{ $image := $image.Fit "600x400" }}
{{ $image := $image.Fill "600x400" }}
{{ $image := $image.Crop "600x400" }}
```
@y
```go-html-template
{{ $image := $image.Resize "600x" }}
{{ $image := $image.Resize "x400" }}
{{ $image := $image.Resize "600x400" }}
{{ $image := $image.Fit "600x400" }}
{{ $image := $image.Fill "600x400" }}
{{ $image := $image.Crop "600x400" }}
```
@z

@x
### Rotation
@y
### Rotation
@z

@x
Rotates an image counter-clockwise by the given angle. Hugo performs rotation _before_ scaling. For example, if the original image is 600x400 and you wish to rotate the image 90 degrees counter-clockwise while scaling it by 50%:
@y
Rotates an image counter-clockwise by the given angle. Hugo performs rotation _before_ scaling. For example, if the original image is 600x400 and you wish to rotate the image 90 degrees counter-clockwise while scaling it by 50%:
@z

@x
```go-html-template
{{ $image = $image.Resize "200x r90" }}
```
@y
```go-html-template
{{ $image = $image.Resize "200x r90" }}
```
@z

@x
In the example above, the width represents the desired width _after_ rotation.
@y
In the example above, the width represents the desired width _after_ rotation.
@z

@x
To rotate an image without scaling, use the dimensions of the original image:
@y
To rotate an image without scaling, use the dimensions of the original image:
@z

@x
```go-html-template
{{ with .Resources.GetMatch "sunset.jpg" }}
  {{ with .Resize (printf "%dx%d r90" .Height .Width) }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with .Resources.GetMatch "sunset.jpg" }}
  {{ with .Resize (printf "%dx%d r90" .Height .Width) }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}">
  {{ end }}
{{ end }}
```
@z

@x
In the example above, on the second line, we have reversed width and height to reflect the desired dimensions _after_ rotation.
@y
In the example above, on the second line, we have reversed width and height to reflect the desired dimensions _after_ rotation.
@z

@x
### Anchor
@y
### Anchor
@z

@x
When using the [`Crop`] or [`Fill`] method, the _anchor_ determines the placement of the crop box. You may specify `TopLeft`, `Top`, `TopRight`, `Left`, `Center`, `Right`, `BottomLeft`, `Bottom`, `BottomRight`, or `Smart`.
@y
When using the [`Crop`] or [`Fill`] method, the _anchor_ determines the placement of the crop box. You may specify `TopLeft`, `Top`, `TopRight`, `Left`, `Center`, `Right`, `BottomLeft`, `Bottom`, `BottomRight`, or `Smart`.
@z

@x
The default value is `Smart`, which uses [Smartcrop] image analysis to determine the optimal placement of the crop box. You may override the default value in the [site configuration].
@y
The default value is `Smart`, which uses [Smartcrop] image analysis to determine the optimal placement of the crop box. You may override the default value in the [site configuration].
@z

@x
For example, if you have a 400x200 image with a bird in the upper left quadrant, you can create a 200x100 thumbnail containing the bird:
@y
For example, if you have a 400x200 image with a bird in the upper left quadrant, you can create a 200x100 thumbnail containing the bird:
@z

@x
```go-html-template
{{ $image.Crop "200x100 TopLeft" }}
```
@y
```go-html-template
{{ $image.Crop "200x100 TopLeft" }}
```
@z

@x
If you apply [rotation](#rotation) when using the [`Crop`] or [`Fill`] method, specify the anchor relative to the rotated image.
@y
If you apply [rotation](#rotation) when using the [`Crop`] or [`Fill`] method, specify the anchor relative to the rotated image.
@z

@x
### Target format
@y
### Target format
@z

@x
By default, Hugo encodes the image in the source format. You may convert the image to another format by specifying `bmp`, `gif`, `jpeg`, `jpg`, `png`, `tif`, `tiff`, or `webp`.
@y
By default, Hugo encodes the image in the source format. You may convert the image to another format by specifying `bmp`, `gif`, `jpeg`, `jpg`, `png`, `tif`, `tiff`, or `webp`.
@z

@x
```go-html-template
{{ $image.Resize "600x webp" }}
```
@y
```go-html-template
{{ $image.Resize "600x webp" }}
```
@z

@x
To convert an image without scaling, use the dimensions of the original image:
@y
To convert an image without scaling, use the dimensions of the original image:
@z

@x
```go-html-template
{{ with .Resources.GetMatch "sunset.jpg" }}
  {{ with .Resize (printf "%dx%d webp" .Width .Height) }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with .Resources.GetMatch "sunset.jpg" }}
  {{ with .Resize (printf "%dx%d webp" .Width .Height) }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}">
  {{ end }}
{{ end }}
```
@z

@x
### Quality
@y
### Quality
@z

@x
Applicable to JPEG and WebP images, the `q` value determines the quality of the converted image. Higher values produce better quality images, while lower values produce smaller files. Set this value to a whole number between 1 and 100, inclusive.
@y
Applicable to JPEG and WebP images, the `q` value determines the quality of the converted image. Higher values produce better quality images, while lower values produce smaller files. Set this value to a whole number between 1 and 100, inclusive.
@z

@x
The default value is 75. You may override the default value in the [site configuration].
@y
The default value is 75. You may override the default value in the [site configuration].
@z

@x
```go-html-template
{{ $image.Resize "600x webp q50" }}
```
@y
```go-html-template
{{ $image.Resize "600x webp q50" }}
```
@z

@x
### Hint
@y
### Hint
@z

@x
Applicable to WebP images, this option corresponds to a set of predefined encoding parameters, and is equivalent to the `-preset` flag for the [`cwebp`] encoder.
@y
Applicable to WebP images, this option corresponds to a set of predefined encoding parameters, and is equivalent to the `-preset` flag for the [`cwebp`] encoder.
@z

@x
[`cwebp`]: https://developers.google.com/speed/webp/docs/cwebp
@y
[`cwebp`]: https://developers.google.com/speed/webp/docs/cwebp
@z

@x
Value|Example
:--|:--
`drawing`|Hand or line drawing with high-contrast details
`icon`|Small colorful image
`photo`|Outdoor photograph with natural lighting
`picture`|Indoor photograph such as a portrait
`text`|Image that is primarily text
@y
Value|Example
:--|:--
`drawing`|Hand or line drawing with high-contrast details
`icon`|Small colorful image
`photo`|Outdoor photograph with natural lighting
`picture`|Indoor photograph such as a portrait
`text`|Image that is primarily text
@z

@x
The default value is `photo`. You may override the default value in the [site configuration].
@y
The default value is `photo`. You may override the default value in the [site configuration].
@z

@x
```go-html-template
{{ $image.Resize "600x webp picture" }}
```
@y
```go-html-template
{{ $image.Resize "600x webp picture" }}
```
@z

@x
### Background color
@y
### Background color
@z

@x
When converting an image from a format that supports transparency (e.g., PNG) to a format that does _not_ support transparency (e.g., JPEG), you may specify the background color of the resulting image.
@y
When converting an image from a format that supports transparency (e.g., PNG) to a format that does _not_ support transparency (e.g., JPEG), you may specify the background color of the resulting image.
@z

@x
Use either a 3-digit or 6-digit hexadecimal color code (e.g., `#00f` or `#0000ff`).
@y
Use either a 3-digit or 6-digit hexadecimal color code (e.g., `#00f` or `#0000ff`).
@z

@x
The default value is `#ffffff` (white). You may override the default value in the [site configuration].
@y
The default value is `#ffffff` (white). You may override the default value in the [site configuration].
@z

@x
```go-html-template
{{ $image.Resize "600x jpg #b31280" }}
```
@y
```go-html-template
{{ $image.Resize "600x jpg #b31280" }}
```
@z

@x
### Resampling filter
@y
### Resampling filter
@z

@x
You may specify the resampling filter used when resizing an image. Commonly used resampling filters include:
@y
You may specify the resampling filter used when resizing an image. Commonly used resampling filters include:
@z

@x
Filter|Description
:--|:--
`Box`|Simple and fast averaging filter appropriate for downscaling
`Lanczos`|High-quality resampling filter for photographic images yielding sharp results
`CatmullRom`|Sharp cubic filter that is faster than the Lanczos filter while providing similar results
`MitchellNetravali`|Cubic filter that produces smoother results with less ringing artifacts than CatmullRom
`Linear`|Bilinear resampling filter, produces smooth output, faster than cubic filters
`NearestNeighbor`|Fastest resampling filter, no antialiasing
@y
Filter|Description
:--|:--
`Box`|Simple and fast averaging filter appropriate for downscaling
`Lanczos`|High-quality resampling filter for photographic images yielding sharp results
`CatmullRom`|Sharp cubic filter that is faster than the Lanczos filter while providing similar results
`MitchellNetravali`|Cubic filter that produces smoother results with less ringing artifacts than CatmullRom
`Linear`|Bilinear resampling filter, produces smooth output, faster than cubic filters
`NearestNeighbor`|Fastest resampling filter, no antialiasing
@z

@x
The default value is `Box`. You may override the default value in the [site configuration].
@y
The default value is `Box`. You may override the default value in the [site configuration].
@z

@x
```go-html-template
{{ $image.Resize "600x400 Lanczos" }}
```
@y
```go-html-template
{{ $image.Resize "600x400 Lanczos" }}
```
@z

@x
See [github.com/disintegration/imaging] for the complete list of resampling filters. If you wish to improve image quality at the expense of performance, you may wish to experiment with the alternative filters.
@y
See [github.com/disintegration/imaging] for the complete list of resampling filters. If you wish to improve image quality at the expense of performance, you may wish to experiment with the alternative filters.
@z

@x
## Image processing examples
@y
## Image processing examples
@z

@x
_The photo of the sunset used in the examples below is Copyright [Bjørn Erik Pedersen](https://commons.wikimedia.org/wiki/User:Bep) (Creative Commons Attribution-Share Alike 4.0 International license)_
@y
_The photo of the sunset used in the examples below is Copyright [Bjørn Erik Pedersen](https://commons.wikimedia.org/wiki/User:Bep) (Creative Commons Attribution-Share Alike 4.0 International license)_
@z

@x
{{< imgproc "sunset.jpg" "resize 300x" />}}
@y
{{< imgproc "sunset.jpg" "resize 300x" />}}
@z

@x
{{< imgproc "sunset.jpg" "fill 90x120 left" />}}
@y
{{< imgproc "sunset.jpg" "fill 90x120 left" />}}
@z

@x
{{< imgproc "sunset.jpg" "fill 90x120 right" />}}
@y
{{< imgproc "sunset.jpg" "fill 90x120 right" />}}
@z

@x
{{< imgproc "sunset.jpg" "fit 90x90" />}}
@y
{{< imgproc "sunset.jpg" "fit 90x90" />}}
@z

@x
{{< imgproc "sunset.jpg" "crop 250x250 center" />}}
@y
{{< imgproc "sunset.jpg" "crop 250x250 center" />}}
@z

@x
{{< imgproc "sunset.jpg" "resize 300x q10" />}}
@y
{{< imgproc "sunset.jpg" "resize 300x q10" />}}
@z

@x
This is the shortcode used to generate the examples above:
@y
This is the shortcode used to generate the examples above:
@z

@x
{{< readfile file=layouts/shortcodes/imgproc.html highlight=go-html-template >}}
@y
{{< readfile file=layouts/shortcodes/imgproc.html highlight=go-html-template >}}
@z

@x
Call the shortcode from your Markdown like this:
@y
Call the shortcode from your Markdown like this:
@z

@x
```go-html-template
{{</* imgproc "sunset.jpg" "resize 300x" /*/>}}
```
@y
```go-html-template
{{</* imgproc "sunset.jpg" "resize 300x" /*/>}}
```
@z

@x
{{% note %}}
Note the self-closing shortcode syntax above. You may call the `imgproc` shortcode with or without **inner content**.
{{% /note %}}
@y
{{% note %}}
Note the self-closing shortcode syntax above. You may call the `imgproc` shortcode with or without **inner content**.
{{% /note %}}
@z

@x
## Imaging configuration
@y
## Imaging configuration
@z

@x
### Processing options
@y
### Processing options
@z

@x
Define an `imaging` section in your site configuration to set the default [image processing options](#image-processing-options).
@y
Define an `imaging` section in your site configuration to set the default [image processing options](#image-processing-options).
@z

@x
{{< code-toggle config=imaging />}}
@y
{{< code-toggle config=imaging />}}
@z

@x
anchor
: See image processing options: [anchor](#anchor).
@y
anchor
: See image processing options: [anchor](#anchor).
@z

@x
bgColor
: See image processing options: [background color](#background-color).
@y
bgColor
: See image processing options: [background color](#background-color).
@z

@x
hint
: See image processing options: [hint](#hint).
@y
hint
: See image processing options: [hint](#hint).
@z

@x
quality
: See image processing options: [quality](#quality).
@y
quality
: See image processing options: [quality](#quality).
@z

@x
resampleFilter
: See image processing options: [resampling filter](#resampling-filter).
@y
resampleFilter
: See image processing options: [resampling filter](#resampling-filter).
@z

@x
### EXIF data
@y
### EXIF data
@z

@x
Define an `imaging.exif` section in your site configuration to control the availability of EXIF data.
@y
Define an `imaging.exif` section in your site configuration to control the availability of EXIF data.
@z

@x
{{< code-toggle file=hugo >}}
[imaging.exif]
includeFields = ""
excludeFields = ""
disableDate = false
disableLatLong = false
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[imaging.exif]
includeFields = ""
excludeFields = ""
disableDate = false
disableLatLong = false
{{< /code-toggle >}}
@z

@x
disableDate
: Hugo extracts the image creation date/time into `.Date`. Set this to `true` to disable. Default is `false`.
@y
disableDate
: Hugo extracts the image creation date/time into `.Date`. Set this to `true` to disable. Default is `false`.
@z

@x
disableLatLong
: Hugo extracts the GPS latitude and longitude into `.Lat` and `.Long`. Set this to `true` to disable. Default is `false`.
@y
disableLatLong
: Hugo extracts the GPS latitude and longitude into `.Lat` and `.Long`. Set this to `true` to disable. Default is `false`.
@z

@x
excludeFields
: Regular expression matching the EXIF tags to exclude from the `.Tags` collection. Default is&nbsp;`""`.
@y
excludeFields
: Regular expression matching the EXIF tags to exclude from the `.Tags` collection. Default is&nbsp;`""`.
@z

@x
includeFields
: Regular expression matching the EXIF tags to include in the `.Tags` collection. Default is&nbsp;`""`. To include all available tags, set this value to&nbsp;`".*"`.
@y
includeFields
: Regular expression matching the EXIF tags to include in the `.Tags` collection. Default is&nbsp;`""`. To include all available tags, set this value to&nbsp;`".*"`.
@z

@x
{{% note %}}
To improve performance and decrease cache size, Hugo excludes the following tags: `ColorSpace`, `Contrast`, `Exif`, `Exposure[M|P|B]`, `Flash`, `GPS`, `JPEG`, `Metering`, `Resolution`, `Saturation`, `Sensing`, `Sharp`, and `WhiteBalance`.
@y
{{% note %}}
To improve performance and decrease cache size, Hugo excludes the following tags: `ColorSpace`, `Contrast`, `Exif`, `Exposure[M|P|B]`, `Flash`, `GPS`, `JPEG`, `Metering`, `Resolution`, `Saturation`, `Sensing`, `Sharp`, and `WhiteBalance`.
@z

@x
To control tag availability, change the `excludeFields` or `includeFields` settings as described above.
{{% /note %}}
@y
To control tag availability, change the `excludeFields` or `includeFields` settings as described above.
{{% /note %}}
@z

@x
## Smart cropping of images
@y
## Smart cropping of images
@z

@x
By default, Hugo uses the [Smartcrop] library when cropping images with the `Crop` or`Fill` methods. You can set the anchor point manually, but in most cases the `Smart` option will make a good choice.
@y
By default, Hugo uses the [Smartcrop] library when cropping images with the `Crop` or`Fill` methods. You can set the anchor point manually, but in most cases the `Smart` option will make a good choice.
@z

@x
Examples using the sunset image from above:
@y
Examples using the sunset image from above:
@z

@x
{{< imgproc "sunset.jpg" "fill 200x200 smart" />}}
@y
{{< imgproc "sunset.jpg" "fill 200x200 smart" />}}
@z

@x
{{< imgproc "sunset.jpg" "crop 200x200 smart" />}}
@y
{{< imgproc "sunset.jpg" "crop 200x200 smart" />}}
@z

@x
## Image processing performance consideration
@y
## Image processing performance consideration
@z

@x
Hugo caches processed images in the `resources` directory. If you include this directory in source control, Hugo will not have to regenerate the images in a CI/CD workflow (e.g., GitHub Pages, GitLab Pages, Netlify, etc.). This results in faster builds.
@y
Hugo caches processed images in the `resources` directory. If you include this directory in source control, Hugo will not have to regenerate the images in a CI/CD workflow (e.g., GitHub Pages, GitLab Pages, Netlify, etc.). This results in faster builds.
@z

@x
If you change image processing methods or options, or if you rename or remove images, the `resources` directory will contain unused images. To remove the unused images, perform garbage collection with:
@y
If you change image processing methods or options, or if you rename or remove images, the `resources` directory will contain unused images. To remove the unused images, perform garbage collection with:
@z

@x
```sh
hugo --gc
```
@y
```sh
hugo --gc
```
@z

% snip URLs...
