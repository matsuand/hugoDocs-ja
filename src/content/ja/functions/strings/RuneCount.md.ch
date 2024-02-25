%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.RuneCount
description: Returns the number of runes in the given string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/len
    - functions/strings/Count
    - functions/strings/CountRunes
    - functions/strings/CountWords
  returnType: int
  signatures: [strings.RuneCount INPUT]
aliases: [/functions/strings.runecount]
---
@y
---
title: strings.RuneCount
description: Returns the number of runes in the given string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/len
    - functions/strings/Count
    - functions/strings/CountRunes
    - functions/strings/CountWords
  returnType: int
  signatures: [strings.RuneCount INPUT]
aliases: [/functions/strings.runecount]
---
@z

@x
In contrast with the [`strings.CountRunes`] function, which excludes whitespace, `strings.RuneCount` counts every rune in a string.
@y
In contrast with the [`strings.CountRunes`] function, which excludes whitespace, `strings.RuneCount` counts every rune in a string.
@z

@x
```go-html-template
{{ "Hello, 世界" | strings.RuneCount }} → 9
```
@y
```go-html-template
{{ "Hello, 世界" | strings.RuneCount }} → 9
```
@z

@x
[`strings.CountRunes`]: /functions/strings/countrunes/
@y
[`strings.CountRunes`]: /functions/strings/countrunes/
@z
