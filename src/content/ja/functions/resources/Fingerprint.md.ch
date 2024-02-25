%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: resources.Fingerprint
description: Cryptographically hashes the content of the given resource.
categories: []
keywords: []
action:
  aliases: [fingerprint]
  related:
    - functions/js/Build
    - functions/resources/Babel
    - functions/resources/Minify
    - functions/resources/PostCSS
    - functions/resources/PostProcess
    - functions/resources/ToCSS
  returnType: resource.Resource
  signatures: ['resources.Fingerprint [ALGORITHM] RESOURCE']
---
@y
---
title: resources.Fingerprint
description: Cryptographically hashes the content of the given resource.
categories: []
keywords: []
action:
  aliases: [fingerprint]
  related:
    - functions/js/Build
    - functions/resources/Babel
    - functions/resources/Minify
    - functions/resources/PostCSS
    - functions/resources/PostProcess
    - functions/resources/ToCSS
  returnType: resource.Resource
  signatures: ['resources.Fingerprint [ALGORITHM] RESOURCE']
---
@z

@x
```go-html-template
{{ with resources.Get "js/main.js" }}
  {{ with . | fingerprint "sha256" }}
    <script src="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous"></script>
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "js/main.js" }}
  {{ with . | fingerprint "sha256" }}
    <script src="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous"></script>
  {{ end }}
{{ end }}
```
@z

@x
Hugo renders this to something like:
@y
Hugo renders this to something like:
@z

@x
```html
<script src="/js/main.62e...df1.js" integrity="sha256-Yuh...rfE=" crossorigin="anonymous"></script>
```
@y
```html
<script src="/js/main.62e...df1.js" integrity="sha256-Yuh...rfE=" crossorigin="anonymous"></script>
```
@z

@x
Although most commonly used with CSS and JavaScript resources, you can use the `resources.Fingerprint` function with any resource type.
@y
Although most commonly used with CSS and JavaScript resources, you can use the `resources.Fingerprint` function with any resource type.
@z

@x
The hash algorithm may be one of `md5`, `sha256` (default), `sha384`, or `sha512`.
@y
The hash algorithm may be one of `md5`, `sha256` (default), `sha384`, or `sha512`.
@z

@x
After cryptographically hashing the resource content:
@y
After cryptographically hashing the resource content:
@z

@x
1. The values returned by the `.Permalink` and `.RelPermalink` methods include the hash sum
2. The resource's `.Data.Integrity` method returns a [Subresource Integrity] (SRI) value consisting of the name of the hash algorithm, one hyphen, and the base64-encoded hash sum
@y
1. The values returned by the `.Permalink` and `.RelPermalink` methods include the hash sum
2. The resource's `.Data.Integrity` method returns a [Subresource Integrity] (SRI) value consisting of the name of the hash algorithm, one hyphen, and the base64-encoded hash sum
@z

@x
[Subresource Integrity]: https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity
@y
[Subresource Integrity]: https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity
@z
