%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: compare.Le
description: Returns the boolean truth of arg1 <= arg2 && arg1 <= arg3.
categories: []
keywords: []
action:
  aliases: [le]
  related:
    - functions/compare/Eq
    - functions/compare/Ge
    - functions/compare/Gt
    - functions/compare/Lt
    - functions/compare/Ne
  returnType: bool
  signatures: ['compare.Le ARG1 ARG2 [ARG...]']
aliases: [/functions/le]
---
@y
---
title: compare.Le
description: Returns the boolean truth of arg1 <= arg2 && arg1 <= arg3.
categories: []
keywords: []
action:
  aliases: [le]
  related:
    - functions/compare/Eq
    - functions/compare/Ge
    - functions/compare/Gt
    - functions/compare/Lt
    - functions/compare/Ne
  returnType: bool
  signatures: ['compare.Le ARG1 ARG2 [ARG...]']
aliases: [/functions/le]
---
@z

@x
```go-html-template
{{ le 1 1 }} → true
{{ le 1 2 }} → true
{{ le 2 1 }} → false
@y
```go-html-template
{{ le 1 1 }} → true
{{ le 1 2 }} → true
{{ le 2 1 }} → false
@z

@x
{{ le 1 1 1 }} → true
{{ le 1 1 2 }} → true
{{ le 1 2 1 }} → true
{{ le 1 2 2 }} → true
@y
{{ le 1 1 1 }} → true
{{ le 1 1 2 }} → true
{{ le 1 2 1 }} → true
{{ le 1 2 2 }} → true
@z

@x
{{ le 2 1 1 }} → false
{{ le 2 1 2 }} → false
{{ le 2 2 1 }} → false
```
@y
{{ le 2 1 1 }} → false
{{ le 2 1 2 }} → false
{{ le 2 2 1 }} → false
```
@z
