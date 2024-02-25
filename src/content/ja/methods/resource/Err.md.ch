%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Err
description: Applicable to resources returned by the resources.GetRemote function, returns an error message if the HTTP request fails, else nil. 
categories: []
keywords: []
action:
  related:
    - functions/resources/GetRemote
    - methods/resource/Data
  returnType: resource.resourceError
  signatures: [RESOURCE.Err]
---
@y
---
title: Err
description: Applicable to resources returned by the resources.GetRemote function, returns an error message if the HTTP request fails, else nil. 
categories: []
keywords: []
action:
  related:
    - functions/resources/GetRemote
    - methods/resource/Data
  returnType: resource.resourceError
  signatures: [RESOURCE.Err]
---
@z

@x
The `Err` method on a resource returned by the [`resources.GetRemote`] function returns an error message if the HTTP request fails, else nil. If you do not handle the error yourself, Hugo will fail the build.
@y
The `Err` method on a resource returned by the [`resources.GetRemote`] function returns an error message if the HTTP request fails, else nil. If you do not handle the error yourself, Hugo will fail the build.
@z

@x
[`resources.GetRemote`]: /functions/resources/getremote/
@y
[`resources.GetRemote`]: /functions/resources/getremote/
@z

@x
In this example we send an HTTP request to a nonexistent domain:
@y
In this example we send an HTTP request to a nonexistent domain:
@z

@x
```go-html-template
{{ $url := "https://broken-example.org/images/a.jpg" }}
{{ with resources.GetRemote $url }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $url }}
{{ end }}
```
@y
```go-html-template
{{ $url := "https://broken-example.org/images/a.jpg" }}
{{ with resources.GetRemote $url }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $url }}
{{ end }}
```
@z

@x
The code above captures the error from the HTTP request, then fails the build:
@y
The code above captures the error from the HTTP request, then fails the build:
@z

@x
```text
ERROR error calling resources.GetRemote: Get "https://broken-example.org/images/a.jpg": dial tcp: lookup broken-example.org on 127.0.0.53:53: no such host
```
@y
```text
ERROR error calling resources.GetRemote: Get "https://broken-example.org/images/a.jpg": dial tcp: lookup broken-example.org on 127.0.0.53:53: no such host
```
@z

@x
To log an error as a warning instead of an error:
@y
To log an error as a warning instead of an error:
@z

@x
```go-html-template
{{ $url := "https://broken-example.org/images/a.jpg" }}
{{ with resources.GetRemote $url }}
  {{ with .Err }}
    {{ warnf "%s" . }}
  {{ else }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $url }}
{{ end }}
```
@y
```go-html-template
{{ $url := "https://broken-example.org/images/a.jpg" }}
{{ with resources.GetRemote $url }}
  {{ with .Err }}
    {{ warnf "%s" . }}
  {{ else }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $url }}
{{ end }}
```
@z

@x
{{% note %}}
An HTTP response with a 404 status code is not an HTTP request error. To handle 404 status codes, code defensively using the nested `with-else-end` construct as shown above.
{{% /note %}}
@y
{{% note %}}
An HTTP response with a 404 status code is not an HTTP request error. To handle 404 status codes, code defensively using the nested `with-else-end` construct as shown above.
{{% /note %}}
@z
