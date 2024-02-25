%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: IsTranslated
description: Reports whether the given page has one or more translations.
categories: []
keywords: []
action:
  related:
   - methods/page/Translations
   - methods/page/AllTranslations
   - methods/page/TranslationKey
  returnType: bool
  signatures: [PAGE.IsTranslated]
---
@y
---
title: IsTranslated
description: Reports whether the given page has one or more translations.
categories: []
keywords: []
action:
  related:
   - methods/page/Translations
   - methods/page/AllTranslations
   - methods/page/TranslationKey
  returnType: bool
  signatures: [PAGE.IsTranslated]
---
@z

@x
With this site configuration:
@y
With this site configuration:
@z

@x
{{< code-toggle file=hugo >}}
defaultContentLanguage = 'en'
@y
{{< code-toggle file=hugo >}}
defaultContentLanguage = 'en'
@z

@x
[languages.en]
contentDir = 'content/en'
languageCode = 'en-US'
languageName = 'English'
weight = 1
@y
[languages.en]
contentDir = 'content/en'
languageCode = 'en-US'
languageName = 'English'
weight = 1
@z

@x
[languages.de]
contentDir = 'content/de'
languageCode = 'de-DE'
languageName = 'Deutsch'
weight = 2
{{< /code-toggle >}}
@y
[languages.de]
contentDir = 'content/de'
languageCode = 'de-DE'
languageName = 'Deutsch'
weight = 2
{{< /code-toggle >}}
@z

@x
And this content:
@y
And this content:
@z

@x
```text
content/
├── de/
│   ├── books/
│   │   └── book-1.md
│   └── _index.md
├── en/
│   ├── books/
│   │   ├── book-1.md
│   │   └── book-2.md
│   └── _index.md
└── _index.md
```
@y
```text
content/
├── de/
│   ├── books/
│   │   └── book-1.md
│   └── _index.md
├── en/
│   ├── books/
│   │   ├── book-1.md
│   │   └── book-2.md
│   └── _index.md
└── _index.md
```
@z

@x
When rendering content/en/books/book-1.md:
@y
When rendering content/en/books/book-1.md:
@z

@x
```go-html-template
{{ .IsTranslated }} → true
```
@y
```go-html-template
{{ .IsTranslated }} → true
```
@z

@x
When rendering content/en/books/book-2.md:
@y
When rendering content/en/books/book-2.md:
@z

@x
```go-html-template
{{ .IsTranslated }} → false
```
@y
```go-html-template
{{ .IsTranslated }} → false
```
@z
