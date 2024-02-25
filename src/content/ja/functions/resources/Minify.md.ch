%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: resources.Minify
description: Minifies the given resource.
categories: []
keywords: []
action:
  aliases: [minify]
  related:
    - functions/js/Build
    - functions/resources/Babel
    - functions/resources/Fingerprint
    - functions/resources/PostCSS
    - functions/resources/ToCSS
  returnType: resource.Resource
  signatures: [resources.Minify RESOURCE]
---
@y
---
title: resources.Minify
description: Minifies the given resource.
categories: []
keywords: []
action:
  aliases: [minify]
  related:
    - functions/js/Build
    - functions/resources/Babel
    - functions/resources/Fingerprint
    - functions/resources/PostCSS
    - functions/resources/ToCSS
  returnType: resource.Resource
  signatures: [resources.Minify RESOURCE]
---
@z

@x
```go-html-template
{{ $css := resources.Get "css/main.css" }}
{{ $style := $css | minify }}
```
@y
```go-html-template
{{ $css := resources.Get "css/main.css" }}
{{ $style := $css | minify }}
```
@z

@x
Any CSS, JS, JSON, HTML, SVG, or XML resource can be minified using resources.Minify which takes for argument the resource object.
@y
Any CSS, JS, JSON, HTML, SVG, or XML resource can be minified using resources.Minify which takes for argument the resource object.
@z
