%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: strings.CountRunes
description: Returns the number of runes in the given string excluding whitespace.
categories: []
keywords: []
@y
title: strings.CountRunes
description: Returns the number of runes in the given string excluding whitespace.
categories: []
keywords: []
@z

@x
In contrast with the [`strings.RuneCount`] function, which counts every rune in a string, `strings.CountRunes` excludes whitespace.
@y
In contrast with the [`strings.RuneCount`] function, which counts every rune in a string, `strings.CountRunes` excludes whitespace.
@z

@x
```go-html-template
{{ "Hello, 世界" | strings.CountRunes }} → 8
```
@y
```go-html-template
{{ "Hello, 世界" | strings.CountRunes }} → 8
```
@z

@x
[`strings.RuneCount`]: /functions/strings/runecount/
@y
[`strings.RuneCount`]: /functions/strings/runecount/
@z
