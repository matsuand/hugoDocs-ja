%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Data
description: Applicable to resources returned by the resources.GetRemote function, returns information from the HTTP response.
categories: []
keywords: []
action:
  related:
    - functions/resources/GetRemote
    - methods/resource/Err
  returnType: map
  signatures: [RESOURCE.Data]
---
@y
---
title: Data
description: Applicable to resources returned by the resources.GetRemote function, returns information from the HTTP response.
categories: []
keywords: []
action:
  related:
    - functions/resources/GetRemote
    - methods/resource/Err
  returnType: map
  signatures: [RESOURCE.Data]
---
@z

@x
The `Data` method on a resource returned by the [`resources.GetRemote`] function returns information from the HTTP response.
@y
The `Data` method on a resource returned by the [`resources.GetRemote`] function returns information from the HTTP response.
@z

@x
[`resources.GetRemote`]: /functions/resources/getremote/
@y
[`resources.GetRemote`]: /functions/resources/getremote/
@z

@x
```go-html-template
{{ $url := "https://example.org/images/a.jpg" }}
{{ with resources.GetRemote $url }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    {{ with .Data }}
      {{ .ContentLength }} → 42764
      {{ .ContentType }} → image/jpeg
      {{ .Status }} → 200 OK
      {{ .StatusCode }} → 200
      {{ .TransferEncoding }} → []
    {{ end }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $url }}
{{ end }}
```
@y
```go-html-template
{{ $url := "https://example.org/images/a.jpg" }}
{{ with resources.GetRemote $url }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    {{ with .Data }}
      {{ .ContentLength }} → 42764
      {{ .ContentType }} → image/jpeg
      {{ .Status }} → 200 OK
      {{ .StatusCode }} → 200
      {{ .TransferEncoding }} → []
    {{ end }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $url }}
{{ end }}
```
@z

@x
ContentLength
: (`int`) The content length in bytes.
@y
ContentLength
: (`int`) The content length in bytes.
@z

@x
ContentType
: (`string`) The content type.
@y
ContentType
: (`string`) The content type.
@z

@x
Status
: (`string`) The HTTP status text.
@y
Status
: (`string`) The HTTP status text.
@z

@x
StatusCode
: (`int`) The HTTP status code.
@y
StatusCode
: (`int`) The HTTP status code.
@z

@x
TransferEncoding
: (`string`) The transfer encoding.
@y
TransferEncoding
: (`string`) The transfer encoding.
@z

@x
[`resources.GetRemote`]: /functions/resources/getremote/
@y
[`resources.GetRemote`]: /functions/resources/getremote/
@z
