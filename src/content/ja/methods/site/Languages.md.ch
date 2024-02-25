%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Languages
description: Returns a collection of language objects for all sites, ordered by language weight.
categories: []
keywords: []
action:
  related:
    - methods/site/Language
  returnType: langs.Languages
  signatures: [SITE.Languages]
---
@y
---
title: Languages
description: Returns a collection of language objects for all sites, ordered by language weight.
categories: []
keywords: []
action:
  related:
    - methods/site/Language
  returnType: langs.Languages
  signatures: [SITE.Languages]
---
@z

@x
The `Languages` method on a `Site` object returns a collection of language objects for all sites, ordered by language weight. Each language object points to its language definition in the site configuration.
@y
The `Languages` method on a `Site` object returns a collection of language objects for all sites, ordered by language weight. Each language object points to its language definition in the site configuration.
@z

@x
To view the data structure:
@y
To view the data structure:
@z

@x
```go-html-template
<pre>{{ jsonify (dict "indent" "  ") .Site.Languages }}</pre>
```
@y
```go-html-template
<pre>{{ jsonify (dict "indent" "  ") .Site.Languages }}</pre>
```
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
  {{ range .Site.Languages }}
    <li>{{ .Title }} ({{ .LanguageName }})</li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Site.Languages }}
    <li>{{ .Title }} ({{ .LanguageName }})</li>
  {{ end }}
</ul>
```
@z

@x
Is rendered to:
@y
Is rendered to:
@z

@x
```html
<ul>
  <li>Projekt Dokumentation (Deutsch)</li>
  <li>Project Documentation (English)</li>
</ul>
```
@y
```html
<ul>
  <li>Projekt Dokumentation (Deutsch)</li>
  <li>Project Documentation (English)</li>
</ul>
```
@z
