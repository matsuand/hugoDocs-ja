%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: FuzzyWordCount
description: Returns the number of words in the content of the given page, rounded up to the nearest multiple of 100. 
categories: []
keywords: []
action:
  related:
    - methods/page/WordCount
    - methods/page/ReadingTime
  returnType: int
  signatures: [PAGE.FuzzyWordCount]
---
@y
---
title: FuzzyWordCount
description: Returns the number of words in the content of the given page, rounded up to the nearest multiple of 100. 
categories: []
keywords: []
action:
  related:
    - methods/page/WordCount
    - methods/page/ReadingTime
  returnType: int
  signatures: [PAGE.FuzzyWordCount]
---
@z

@x
```go-html-template
{{ .FuzzyWordCount }} → 200
```
@y
```go-html-template
{{ .FuzzyWordCount }} → 200
```
@z

@x
To get the exact word count, use the [`WordCount`] method.
@y
To get the exact word count, use the [`WordCount`] method.
@z

@x
[`WordCount`]: /methods/page/wordcount/
@y
[`WordCount`]: /methods/page/wordcount/
@z
