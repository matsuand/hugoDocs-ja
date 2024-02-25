%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
# Do not remove front matter.
---
@y
---
# Do not remove front matter.
---
@z

@x
## Process specification
@y
## Process specification
@z

@x
The process specification is a space-delimited, case-insensitive list of one or more of the following in any sequence:
@y
The process specification is a space-delimited, case-insensitive list of one or more of the following in any sequence:
@z

@x
action
: Applicable to the [`Process`](/methods/resource/process) method only. Specify zero or one of `crop`, `fill`, `fit`, or `resize`. If you specify an action you must also provide dimensions.
@y
action
: Applicable to the [`Process`](/methods/resource/process) method only. Specify zero or one of `crop`, `fill`, `fit`, or `resize`. If you specify an action you must also provide dimensions.
@z

@x
dimensions
: Provide width _or_ height when using the [`Resize`](/methods/resource/resize) method, else provide both width _and_ height. See&nbsp;[details](/content-management/image-processing/#dimensions).
@y
dimensions
: Provide width _or_ height when using the [`Resize`](/methods/resource/resize) method, else provide both width _and_ height. See&nbsp;[details](/content-management/image-processing/#dimensions).
@z

@x
anchor
: Use with the [`Crop`](/methods/resource/crop) and [`Fill`](/methods/resource/fill) methods. Specify zero or one of `TopLeft`, `Top`, `TopRight`, `Left`, `Center`, `Right`, `BottomLeft`, `Bottom`, `BottomRight`, or `Smart`. Default is `Smart`. See&nbsp;[details](/content-management/image-processing/#anchor).
@y
anchor
: Use with the [`Crop`](/methods/resource/crop) and [`Fill`](/methods/resource/fill) methods. Specify zero or one of `TopLeft`, `Top`, `TopRight`, `Left`, `Center`, `Right`, `BottomLeft`, `Bottom`, `BottomRight`, or `Smart`. Default is `Smart`. See&nbsp;[details](/content-management/image-processing/#anchor).
@z

@x
rotation
: Typically specify zero or one of `r90`, `r180`, or `r270`. Also supports arbitrary rotation angles. See&nbsp;[details](/content-management/image-processing/#rotation).
@y
rotation
: Typically specify zero or one of `r90`, `r180`, or `r270`. Also supports arbitrary rotation angles. See&nbsp;[details](/content-management/image-processing/#rotation).
@z

@x
target format
: Specify zero or one of `gif`, `jpeg`, `png`, `tiff`, or `webp`. See&nbsp;[details](/content-management/image-processing/#target-format).
@y
target format
: Specify zero or one of `gif`, `jpeg`, `png`, `tiff`, or `webp`. See&nbsp;[details](/content-management/image-processing/#target-format).
@z

@x
quality
: Applicable to JPEG and WebP images. Optionally specify `qN` where `N` is an integer in the range [0, 100]. Default is `75`. See&nbsp;[details](/content-management/image-processing/#quality).
@y
quality
: Applicable to JPEG and WebP images. Optionally specify `qN` where `N` is an integer in the range [0, 100]. Default is `75`. See&nbsp;[details](/content-management/image-processing/#quality).
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
background color
: When converting a PNG or WebP with transparency to a format that does not support transparency, optionally specify a background color using a 3-digit or a 6-digit hexadecimal color code. Default is `#ffffff` (white). See&nbsp;[details](/content-management/image-processing/#background-color).
@y
background color
: When converting a PNG or WebP with transparency to a format that does not support transparency, optionally specify a background color using a 3-digit or a 6-digit hexadecimal color code. Default is `#ffffff` (white). See&nbsp;[details](/content-management/image-processing/#background-color).
@z

@x
resampling filter
: Typically specify zero or one of `Box`, `Lanczos`, `CatmullRom`, `MitchellNetravali`, `Linear`, or `NearestNeighbor`. Other resampling filters are available. See&nbsp;[details](/content-management/image-processing/#resampling-filter).
@y
resampling filter
: Typically specify zero or one of `Box`, `Lanczos`, `CatmullRom`, `MitchellNetravali`, `Linear`, or `NearestNeighbor`. Other resampling filters are available. See&nbsp;[details](/content-management/image-processing/#resampling-filter).
@z
