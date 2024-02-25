%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Content
description: Returns the content of the given resource.
categories: []
keywords: []
action:
  related: []
  returnType: any
  signatures: [RESOURCE.Content]
toc:
---
@y
---
title: Content
description: Returns the content of the given resource.
categories: []
keywords: []
action:
  related: []
  returnType: any
  signatures: [RESOURCE.Content]
toc:
---
@z

@x
The `Content` method on a `Resource` object returns `template.HTML` when the resource type is `page`, otherwise it returns a `string`.
@y
The `Content` method on a `Resource` object returns `template.HTML` when the resource type is `page`, otherwise it returns a `string`.
@z

@x
[resource type]: /methods/resource/resourcetype/
@y
[resource type]: /methods/resource/resourcetype/
@z

@x
{{< code file=assets/quotations/kipling.txt >}}
He travels the fastest who travels alone.
{{< /code >}}
@y
{{< code file=assets/quotations/kipling.txt >}}
He travels the fastest who travels alone.
{{< /code >}}
@z

@x
To get the content:
@y
To get the content:
@z

@x
```go-html-template
{{ with resources.Get "quotations/kipling.txt" }}
  {{ .Content }} → He travels the fastest who travels alone.
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "quotations/kipling.txt" }}
  {{ .Content }} → He travels the fastest who travels alone.
{{ end }}
```
@z

@x
To get the size in bytes:
@y
To get the size in bytes:
@z

@x
```go-html-template
{{ with resources.Get "quotations/kipling.txt" }}
  {{ .Content | len }} → 42
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "quotations/kipling.txt" }}
  {{ .Content | len }} → 42
{{ end }}
```
@z

@x
To create an inline image:
@y
To create an inline image:
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  <img src="data:{{ .MediaType.Type }};base64,{{ .Content | base64Encode }}">
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  <img src="data:{{ .MediaType.Type }};base64,{{ .Content | base64Encode }}">
{{ end }}
```
@z

@x
To create inline CSS:
@y
To create inline CSS:
@z

@x
```go-html-template
{{ with resources.Get "css/style.css" }}
  <style>{{ .Content | safeCSS }}</style>
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "css/style.css" }}
  <style>{{ .Content | safeCSS }}</style>
{{ end }}
```
@z

@x
To create inline JavaScript:
@y
To create inline JavaScript:
@z

@x
```go-html-template
{{ with resources.Get "js/script.js" }}
  <script>{{ .Content | safeJS }}</script>
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "js/script.js" }}
  <script>{{ .Content | safeJS }}</script>
{{ end }}
```
@z

@x
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@y
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@z
