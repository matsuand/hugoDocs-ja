%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: ExecuteAsTemplate
linkTitle: Resource from template
description: Creates a resource from a template
categories: [asset management]
keywords: []
menu:
  docs:
    parent: hugo-pipes
    weight: 120
weight: 120
action:
  aliases: []
  returnType: resource.Resource
  signatures: [resources.ExecuteAsTemplate TARGETPATH CONTEXT RESOURCE]
---
@y
---
title: ExecuteAsTemplate
linkTitle: Resource from template
description: Creates a resource from a template
categories: [asset management]
keywords: []
menu:
  docs:
    parent: hugo-pipes
    weight: 120
weight: 120
action:
  aliases: []
  returnType: resource.Resource
  signatures: [resources.ExecuteAsTemplate TARGETPATH CONTEXT RESOURCE]
---
@z

@x
## Usage
@y
## Usage
@z

@x
In order to use Hugo Pipes function on an asset file containing Go Template magic the function `resources.ExecuteAsTemplate` must be used.
@y
In order to use Hugo Pipes function on an asset file containing Go Template magic the function `resources.ExecuteAsTemplate` must be used.
@z

@x
The function takes three arguments: the target path for the created resource, the template context, and the resource object. The target path is used to cache the result.
@y
The function takes three arguments: the target path for the created resource, the template context, and the resource object. The target path is used to cache the result.
@z

@x
```go-html-template
// assets/sass/template.scss
$backgroundColor: {{ .Param "backgroundColor" }};
$textColor: {{ .Param "textColor" }};
body{
  background-color:$backgroundColor;
  color: $textColor;
}
// [...]
```
@y
```go-html-template
// assets/sass/template.scss
$backgroundColor: {{ .Param "backgroundColor" }};
$textColor: {{ .Param "textColor" }};
body{
  background-color:$backgroundColor;
  color: $textColor;
}
// [...]
```
@z

@x
```go-html-template
{{ $sassTemplate := resources.Get "sass/template.scss" }}
{{ $style := $sassTemplate | resources.ExecuteAsTemplate "main.scss" . | resources.ToCSS }}
```
@y
```go-html-template
{{ $sassTemplate := resources.Get "sass/template.scss" }}
{{ $style := $sassTemplate | resources.ExecuteAsTemplate "main.scss" . | resources.ToCSS }}
```
@z
