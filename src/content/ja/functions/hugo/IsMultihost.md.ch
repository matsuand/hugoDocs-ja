%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: hugo.IsMultihost
description: Reports whether each configured language has a unique base URL.
categories: []
keywords: []
action:
  aliases: []
  related:
    - /functions/hugo/IsMultilingual
  returnType: bool
  signatures: [hugo.IsMultihost]
---
@y
---
title: hugo.IsMultihost
description: Reports whether each configured language has a unique base URL.
categories: []
keywords: []
action:
  aliases: []
  related:
    - /functions/hugo/IsMultilingual
  returnType: bool
  signatures: [hugo.IsMultihost]
---
@z

@x
{{< new-in v0.124.0 >}}
@y
{{< new-in v0.124.0 >}}
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
    baseURL = 'https://de.example.org/'
    languageCode = 'de-DE'
    languageName = 'Deutsch'
    title = 'Projekt Dokumentation'
    weight = 1
  [languages.en]
    baseURL = 'https://en.example.org/'
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
    baseURL = 'https://de.example.org/'
    languageCode = 'de-DE'
    languageName = 'Deutsch'
    title = 'Projekt Dokumentation'
    weight = 1
  [languages.en]
    baseURL = 'https://en.example.org/'
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
{{ hugo.IsMultihost }} → true
```
@y
```go-html-template
{{ hugo.IsMultihost }} → true
```
@z
