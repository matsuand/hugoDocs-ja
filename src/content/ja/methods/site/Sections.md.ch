%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Sections
description: Returns a collection of first level section pages.
categories: []
keywords: []
action:
  related:
    - methods/site/AllPages
    - methods/site/Pages
    - methods/site/RegularPages
  returnType: page.Pages
  signatures: [SITE.Sections]
---
@y
---
title: Sections
description: Returns a collection of first level section pages.
categories: []
keywords: []
action:
  related:
    - methods/site/AllPages
    - methods/site/Pages
    - methods/site/RegularPages
  returnType: page.Pages
  signatures: [SITE.Sections]
---
@z

@x
Given this content structure:
@y
Given this content structure:
@z

@x
```text
content/
├── books/
│   ├── book-1.md
│   └── book-2.md
├── films/
│   ├── film-1.md
│   └── film-2.md
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
│   └── film-2.md
└── _index.md
```
@z

@x
This template:
@y
This template:
@z

@x
```go-html-template
{{ range .Site.Sections }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Site.Sections }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z

@x
Is rendered to:
@y
Is rendered to:
@z

@x
```html
<h2><a href="/books/">Books</a></h2>
<h2><a href="/films/">Films</a></h2>
```
@y
```html
<h2><a href="/books/">Books</a></h2>
<h2><a href="/films/">Films</a></h2>
```
@z
