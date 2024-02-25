%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: IsDevelopment
description: Reports whether the current running environment is “development”.
categories: []
keywords: []
action:
  related: []
  returnType: bool
  signatures: [SITE.IsDevelopment]
expiryDate: 2024-10-30 # deprecated 2023-10-30
---
@y
---
title: IsDevelopment
description: Reports whether the current running environment is “development”.
categories: []
keywords: []
action:
  related: []
  returnType: bool
  signatures: [SITE.IsDevelopment]
expiryDate: 2024-10-30 # deprecated 2023-10-30
---
@z

@x
{{% deprecated-in 0.120.0 %}}
Use [`hugo.IsDevelopment`] instead.
@y
{{% deprecated-in 0.120.0 %}}
Use [`hugo.IsDevelopment`] instead.
@z

@x
[`hugo.IsDevelopment`]: /functions/hugo/isdevelopment/
{{% /deprecated-in %}}
@y
[`hugo.IsDevelopment`]: /functions/hugo/isdevelopment/
{{% /deprecated-in %}}
@z

@x
```go-html-template
{{ .Site.IsDevelopment }} → true/false
```
@y
```go-html-template
{{ .Site.IsDevelopment }} → true/false
```
@z
