%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Language
description: Returns the language object for the given page.
categories: []
keywords: []
action:
  related:
    - methods/site/Language
  returnType: langs.Language
  signatures: [PAGE.Language]
---
@y
---
title: Language
description: Returns the language object for the given page.
categories: []
keywords: []
action:
  related:
    - methods/site/Language
  returnType: langs.Language
  signatures: [PAGE.Language]
---
@z

@x
The `Language` method on a `Page` object returns the language object for the given page. The language object points to the language definition in the site configuration.
@y
The `Language` method on a `Page` object returns the language object for the given page. The language object points to the language definition in the site configuration.
@z

@x
You can also use the `Language` method on a `Site` object. See&nbsp;[details].
@y
You can also use the `Language` method on a `Site` object. See&nbsp;[details].
@z

@x
## Methods
@y
## Methods
@z

@x
The examples below assume the following in your site configuration:
@y
The examples below assume the following in your site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[languages.de]
languageCode = 'de-DE'
languageDirection = 'ltr'
languageName = 'Deutsch'
weight = 2
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[languages.de]
languageCode = 'de-DE'
languageDirection = 'ltr'
languageName = 'Deutsch'
weight = 2
{{< /code-toggle >}}
@z

@x
Lang
: (`string`) The language tag as defined by [RFC 5646].
@y
Lang
: (`string`) The language tag as defined by [RFC 5646].
@z

@x
```go-html-template
{{ .Language.Lang }} → de
```
@y
```go-html-template
{{ .Language.Lang }} → de
```
@z

@x
LanguageCode
: (`string`) The language code from the site configuration. Falls back to `Lang` if not defined.
@y
LanguageCode
: (`string`) The language code from the site configuration. Falls back to `Lang` if not defined.
@z

@x
```go-html-template
{{ .Language.LanguageCode }} → de-DE
```
@y
```go-html-template
{{ .Language.LanguageCode }} → de-DE
```
@z

@x
LanguageDirection
: (`string`) The language direction from the site configuration, either `ltr` or `rtl`.
@y
LanguageDirection
: (`string`) The language direction from the site configuration, either `ltr` or `rtl`.
@z

@x
```go-html-template
{{ .Language.LanguageDirection }} → ltr
```
@y
```go-html-template
{{ .Language.LanguageDirection }} → ltr
```
@z

@x
LanguageName
: (`string`) The language name from the site configuration.
@y
LanguageName
: (`string`) The language name from the site configuration.
@z

@x
```go-html-template
{{ .Language.LanguageName }} → Deutsch
```
@y
```go-html-template
{{ .Language.LanguageName }} → Deutsch
```
@z

@x
Weight
: (`int`) The language weight from the site configuration which determines its order in the slice of languages returned by the `Languages` method on a `Site` object.
@y
Weight
: (`int`) The language weight from the site configuration which determines its order in the slice of languages returned by the `Languages` method on a `Site` object.
@z

@x
```go-html-template
{{ .Language.Weight }} → 2
```
@y
```go-html-template
{{ .Language.Weight }} → 2
```
@z

@x
[details]: /methods/site/language/
[RFC 5646]: https://datatracker.ietf.org/doc/html/rfc5646
@y
[details]: /methods/site/language/
[RFC 5646]: https://datatracker.ietf.org/doc/html/rfc5646
@z
