%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.Count
description: Returns the number of non-overlapping instances of the given substring within the given string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/len
    - functions/strings/CountRunes
    - functions/strings/CountWords
    - functions/strings/RuneCount
  returnType: int
  signatures: [strings.Count SUBSTR STRING]
aliases: [/functions/strings.count]
---
@y
---
title: strings.Count
description: Returns the number of non-overlapping instances of the given substring within the given string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/len
    - functions/strings/CountRunes
    - functions/strings/CountWords
    - functions/strings/RuneCount
  returnType: int
  signatures: [strings.Count SUBSTR STRING]
aliases: [/functions/strings.count]
---
@z

@x
If `SUBSTR` is an empty string, this function returns 1 plus the number of Unicode code points in `STRING`.
@y
If `SUBSTR` is an empty string, this function returns 1 plus the number of Unicode code points in `STRING`.
@z

@x
```go-html-template
{{ "aaabaab" | strings.Count "a" }} → 5
{{ "aaabaab" | strings.Count "aa" }} → 2
{{ "aaabaab" | strings.Count "aaa" }} → 1
{{ "aaabaab" | strings.Count "" }} → 8
```
@y
```go-html-template
{{ "aaabaab" | strings.Count "a" }} → 5
{{ "aaabaab" | strings.Count "aa" }} → 2
{{ "aaabaab" | strings.Count "aaa" }} → 1
{{ "aaabaab" | strings.Count "" }} → 8
```
@z
