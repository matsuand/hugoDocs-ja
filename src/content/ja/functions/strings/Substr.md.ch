%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.Substr
description: Extracts parts of a string from a specified character's position and returns the specified number of characters.
categories: []
keywords: []
action:
  aliases: [substr]
  related: []
  returnType: string
  signatures: ['strings.Substr STRING START [LENGTH]']
aliases: [/functions/substr]
---
@y
---
title: strings.Substr
description: Extracts parts of a string from a specified character's position and returns the specified number of characters.
categories: []
keywords: []
action:
  aliases: [substr]
  related: []
  returnType: string
  signatures: ['strings.Substr STRING START [LENGTH]']
aliases: [/functions/substr]
---
@z

@x
It normally takes two argument: `start` and `length`. It can also take one argument: `start`, i.e. `length` is omitted, in which case the substring starting from start until the end of the string will be returned.
@y
It normally takes two argument: `start` and `length`. It can also take one argument: `start`, i.e. `length` is omitted, in which case the substring starting from start until the end of the string will be returned.
@z

@x
To extract characters from the end of the string, use a negative start number.
@y
To extract characters from the end of the string, use a negative start number.
@z

@x
If `length` is given and is negative, that number of characters will be omitted from the end of string.
@y
If `length` is given and is negative, that number of characters will be omitted from the end of string.
@z

@x
```go-html-template
{{ substr "abcdef" 0 }} → abcdef
{{ substr "abcdef" 1 }} → bcdef
@y
```go-html-template
{{ substr "abcdef" 0 }} → abcdef
{{ substr "abcdef" 1 }} → bcdef
@z

@x
{{ substr "abcdef" 0 1 }} → a
{{ substr "abcdef" 1 1 }} → b
@y
{{ substr "abcdef" 0 1 }} → a
{{ substr "abcdef" 1 1 }} → b
@z

@x
{{ substr "abcdef" 0 -1 }} → abcde
{{ substr "abcdef" 1 -1 }} → bcde
@y
{{ substr "abcdef" 0 -1 }} → abcde
{{ substr "abcdef" 1 -1 }} → bcde
@z

@x
{{ substr "abcdef" -1 }} → f
{{ substr "abcdef" -2 }} → ef
@y
{{ substr "abcdef" -1 }} → f
{{ substr "abcdef" -2 }} → ef
@z

@x
{{ substr "abcdef" -1 1 }} → f
{{ substr "abcdef" -2 1 }} → e
@y
{{ substr "abcdef" -1 1 }} → f
{{ substr "abcdef" -2 1 }} → e
@z

@x
{{ substr "abcdef" -3 -1 }} → de
{{ substr "abcdef" -3 -2 }} → d
```
@y
{{ substr "abcdef" -3 -1 }} → de
{{ substr "abcdef" -3 -2 }} → d
```
@z
