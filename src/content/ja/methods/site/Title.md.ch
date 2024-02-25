%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Title
description: Returns the title as defined in the site configuration.
categories: []
keywords: []
action:
  related: []
  returnType: string
  signatures: [SITE.Title]
---
@y
---
title: Title
description: Returns the title as defined in the site configuration.
categories: []
keywords: []
action:
  related: []
  returnType: string
  signatures: [SITE.Title]
---
@z

@x
Site configuration:
@y
Site configuration:
@z

@x
{{< code-toggle file=hugo >}}
title = 'My Documentation Site'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
title = 'My Documentation Site'
{{< /code-toggle >}}
@z

@x
Template:
@y
Template:
@z

@x
```go-html-template
{{ .Site.Title }} → My Documentation Site
```
@y
```go-html-template
{{ .Site.Title }} → My Documentation Site
```
@z
