%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: LanguagePrefix
description: Returns the URL language prefix, if any, for the given site.
categories: []
keywords: []
action:
  related:
    - functions/urls/AbsLangURL
    - functions/urls/RelLangURL
  returnType: string
  signatures: [SITE.LanguagePrefix]
---
@y
---
title: LanguagePrefix
description: Returns the URL language prefix, if any, for the given site.
categories: []
keywords: []
action:
  related:
    - functions/urls/AbsLangURL
    - functions/urls/RelLangURL
  returnType: string
  signatures: [SITE.LanguagePrefix]
---
@z

@x
Consider this site configuration:
@y
Consider this site configuration:
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
When visiting the German language site:
@y
When visiting the German language site:
@z

@x
```go-html-template
{{ .Site.LanguagePrefix }} → ""
```
@y
```go-html-template
{{ .Site.LanguagePrefix }} → ""
```
@z

@x
When visiting the English language site:
@y
When visiting the English language site:
@z

@x
```go-html-template
{{ .Site.LanguagePrefix }} → /en
```
@y
```go-html-template
{{ .Site.LanguagePrefix }} → /en
```
@z

@x
If you change `defaultContentLanguageInSubdir` to `true`, when visiting the German language site:
@y
If you change `defaultContentLanguageInSubdir` to `true`, when visiting the German language site:
@z

@x
```go-html-template
{{ .Site.LanguagePrefix }} → /de
```
@y
```go-html-template
{{ .Site.LanguagePrefix }} → /de
```
@z

@x
You may use the `LanguagePrefix` method with both monolingual and multilingual sites.
@y
You may use the `LanguagePrefix` method with both monolingual and multilingual sites.
@z
