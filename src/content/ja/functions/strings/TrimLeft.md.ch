%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.TrimLeft
description: Returns the given string, removing leading characters specified in the cutset.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/strings/Chomp
    - functions/strings/Trim
    - functions/strings/TrimPrefix
    - functions/strings/TrimRight
    - functions/strings/TrimSuffix
  returnType: string
  signatures: [strings.TrimLeft CUTSET STRING]
aliases: [/functions/strings.trimleft]
---
@y
---
title: strings.TrimLeft
description: Returns the given string, removing leading characters specified in the cutset.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/strings/Chomp
    - functions/strings/Trim
    - functions/strings/TrimPrefix
    - functions/strings/TrimRight
    - functions/strings/TrimSuffix
  returnType: string
  signatures: [strings.TrimLeft CUTSET STRING]
aliases: [/functions/strings.trimleft]
---
@z

@x
```go-html-template
{{ strings.TrimLeft "a" "abba" }} → bba
```
@y
```go-html-template
{{ strings.TrimLeft "a" "abba" }} → bba
```
@z

@x
The `strings.TrimLeft` function converts the arguments to strings if possible:
@y
The `strings.TrimLeft` function converts the arguments to strings if possible:
@z

@x
```go-html-template
{{ strings.TrimLeft 21 12345 }} → 345 (string)
{{ strings.TrimLeft "rt" true }} → ue
```
@y
```go-html-template
{{ strings.TrimLeft 21 12345 }} → 345 (string)
{{ strings.TrimLeft "rt" true }} → ue
```
@z
