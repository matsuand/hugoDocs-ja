%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: MediaType
description: Returns a media type object for the given resource.
categories: []
keywords: []
action:
  related: []
  returnType: media.Type
  signatures: [RESOURCE.MediaType]
---
@y
---
title: MediaType
description: Returns a media type object for the given resource.
categories: []
keywords: []
action:
  related: []
  returnType: media.Type
  signatures: [RESOURCE.MediaType]
---
@z

@x
The `MediaType` method on a `Resource` object returns an object with additional methods.
@y
The `MediaType` method on a `Resource` object returns an object with additional methods.
@z

@x
## Methods
@y
## Methods
@z

@x
Type
: (`string`) The resource's media type.
@y
Type
: (`string`) The resource's media type.
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .MediaType.Type }} → image/jpeg
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .MediaType.Type }} → image/jpeg
{{ end }}
```
@z

@x
MainType
: (`string`) The main type of the resource’s media type.
@y
MainType
: (`string`) The main type of the resource’s media type.
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .MediaType.MainType }} → image
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .MediaType.MainType }} → image
{{ end }}
```
@z

@x
SubType
: (`string`) The subtype of the resource’s media type. This may or may not correspond to the file suffix.
@y
SubType
: (`string`) The subtype of the resource’s media type. This may or may not correspond to the file suffix.
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .MediaType.SubType }} → jpeg
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .MediaType.SubType }} → jpeg
{{ end }}
```
@z

@x
Suffixes
: (`slice`) A slice of possible file suffixes for the resource’s media type.
@y
Suffixes
: (`slice`) A slice of possible file suffixes for the resource’s media type.
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .MediaType.Suffixes }} → [jpg jpeg jpe jif jfif]
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .MediaType.Suffixes }} → [jpg jpeg jpe jif jfif]
{{ end }}
```
@z

@x
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@y
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@z
