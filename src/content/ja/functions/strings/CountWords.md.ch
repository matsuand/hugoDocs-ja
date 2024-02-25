%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.CountWords
description: Returns the number of words in the given string.
categories: []
keywords: []
action:
  aliases: [countwords]
  related:
    - functions/go-template/len
    - functions/strings/Count
    - functions/strings/CountRunes
    - functions/strings/RuneCount
  returnType: int
  signatures: [strings.CountWords INPUT]
aliases: [/functions/countwords]
---
@y
---
title: strings.CountWords
description: Returns the number of words in the given string.
categories: []
keywords: []
action:
  aliases: [countwords]
  related:
    - functions/go-template/len
    - functions/strings/Count
    - functions/strings/CountRunes
    - functions/strings/RuneCount
  returnType: int
  signatures: [strings.CountWords INPUT]
aliases: [/functions/countwords]
---
@z

@x
```go-html-template
{{ "Hugo is a static site generator." | countwords }} → 6
```
@y
```go-html-template
{{ "Hugo is a static site generator." | countwords }} → 6
```
@z
