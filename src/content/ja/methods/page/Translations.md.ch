%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Translations
description: Returns all translation of the given page, excluding the current language.  
categories: []
keywords: []
action:
  related:
   - methods/page/AllTranslations
   - methods/page/IsTranslated
   - methods/page/TranslationKey
  returnType: page.Pages
  signatures: [PAGE.Translations]
---
@y
---
title: Translations
description: Returns all translation of the given page, excluding the current language.  
categories: []
keywords: []
action:
  related:
   - methods/page/AllTranslations
   - methods/page/IsTranslated
   - methods/page/TranslationKey
  returnType: page.Pages
  signatures: [PAGE.Translations]
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
@y
[languages.de]
contentDir = 'content/de'
languageCode = 'de-DE'
languageName = 'Deutsch'
weight = 2
@z

@x
[languages.fr]
contentDir = 'content/fr'
languageCode = 'fr-FR'
languageName = 'Français'
weight = 3
{{< /code-toggle >}}
@y
[languages.fr]
contentDir = 'content/fr'
languageCode = 'fr-FR'
languageName = 'Français'
weight = 3
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
│   │   ├── book-1.md
│   │   └── book-2.md
│   └── _index.md
├── en/
│   ├── books/
│   │   ├── book-1.md
│   │   └── book-2.md
│   └── _index.md
├── fr/
│   ├── books/
│   │   └── book-1.md
│   └── _index.md
└── _index.md
```
@y
```text
content/
├── de/
│   ├── books/
│   │   ├── book-1.md
│   │   └── book-2.md
│   └── _index.md
├── en/
│   ├── books/
│   │   ├── book-1.md
│   │   └── book-2.md
│   └── _index.md
├── fr/
│   ├── books/
│   │   └── book-1.md
│   └── _index.md
└── _index.md
```
@z

@x
And this template:
@y
And this template:
@z

@x
```go-html-template
{{ with .Translations }}
  <ul>
    {{ range . }}
      {{ $langName := or .Language.LanguageName .Language.Lang }}
      {{ $langCode := or .Language.LanguageCode .Language.Lang }}
      <li><a href="{{ .RelPermalink }}" hreflang="{{ $langCode }}">{{ .LinkTitle }} ({{ $langName }})</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ with .Translations }}
  <ul>
    {{ range . }}
      {{ $langName := or .Language.LanguageName .Language.Lang }}
      {{ $langCode := or .Language.LanguageCode .Language.Lang }}
      <li><a href="{{ .RelPermalink }}" hreflang="{{ $langCode }}">{{ .LinkTitle }} ({{ $langName }})</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@z

@x
Hugo will render this list on the "Book 1" page of the English site:
@y
Hugo will render this list on the "Book 1" page of the English site:
@z

@x
```html
<ul>
  <li><a href="/de/books/book-1/" hreflang="de-DE">Book 1 (Deutsch)</a></li>
  <li><a href="/fr/books/book-1/" hreflang="fr-FR">Book 1 (Français)</a></li>
</ul>
```
@y
```html
<ul>
  <li><a href="/de/books/book-1/" hreflang="de-DE">Book 1 (Deutsch)</a></li>
  <li><a href="/fr/books/book-1/" hreflang="fr-FR">Book 1 (Français)</a></li>
</ul>
```
@z

@x
Hugo will render this list on the "Book 2" page of the English site:
@y
Hugo will render this list on the "Book 2" page of the English site:
@z

@x
```html
<ul>
  <li><a href="/de/books/book-1/" hreflang="de-DE">Book 1 (Deutsch)</a></li>
</ul>
```
@y
```html
<ul>
  <li><a href="/de/books/book-1/" hreflang="de-DE">Book 1 (Deutsch)</a></li>
</ul>
```
@z
