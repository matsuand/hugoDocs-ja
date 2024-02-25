%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: MainSections
description: Returns a slice of the main section names as defined in the site configuration, falling back to the top level section with the most pages.
categories: []
keywords: []
action:
  related: []
  returnType: '[]string'
  signatures: [SITE.MainSections]
---
@y
---
title: MainSections
description: Returns a slice of the main section names as defined in the site configuration, falling back to the top level section with the most pages.
categories: []
keywords: []
action:
  related: []
  returnType: '[]string'
  signatures: [SITE.MainSections]
---
@z

@x
Site configuration:
@y
Site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[params]
mainSections = ['books','films']
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[params]
mainSections = ['books','films']
{{< /code-toggle >}}
@z

@x
Template:
@y
Template:
@z

@x
```go-html-template
{{ .Site.MainSections }} → [books films]
```
@y
```go-html-template
{{ .Site.MainSections }} → [books films]
```
@z

@x
If `params.mainSections` is not defined in the site configuration, this method returns a slice with one element---the top level section with the most pages.
@y
If `params.mainSections` is not defined in the site configuration, this method returns a slice with one element---the top level section with the most pages.
@z

@x
With this content structure, the "films" section has the most pages:
@y
With this content structure, the "films" section has the most pages:
@z

@x
```text
content/
├── books/
│   ├── book-1.md
│   └── book-2.md
├── films/
│   ├── film-1.md
│   ├── film-2.md
│   └── film-3.md
└── _index.md
```
@y
```text
content/
├── books/
│   ├── book-1.md
│   └── book-2.md
├── films/
│   ├── film-1.md
│   ├── film-2.md
│   └── film-3.md
└── _index.md
```
@z

@x
Template:
@y
Template:
@z

@x
```go-html-template
{{ .Site.MainSections }} → [films]
```
@y
```go-html-template
{{ .Site.MainSections }} → [films]
```
@z

@x
When creating a theme, instead of hardcoding section names when listing the most relevant pages on the front page, instruct site authors to set `params.mainSections` in their site configuration.
@y
When creating a theme, instead of hardcoding section names when listing the most relevant pages on the front page, instruct site authors to set `params.mainSections` in their site configuration.
@z

@x
Then your home page template can do something like this:
@y
Then your home page template can do something like this:
@z

@x
```go-html-template
{{ range where .Site.RegularPages "Section" "in" .Site.MainSections }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range where .Site.RegularPages "Section" "in" .Site.MainSections }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z
