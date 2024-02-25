%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.TrimRight
description: Returns the given string, removing trailing characters specified in the cutset.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/strings/Chomp
    - functions/strings/Trim
    - functions/strings/TrimLeft
    - functions/strings/TrimPrefix
    - functions/strings/TrimSuffix
  returnType: string
  signatures: [strings.TrimRight CUTSET STRING]
aliases: [/functions/strings.trimright]
---
@y
---
title: strings.TrimRight
description: Returns the given string, removing trailing characters specified in the cutset.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/strings/Chomp
    - functions/strings/Trim
    - functions/strings/TrimLeft
    - functions/strings/TrimPrefix
    - functions/strings/TrimSuffix
  returnType: string
  signatures: [strings.TrimRight CUTSET STRING]
aliases: [/functions/strings.trimright]
---
@z

@x
```go-html-template
{{ strings.TrimRight "a" "abba" }} → abb
```
@y
```go-html-template
{{ strings.TrimRight "a" "abba" }} → abb
```
@z

@x
The `strings.TrimRight` function converts the arguments to strings if possible:
@y
The `strings.TrimRight` function converts the arguments to strings if possible:
@z

@x
```go-html-template
{{ strings.TrimRight 54 12345 }} → 123 (string)
{{ strings.TrimRight "eu" true }} → tr
```
@y
```go-html-template
{{ strings.TrimRight 54 12345 }} → 123 (string)
{{ strings.TrimRight "eu" true }} → tr
```
@z
