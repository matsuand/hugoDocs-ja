%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: ReadingTime
description: Returns the estimated reading time, in minutes, for the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/WordCount
    - methods/page/FuzzyWordCount
  returnType: int
  signatures: [PAGE.ReadingTime]
---
@y
---
title: ReadingTime
description: Returns the estimated reading time, in minutes, for the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/WordCount
    - methods/page/FuzzyWordCount
  returnType: int
  signatures: [PAGE.ReadingTime]
---
@z

@x
The estimated reading time is calculated by dividing the number of words in the content by the reading speed.
@y
The estimated reading time is calculated by dividing the number of words in the content by the reading speed.
@z

@x
By default, Hugo assumes a reading speed of 212 words per minute. For CJK languages, it assumes 500 words per minute.
@y
By default, Hugo assumes a reading speed of 212 words per minute. For CJK languages, it assumes 500 words per minute.
@z

@x
```go-html-template
{{ printf "Estimated reading time: %d minutes" .ReadingTime }}
```
@y
```go-html-template
{{ printf "Estimated reading time: %d minutes" .ReadingTime }}
```
@z

@x
Reading speed varies by language. Create language-specific estimated reading times on your multilingual site using site parameters.
@y
Reading speed varies by language. Create language-specific estimated reading times on your multilingual site using site parameters.
@z

@x
{{< code-toggle file=hugo >}}
[languages]
  [languages.de]
    contentDir = 'content/de'
    languageCode = 'de-DE'
    languageName = 'Deutsch'
    weight = 2
    [languages.de.params]
    reading_speed = 179
  [languages.en]
    contentDir = 'content/en'
    languageCode = 'en-US'
    languageName = 'English'
    weight = 1
    [languages.en.params]
      reading_speed = 228
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[languages]
  [languages.de]
    contentDir = 'content/de'
    languageCode = 'de-DE'
    languageName = 'Deutsch'
    weight = 2
    [languages.de.params]
    reading_speed = 179
  [languages.en]
    contentDir = 'content/en'
    languageCode = 'en-US'
    languageName = 'English'
    weight = 1
    [languages.en.params]
      reading_speed = 228
{{< /code-toggle >}}
@z

@x
Then in your template:
@y
Then in your template:
@z

@x
```go-html-template
{{ $readingTime := div (float .WordCount) .Site.Params.reading_speed }}
{{ $readingTime = math.Ceil $readingTime }}
```
@y
```go-html-template
{{ $readingTime := div (float .WordCount) .Site.Params.reading_speed }}
{{ $readingTime = math.Ceil $readingTime }}
```
@z

@x
We cast the `.WordCount` to a float to obtain a float when we divide by the reading speed. Then round up to the nearest integer.
@y
We cast the `.WordCount` to a float to obtain a float when we divide by the reading speed. Then round up to the nearest integer.
@z
