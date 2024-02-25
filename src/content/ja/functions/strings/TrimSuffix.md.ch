%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.TrimSuffix
description: Returns the given string, removing the suffix from the end of the string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/strings/Chomp
    - functions/strings/Trim
    - functions/strings/TrimLeft
    - functions/strings/TrimPrefix
    - functions/strings/TrimRight
  returnType: string
  signatures: [strings.TrimSuffix SUFFIX STRING]
aliases: [/functions/strings.trimsuffix]
---
@y
---
title: strings.TrimSuffix
description: Returns the given string, removing the suffix from the end of the string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/strings/Chomp
    - functions/strings/Trim
    - functions/strings/TrimLeft
    - functions/strings/TrimPrefix
    - functions/strings/TrimRight
  returnType: string
  signatures: [strings.TrimSuffix SUFFIX STRING]
aliases: [/functions/strings.trimsuffix]
---
@z

@x
```go-html-template
{{ strings.TrimSuffix "a" "aabbaa" }} → aabba
{{ strings.TrimSuffix "aa" "aabbaa" }} → aabb
{{ strings.TrimSuffix "aaa" "aabbaa" }} → aabbaa
```
@y
```go-html-template
{{ strings.TrimSuffix "a" "aabbaa" }} → aabba
{{ strings.TrimSuffix "aa" "aabbaa" }} → aabb
{{ strings.TrimSuffix "aaa" "aabbaa" }} → aabbaa
```
@z
