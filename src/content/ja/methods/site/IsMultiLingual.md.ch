%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: IsMultiLingual
description: Reports whether there are two or more configured languages.
categories: []
keywords: []
action:
  related: []
  returnType: bool
  signatures: [SITE.IsMultiLingual]
expiryDate: 2025-03-16 # deprecated 2024-03-16
---
@y
---
title: IsMultiLingual
description: Reports whether there are two or more configured languages.
categories: []
keywords: []
action:
  related: []
  returnType: bool
  signatures: [SITE.IsMultiLingual]
expiryDate: 2025-03-16 # deprecated 2024-03-16
---
@z

@x
{{% deprecated-in 0.124.0 %}}
Use [`hugo.IsMultilingual`] instead.
@y
{{% deprecated-in 0.124.0 %}}
Use [`hugo.IsMultilingual`] instead.
@z

@x
[`hugo.IsMultilingual`]: /functions/hugo/ismultilingual/
{{% /deprecated-in %}}
@y
[`hugo.IsMultilingual`]: /functions/hugo/ismultilingual/
{{% /deprecated-in %}}
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
