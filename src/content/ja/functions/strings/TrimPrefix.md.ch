%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.TrimPrefix
description: Returns the given string, removing the prefix from the beginning of the string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/strings/Chomp
    - functions/strings/Trim
    - functions/strings/TrimLeft
    - functions/strings/TrimRight
    - functions/strings/TrimSuffix
  returnType: string
  signatures: [strings.TrimPrefix PREFIX STRING]
aliases: [/functions/strings.trimprefix]
---
@y
---
title: strings.TrimPrefix
description: Returns the given string, removing the prefix from the beginning of the string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/strings/Chomp
    - functions/strings/Trim
    - functions/strings/TrimLeft
    - functions/strings/TrimRight
    - functions/strings/TrimSuffix
  returnType: string
  signatures: [strings.TrimPrefix PREFIX STRING]
aliases: [/functions/strings.trimprefix]
---
@z

@x
```go-html-template
{{ strings.TrimPrefix "a" "aabbaa" }} → abbaa
{{ strings.TrimPrefix "aa" "aabbaa" }} → bbaa
{{ strings.TrimPrefix "aaa" "aabbaa" }} → aabbaa
```
@y
```go-html-template
{{ strings.TrimPrefix "a" "aabbaa" }} → abbaa
{{ strings.TrimPrefix "aa" "aabbaa" }} → bbaa
{{ strings.TrimPrefix "aaa" "aabbaa" }} → aabbaa
```
@z
