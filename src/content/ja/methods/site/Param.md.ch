%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Param
description: Returns the site parameter with the given key.
categories: []
keywords: []
action:
  related: []
  returnType: any
  signatures: [SITE.Param KEY]
---
@y
---
title: Param
description: Returns the site parameter with the given key.
categories: []
keywords: []
action:
  related: []
  returnType: any
  signatures: [SITE.Param KEY]
---
@z

@x
The `Param` method on a `Site` object is a convenience method to return the value of a user-defined parameter in the site configuration.
@y
The `Param` method on a `Site` object is a convenience method to return the value of a user-defined parameter in the site configuration.
@z

@x
{{< code-toggle file=hugo >}}
[params]
display_toc = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[params]
display_toc = true
{{< /code-toggle >}}
@z

@x
```go-html-template
{{ .Site.Param "display_toc" }} → true
```
@y
```go-html-template
{{ .Site.Param "display_toc" }} → true
```
@z

@x
The above is equivalent to either of these:
@y
The above is equivalent to either of these:
@z

@x
```go-html-template
{{ .Site.Params.display_toc }}
{{ index .Site.Params "display_toc" }}
```
@y
```go-html-template
{{ .Site.Params.display_toc }}
{{ index .Site.Params "display_toc" }}
```
@z
