%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: FromString
linkTitle: Resource from string
description: Creates a resource from a string.
categories: [asset management]
keywords: []
menu:
  docs:
    parent: hugo-pipes
    weight: 110
weight: 110
action:
  aliases: []
  returnType: resource.Resource
  signatures: [resources.FromString TARGETPATH STRING]
---
@y
---
title: FromString
linkTitle: Resource from string
description: Creates a resource from a string.
categories: [asset management]
keywords: []
menu:
  docs:
    parent: hugo-pipes
    weight: 110
weight: 110
action:
  aliases: []
  returnType: resource.Resource
  signatures: [resources.FromString TARGETPATH STRING]
---
@z

@x
## Usage
@y
## Usage
@z

@x
It is possible to create a resource directly from the template using `resources.FromString` which takes two arguments, the target path for the created resource and the given content string.
@y
It is possible to create a resource directly from the template using `resources.FromString` which takes two arguments, the target path for the created resource and the given content string.
@z

@x
The result is cached using the target path as the cache key.
@y
The result is cached using the target path as the cache key.
@z

@x
The following example creates a resource file containing localized variables for every project's languages.
@y
The following example creates a resource file containing localized variables for every project's languages.
@z

@x
```go-html-template
{{ $string := (printf "var rootURL = '%s'; var apiURL = '%s';" (absURL "/") (.Param "API_URL")) }}
{{ $targetPath := "js/vars.js" }}
{{ $vars := $string | resources.FromString $targetPath }}
{{ $global := resources.Get "js/global.js" | resources.Minify }}
@y
```go-html-template
{{ $string := (printf "var rootURL = '%s'; var apiURL = '%s';" (absURL "/") (.Param "API_URL")) }}
{{ $targetPath := "js/vars.js" }}
{{ $vars := $string | resources.FromString $targetPath }}
{{ $global := resources.Get "js/global.js" | resources.Minify }}
@z

@x
<script src="{{ $vars.Permalink }}"></script>
<script src="{{ $global.Permalink }}"></script>
```
@y
<script src="{{ $vars.Permalink }}"></script>
<script src="{{ $global.Permalink }}"></script>
```
@z
