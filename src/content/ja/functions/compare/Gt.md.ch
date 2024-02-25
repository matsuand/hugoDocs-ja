%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: compare.Gt
description: Returns the boolean truth of arg1 > arg2 && arg1 > arg3.
categories: []
keywords: []
action:
  aliases: [gt]
  related:
    - functions/compare/Eq
    - functions/compare/Ge
    - functions/compare/Le
    - functions/compare/Lt
    - functions/compare/Ne
  returnType: bool
  signatures: ['compare.Gt ARG1 ARG2 [ARG...]']
aliases: [/functions/gt]
---
@y
---
title: compare.Gt
description: Returns the boolean truth of arg1 > arg2 && arg1 > arg3.
categories: []
keywords: []
action:
  aliases: [gt]
  related:
    - functions/compare/Eq
    - functions/compare/Ge
    - functions/compare/Le
    - functions/compare/Lt
    - functions/compare/Ne
  returnType: bool
  signatures: ['compare.Gt ARG1 ARG2 [ARG...]']
aliases: [/functions/gt]
---
@z

@x
```go-html-template
{{ gt 1 1 }} → false
{{ gt 1 2 }} → false
{{ gt 2 1 }} → true
@y
```go-html-template
{{ gt 1 1 }} → false
{{ gt 1 2 }} → false
{{ gt 2 1 }} → true
@z

@x
{{ gt 1 1 1 }} → false
{{ gt 1 1 2 }} → false
{{ gt 1 2 1 }} → false
{{ gt 1 2 2 }} → false
@y
{{ gt 1 1 1 }} → false
{{ gt 1 1 2 }} → false
{{ gt 1 2 1 }} → false
{{ gt 1 2 2 }} → false
@z

@x
{{ gt 2 1 1 }} → true
{{ gt 2 1 2 }} → false
{{ gt 2 2 1 }} → false
```
@y
{{ gt 2 1 1 }} → true
{{ gt 2 1 2 }} → false
{{ gt 2 2 1 }} → false
```
@z
