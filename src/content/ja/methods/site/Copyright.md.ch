%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Copyright
description:  Returns the copyright notice as defined in the site configuration.
categories: []
keywords: []
action:
  related: []
  returnType: string
  signatures: [SITE.Copyright]
---
@y
---
title: Copyright
description:  Returns the copyright notice as defined in the site configuration.
categories: []
keywords: []
action:
  related: []
  returnType: string
  signatures: [SITE.Copyright]
---
@z

@x
Site configuration:
@y
Site configuration:
@z

@x
{{< code-toggle file=hugo >}}
copyright = '© 2023 ABC Widgets, Inc.'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
copyright = '© 2023 ABC Widgets, Inc.'
{{< /code-toggle >}}
@z

@x
Template:
@y
Template:
@z

@x
```go-html-template
{{ .Site.Copyright }} → © 2023 ABC Widgets, Inc.
```
@y
```go-html-template
{{ .Site.Copyright }} → © 2023 ABC Widgets, Inc.
```
@z
