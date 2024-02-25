%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: RelPermalink
description: Returns the relative permalink of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Permalink
  returnType: string
  signatures: [PAGE.RelPermalink]
---
@y
---
title: RelPermalink
description: Returns the relative permalink of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Permalink
  returnType: string
  signatures: [PAGE.RelPermalink]
---
@z

@x
Site configuration:
@y
Site configuration:
@z

@x
{{< code-toggle file=hugo >}}
title = 'Documentation'
baseURL = 'https://example.org/docs/'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
title = 'Documentation'
baseURL = 'https://example.org/docs/'
{{< /code-toggle >}}
@z

@x
Template:
@y
Template:
@z

@x
```go-html-template
{{ $page := .Site.GetPage "/about" }}
{{ $page.RelPermalink }} → /docs/about/
```
@y
```go-html-template
{{ $page := .Site.GetPage "/about" }}
{{ $page.RelPermalink }} → /docs/about/
```
@z
