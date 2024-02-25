%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Language
description: Returns the language object for the given site. 
categories: []
keywords: []
action:
  related:
    - methods/page/language
  returnType: langs.Language
  signatures: [SITE.Language]
toc: true
---
@y
---
title: Language
description: Returns the language object for the given site. 
categories: []
keywords: []
action:
  related:
    - methods/page/language
  returnType: langs.Language
  signatures: [SITE.Language]
toc: true
---
@z

@x
The `Language` method on a `Site` object returns the language object for the given site. The language object points to the language definition in the site configuration.
@y
The `Language` method on a `Site` object returns the language object for the given site. The language object points to the language definition in the site configuration.
@z

@x
You can also use the `Language` method on a `Page` object. See&nbsp;[details].
@y
You can also use the `Language` method on a `Page` object. See&nbsp;[details].
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
weight = 1
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[languages.de]
languageCode = 'de-DE'
languageDirection = 'ltr'
languageName = 'Deutsch'
weight = 1
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
{{ .Site.Language.Lang }} → de
```
@y
```go-html-template
{{ .Site.Language.Lang }} → de
```
@z

@x
LanguageCode
: (`string`) The language code from the site configuration.
@y
LanguageCode
: (`string`) The language code from the site configuration.
@z

@x
```go-html-template
{{ .Site.Language.LanguageCode }} → de-DE
```
@y
```go-html-template
{{ .Site.Language.LanguageCode }} → de-DE
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
{{ .Site.Language.LanguageDirection }} → ltr
```
@y
```go-html-template
{{ .Site.Language.LanguageDirection }} → ltr
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
{{ .Site.Language.LanguageName }} → Deutsch
```
@y
```go-html-template
{{ .Site.Language.LanguageName }} → Deutsch
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
{{ .Site.Language.Weight }} → 1
```
@y
```go-html-template
{{ .Site.Language.Weight }} → 1
```
@z

@x
## Example
@y
## Example
@z

@x
Some of the methods above are commonly used in a base template as attributes for the `html` element.
@y
Some of the methods above are commonly used in a base template as attributes for the `html` element.
@z

@x
```go-html-template
<html
  lang="{{ or site.Language.LanguageCode site.Language.Lang }}" 
  dir="{{ or site.Language.LanguageDirection `ltr` }}
>
```
@y
```go-html-template
<html
  lang="{{ or site.Language.LanguageCode site.Language.Lang }}" 
  dir="{{ or site.Language.LanguageDirection `ltr` }}
>
```
@z

@x
The example above uses the global [`site`] function instead of accessing the `Site` object via the `.Site` notation.
@y
The example above uses the global [`site`] function instead of accessing the `Site` object via the `.Site` notation.
@z

@x
Also note that each attribute has a fallback value assigned via the [`or`] operator.
@y
Also note that each attribute has a fallback value assigned via the [`or`] operator.
@z

@x
[details]: /methods/page/language/
[RFC 5646]: https://datatracker.ietf.org/doc/html/rfc5646
[`or`]: /functions/go-template/or/
[`site`]: /functions/global/site/
@y
[details]: /methods/page/language/
[RFC 5646]: https://datatracker.ietf.org/doc/html/rfc5646
[`or`]: /functions/go-template/or/
[`site`]: /functions/global/site/
@z
