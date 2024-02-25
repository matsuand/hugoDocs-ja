%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: site
description: Provides global access to the current Site object.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/global/page
  returnType: 
  signatures: [site]
aliases: [/functions/site]
---
@y
---
title: site
description: Provides global access to the current Site object.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/global/page
  returnType: 
  signatures: [site]
aliases: [/functions/site]
---
@z

@x
At the top level of a template that receives the `Site` object in context, these are equivalent:
@y
At the top level of a template that receives the `Site` object in context, these are equivalent:
@z

@x
```go-html-template
{{ .Site.Params.foo }}
{{ site.Params.foo }}
```
@y
```go-html-template
{{ .Site.Params.foo }}
{{ site.Params.foo }}
```
@z

@x
When the `Site` object is not in context, use the global `site` function:
@y
When the `Site` object is not in context, use the global `site` function:
@z

@x
```go-html-template
{{ site.Params.foo }}
```
@y
```go-html-template
{{ site.Params.foo }}
```
@z

@x
{{% note %}}
To simplify your templates, use the global `site` function regardless of whether the `Site` object is in context.
{{% /note %}}
@y
{{% note %}}
To simplify your templates, use the global `site` function regardless of whether the `Site` object is in context.
{{% /note %}}
@z
