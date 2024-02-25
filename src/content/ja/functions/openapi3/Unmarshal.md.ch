%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: openapi3.Unmarshal
description: Unmarshals the given resource into an OpenAPI 3 document.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: openapi3.OpenAPIDocument
  signatures: ['openapi3.Unmarshal RESOURCE']
---
@y
---
title: openapi3.Unmarshal
description: Unmarshals the given resource into an OpenAPI 3 document.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: openapi3.OpenAPIDocument
  signatures: ['openapi3.Unmarshal RESOURCE']
---
@z

@x
Use the `openapi3.Unmarshal` function with [global], [page], or [remote] resources.
@y
Use the `openapi3.Unmarshal` function with [global], [page], or [remote] resources.
@z

@x
[global]: /getting-started/glossary/#global-resource
[page]: /getting-started/glossary/#page-resource
[remote]: /getting-started/glossary/#remote-resource
[OpenAPI]: https://www.openapis.org/
@y
[global]: /getting-started/glossary/#global-resource
[page]: /getting-started/glossary/#page-resource
[remote]: /getting-started/glossary/#remote-resource
[OpenAPI]: https://www.openapis.org/
@z

@x
For example, to work with a remote [OpenAPI] definition:
@y
For example, to work with a remote [OpenAPI] definition:
@z

@x
```go-html-template
{{ $url := "https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/examples/v3.0/petstore.json" }}
{{ $api := "" }}
{{ with resources.GetRemote $url }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    {{ $api = . | openapi3.Unmarshal }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $url }}
{{ end }}
```
@y
```go-html-template
{{ $url := "https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/examples/v3.0/petstore.json" }}
{{ $api := "" }}
{{ with resources.GetRemote $url }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    {{ $api = . | openapi3.Unmarshal }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $url }}
{{ end }}
```
@z

@x
To inspect the data structure:
@y
To inspect the data structure:
@z

@x
```go-html-template
<pre>{{ debug.Dump $api }}</pre>
```
@y
```go-html-template
<pre>{{ debug.Dump $api }}</pre>
```
@z

@x
To list the GET and POST operations for each of the API paths:
@y
To list the GET and POST operations for each of the API paths:
@z

@x
```go-html-template
{{ range $path, $details := $api.Paths }}
  <p>{{ $path }}</p>
  <dl>
    {{ with $details.Get }}
      <dt>GET</dt>
      <dd>{{ .Summary }}</dd>
    {{ end }}
    {{ with $details.Post }}
      <dt>POST</dt>
      <dd>{{ .Summary }}</dd>
    {{ end }}
  </dl>
{{ end }}
```
@y
```go-html-template
{{ range $path, $details := $api.Paths }}
  <p>{{ $path }}</p>
  <dl>
    {{ with $details.Get }}
      <dt>GET</dt>
      <dd>{{ .Summary }}</dd>
    {{ end }}
    {{ with $details.Post }}
      <dt>POST</dt>
      <dd>{{ .Summary }}</dd>
    {{ end }}
  </dl>
{{ end }}
```
@z

@x
Hugo renders this to:
@y
Hugo renders this to:
@z

@x
```html
<p>/pets</p>
<dl>
  <dt>GET</dt>
  <dd>List all pets</dd>
  <dt>POST</dt>
  <dd>Create a pet</dd>
</dl>
<p>/pets/{petId}</p>
<dl>
  <dt>GET</dt>
  <dd>Info for a specific pet</dd>
</dl>
```
@y
```html
<p>/pets</p>
<dl>
  <dt>GET</dt>
  <dd>List all pets</dd>
  <dt>POST</dt>
  <dd>Create a pet</dd>
</dl>
<p>/pets/{petId}</p>
<dl>
  <dt>GET</dt>
  <dd>Info for a specific pet</dd>
</dl>
```
@z
