%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: hugo.IsMultilingual
description: Reports whether there are two or more configured languages.
categories: []
keywords: []
action:
  related:
    - /functions/hugo/IsMultihost
  returnType: bool
  signatures: [hugo.IsMultilingual]
---
@y
---
title: hugo.IsMultilingual
description: Reports whether there are two or more configured languages.
categories: []
keywords: []
action:
  related:
    - /functions/hugo/IsMultihost
  returnType: bool
  signatures: [hugo.IsMultilingual]
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
{{ hugo.IsMultilingual }} → true
```
@y
```go-html-template
{{ hugo.IsMultilingual }} → true
```
@z
