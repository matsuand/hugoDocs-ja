%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Concat
linkTitle: Concatenating assets
description: Bundle any number of assets into one resource.
categories: [asset management]
keywords: []
menu:
  docs:
    parent: hugo-pipes
    weight: 90
weight: 90
action:
  aliases: []
  returnType: resource.Resource
  signatures: ['resources.Concat TARGETPATH [RESOURCE...]']
---
@y
---
title: Concat
linkTitle: Concatenating assets
description: Bundle any number of assets into one resource.
categories: [asset management]
keywords: []
menu:
  docs:
    parent: hugo-pipes
    weight: 90
weight: 90
action:
  aliases: []
  returnType: resource.Resource
  signatures: ['resources.Concat TARGETPATH [RESOURCE...]']
---
@z

@x
## Usage
@y
## Usage
@z

@x
Asset files of the same MIME type can be bundled into one resource using `resources.Concat` which takes two arguments, the target path for the created resource bundle and a slice of resource objects to be concatenated.
@y
Asset files of the same MIME type can be bundled into one resource using `resources.Concat` which takes two arguments, the target path for the created resource bundle and a slice of resource objects to be concatenated.
@z

@x
```go-html-template
{{ $plugins := resources.Get "js/plugins.js" }}
{{ $global := resources.Get "js/global.js" }}
{{ $js := slice $plugins $global | resources.Concat "js/bundle.js" }}
```
@y
```go-html-template
{{ $plugins := resources.Get "js/plugins.js" }}
{{ $global := resources.Get "js/global.js" }}
{{ $js := slice $plugins $global | resources.Concat "js/bundle.js" }}
```
@z
