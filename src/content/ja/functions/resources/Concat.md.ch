%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: resources.Concat
description: Returns a concatenated slice of resources.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: resource.Resource
  signatures: ['resources.Concat TARGETPATH [RESOURCE...]']
---
@y
---
title: resources.Concat
description: Returns a concatenated slice of resources.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: resource.Resource
  signatures: ['resources.Concat TARGETPATH [RESOURCE...]']
---
@z

@x
The `resources.Concat` function returns a concatenated slice of resources, caching the result using the target path as its cache key. Each resource must have the same [media type].
@y
The `resources.Concat` function returns a concatenated slice of resources, caching the result using the target path as its cache key. Each resource must have the same [media type].
@z

@x
Hugo publishes the resource to the target path when you call its [`Publish`], [`Permalink`], or [`RelPermalink`] methods. 
@y
Hugo publishes the resource to the target path when you call its [`Publish`], [`Permalink`], or [`RelPermalink`] methods. 
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
