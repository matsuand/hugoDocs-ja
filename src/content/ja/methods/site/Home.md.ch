%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Home
description: Returns the home Page object for the given site.
categories: []
keywords: []
action:
  related: []
  returnType: page.Page
  signatures: [SITE.Home]
---
@y
---
title: Home
description: Returns the home Page object for the given site.
categories: []
keywords: []
action:
  related: []
  returnType: page.Page
  signatures: [SITE.Home]
---
@z

@x
This method is useful for obtaining a link to the home page.
@y
This method is useful for obtaining a link to the home page.
@z

@x
Site configuration:
@y
Site configuration:
@z

@x
{{< code-toggle file=hugo >}}
baseURL = 'https://example.org/docs/'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
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
{{ .Site.Home.Permalink }} → https://example.org/docs/ 
{{ .Site.Home.RelPermalink }} → /docs/
```
@y
```go-html-template
{{ .Site.Home.Permalink }} → https://example.org/docs/ 
{{ .Site.Home.RelPermalink }} → /docs/
```
@z
