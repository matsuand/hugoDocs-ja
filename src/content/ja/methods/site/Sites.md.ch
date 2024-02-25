%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Sites
description: Returns a collection of all Site objects, one for each language, ordered by default content language then by language weight.
categories: []
keywords: []
action:
  related: []
  returnType: page.Sites
  signatures: [SITE.Sites]
---
@y
---
title: Sites
description: Returns a collection of all Site objects, one for each language, ordered by default content language then by language weight.
categories: []
keywords: []
action:
  related: []
  returnType: page.Sites
  signatures: [SITE.Sites]
---
@z

@x
With this site configuration:
@y
With this site configuration:
@z

@x
{{< code-toggle file=hugo >}}
defaultContentLanguage = 'de'
defaultContentLanguageInSubdir = false
@y
{{< code-toggle file=hugo >}}
defaultContentLanguage = 'de'
defaultContentLanguageInSubdir = false
@z

@x
[languages.de]
languageCode = 'de-DE'
languageDirection = 'ltr'
languageName = 'Deutsch'
title = 'Projekt Dokumentation'
weight = 1
@y
[languages.de]
languageCode = 'de-DE'
languageDirection = 'ltr'
languageName = 'Deutsch'
title = 'Projekt Dokumentation'
weight = 1
@z

@x
[languages.en]
languageCode = 'en-US'
languageDirection = 'ltr'
languageName = 'English'
title = 'Project Documentation'
weight = 2
{{< /code-toggle >}}
@y
[languages.en]
languageCode = 'en-US'
languageDirection = 'ltr'
languageName = 'English'
title = 'Project Documentation'
weight = 2
{{< /code-toggle >}}
@z

@x
This template:
@y
This template:
@z

@x
```go-html-template
<ul>
  {{ range .Site.Sites }}
    <li><a href="{{ .Home.Permalink }}">{{ .Title }}</a></li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Site.Sites }}
    <li><a href="{{ .Home.Permalink }}">{{ .Title }}</a></li>
  {{ end }}
</ul>
```
@z

@x
Produces a list of links to each home page:
@y
Produces a list of links to each home page:
@z

@x
```html
<ul>
  <li><a href="https://example.org/de/">Projekt Dokumentation</a></li>
  <li><a href="https://example.org/en/">Project Documentation</a></li>
</ul>
```
@y
```html
<ul>
  <li><a href="https://example.org/de/">Projekt Dokumentation</a></li>
  <li><a href="https://example.org/en/">Project Documentation</a></li>
</ul>
```
@z

@x
To render a link to home page of the primary (first) language:
@y
To render a link to home page of the primary (first) language:
@z

@x
```go-html-template
{{ with .Site.Sites.First }}
  <a href="{{ .Home.Permalink }}">{{ .Title }}</a>
{{ end }}
```
@y
```go-html-template
{{ with .Site.Sites.First }}
  <a href="{{ .Home.Permalink }}">{{ .Title }}</a>
{{ end }}
```
@z

@x
This is equivalent to:
@y
This is equivalent to:
@z

@x
```go-html-template
{{ with index .Site.Sites 0 }}
  <a href="{{ .Home.Permalink }}">{{ .Title }}</a>
{{ end }}
```
@y
```go-html-template
{{ with index .Site.Sites 0 }}
  <a href="{{ .Home.Permalink }}">{{ .Title }}</a>
{{ end }}
```
@z
