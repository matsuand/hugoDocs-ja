%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: IsServer
description: Reports whether the built-in development server is running.
categories: []
keywords: []
action:
  related: []
  returnType: bool
  signatures: [SITE.IsServer]
expiryDate: 2024-10-30 # deprecated 2023-10-30
---
@y
---
title: IsServer
description: Reports whether the built-in development server is running.
categories: []
keywords: []
action:
  related: []
  returnType: bool
  signatures: [SITE.IsServer]
expiryDate: 2024-10-30 # deprecated 2023-10-30
---
@z

@x
{{% deprecated-in 0.120.0 %}}
Use [`hugo.IsServer`] instead.
@y
{{% deprecated-in 0.120.0 %}}
Use [`hugo.IsServer`] instead.
@z

@x
[`hugo.IsServer`]: /functions/hugo/isserver/
{{% /deprecated-in %}}
@y
[`hugo.IsServer`]: /functions/hugo/isserver/
{{% /deprecated-in %}}
@z

@x
```go-html-template
{{ .Site.IsServer }} → true/false
```
@y
```go-html-template
{{ .Site.IsServer }} → true/false
```
@z
