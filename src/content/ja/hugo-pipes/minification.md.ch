%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Minify
linkTitle: Asset minification
description: Minifies a given resource.
categories: [asset management]
keywords: []
menu:
  docs:
    parent: hugo-pipes
    weight: 80
weight: 80
action:
  aliases: [minify]
  returnType: resource.Resource
  signatures: [resources.Minify RESOURCE]
---
@y
---
title: Minify
linkTitle: Asset minification
description: Minifies a given resource.
categories: [asset management]
keywords: []
menu:
  docs:
    parent: hugo-pipes
    weight: 80
weight: 80
action:
  aliases: [minify]
  returnType: resource.Resource
  signatures: [resources.Minify RESOURCE]
---
@z

@x
## Usage
@y
## Usage
@z

@x
Any CSS, JS, JSON, HTML, SVG, or XML resource can be minified using `resources.Minify` which takes for argument the resource object.
@y
Any CSS, JS, JSON, HTML, SVG, or XML resource can be minified using `resources.Minify` which takes for argument the resource object.
@z

@x
```go-html-template
{{ $css := resources.Get "css/main.css" }}
{{ $style := $css | resources.Minify }}
```
@y
```go-html-template
{{ $css := resources.Get "css/main.css" }}
{{ $style := $css | resources.Minify }}
```
@z

@x
Note that you can also minify the final HTML output to `/public` by running `hugo --minify`.
@y
Note that you can also minify the final HTML output to `/public` by running `hugo --minify`.
@z
