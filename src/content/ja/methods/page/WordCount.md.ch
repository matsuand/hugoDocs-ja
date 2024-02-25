%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: WordCount
description: Returns the number of words in the content of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/FuzzyWordCount
    - methods/page/ReadingTime
  returnType: int
  signatures: [PAGE.WordCount]
---
@y
---
title: WordCount
description: Returns the number of words in the content of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/FuzzyWordCount
    - methods/page/ReadingTime
  returnType: int
  signatures: [PAGE.WordCount]
---
@z

@x
```go-html-template
{{ .WordCount }} → 103
```
@y
```go-html-template
{{ .WordCount }} → 103
```
@z

@x
To round up to nearest multiple of 100, use the [`FuzzyWordCount`] method.
@y
To round up to nearest multiple of 100, use the [`FuzzyWordCount`] method.
@z

@x
[`FuzzyWordCount`]: /methods/page/fuzzywordcount/
@y
[`FuzzyWordCount`]: /methods/page/fuzzywordcount/
@z
