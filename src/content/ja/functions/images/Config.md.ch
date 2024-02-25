%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: images.Config
description: Returns an image.Config structure from the image at the specified path, relative to the working directory.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: image.Config
  signatures: [images.Config PATH]
aliases: [/functions/imageconfig]
---
@y
---
title: images.Config
description: Returns an image.Config structure from the image at the specified path, relative to the working directory.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: image.Config
  signatures: [images.Config PATH]
aliases: [/functions/imageconfig]
---
@z

@x
See [image processing] for an overview of Hugo's image pipeline.
@y
See [image processing] for an overview of Hugo's image pipeline.
@z

@x
[image processing]: /content-management/image-processing/
@y
[image processing]: /content-management/image-processing/
@z

@x
```go-html-template
{{ $ic := images.Config "/static/images/a.jpg" }}
@y
```go-html-template
{{ $ic := images.Config "/static/images/a.jpg" }}
@z

@x
{{ $ic.Width }} → 600 (int)
{{ $ic.Height }} → 400 (int)
```
@y
{{ $ic.Width }} → 600 (int)
{{ $ic.Height }} → 400 (int)
```
@z

@x
Supported image formats include GIF, JPEG, PNG, TIFF, and WebP.
@y
Supported image formats include GIF, JPEG, PNG, TIFF, and WebP.
@z

@x
{{% note %}}
This is a legacy function, superseded by the [`Width`] and [`Height`] methods for [global], [page], and [remote] resources. See the [image processing] section for details.
@y
{{% note %}}
This is a legacy function, superseded by the [`Width`] and [`Height`] methods for [global], [page], and [remote] resources. See the [image processing] section for details.
@z

@x
[`Width`]: /methods/resource/width/
[`Height`]: /methods/resource/height/
[global]: /getting-started/glossary/#global-resource
[image processing]: /content-management/image-processing/
[page]: /getting-started/glossary/#page-resource
[remote]: /getting-started/glossary/#remote-resource
{{% /note %}}
@y
[`Width`]: /methods/resource/width/
[`Height`]: /methods/resource/height/
[global]: /getting-started/glossary/#global-resource
[image processing]: /content-management/image-processing/
[page]: /getting-started/glossary/#page-resource
[remote]: /getting-started/glossary/#remote-resource
{{% /note %}}
@z
