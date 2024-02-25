%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: IsMultiLingual
description: Reports whether the site is multilingual.
categories: []
keywords: []
action:
  related: []
  returnType: bool
  signatures: [SITE.IsMultiLingual]
---
@y
---
title: IsMultiLingual
description: Reports whether the site is multilingual.
categories: []
keywords: []
action:
  related: []
  returnType: bool
  signatures: [SITE.IsMultiLingual]
---
@z

@x
Site configuration:
@y
Site configuration:
@z

@x
{{< code-toggle file=hugo >}}
defaultContentLanguage = 'de'
defaultContentLanguageInSubdir = true
[languages]
  [languages.de]
    languageCode = 'de-DE'
    languageName = 'Deutsch'
    title = 'Projekt Dokumentation'
    weight = 1
  [languages.en]
    languageCode = 'en-US'
    languageName = 'English'
    title = 'Project Documentation'
    weight = 2
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
defaultContentLanguage = 'de'
defaultContentLanguageInSubdir = true
[languages]
  [languages.de]
    languageCode = 'de-DE'
    languageName = 'Deutsch'
    title = 'Projekt Dokumentation'
    weight = 1
  [languages.en]
    languageCode = 'en-US'
    languageName = 'English'
    title = 'Project Documentation'
    weight = 2
{{< /code-toggle >}}
@z

@x
Template:
@y
Template:
@z

@x
```go-html-template
{{ .Site.IsMultiLingual }} → true
```
@y
```go-html-template
{{ .Site.IsMultiLingual }} → true
```
@z
