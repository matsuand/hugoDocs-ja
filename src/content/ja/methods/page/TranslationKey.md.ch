%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: TranslationKey
description: Returns the translation key of the given page.
categories: []
keywords: []
action:
  related:
   - methods/page/Translations
   - methods/page/AllTranslations
   - methods/page/IsTranslated
  returnType: string
  signatures: [PAGE.TranslationKey]
---
@y
---
title: TranslationKey
description: Returns the translation key of the given page.
categories: []
keywords: []
action:
  related:
   - methods/page/Translations
   - methods/page/AllTranslations
   - methods/page/IsTranslated
  returnType: string
  signatures: [PAGE.TranslationKey]
---
@z

@x
The translation key creates a relationship between all translations of a given page. The translation key is derived from the file path, or from the `translationKey` parameter if defined in front matter.
@y
The translation key creates a relationship between all translations of a given page. The translation key is derived from the file path, or from the `translationKey` parameter if defined in front matter.
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
│   │   ├── buch-1.md
│   │   └── book-2.md
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
│   │   ├── buch-1.md
│   │   └── book-2.md
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
And this front matter:
@y
And this front matter:
@z

@x
{{< code-toggle file=content/en/books/book-1.md fm=true >}}
title = 'Book 1'
translationKey = 'foo'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/en/books/book-1.md fm=true >}}
title = 'Book 1'
translationKey = 'foo'
{{< /code-toggle >}}
@z

@x
{{< code-toggle file=content/de/books/buch-1.md fm=true >}}
title = 'Buch 1'
translationKey = 'foo'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/de/books/buch-1.md fm=true >}}
title = 'Buch 1'
translationKey = 'foo'
{{< /code-toggle >}}
@z

@x
When rendering either either of the pages above:
@y
When rendering either either of the pages above:
@z

@x
```go-html-template
{{ .TranslationKey }} → page/foo
```
@y
```go-html-template
{{ .TranslationKey }} → page/foo
```
@z

@x
If the front matter of Book 2, in both languages, does not include a translation key:
@y
If the front matter of Book 2, in both languages, does not include a translation key:
@z

@x
```go-html-template
{{ .TranslationKey }} → page/books/book-2
```
@y
```go-html-template
{{ .TranslationKey }} → page/books/book-2
```
@z
