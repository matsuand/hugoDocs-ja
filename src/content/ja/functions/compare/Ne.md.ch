%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: compare.Ne
description: Returns the boolean truth of arg1 != arg2 && arg1 != arg3.
categories: []
keywords: []
action:
  aliases: [ne]
  related:
    - functions/compare/Eq
    - functions/compare/Ge
    - functions/compare/Gt
    - functions/compare/Le
    - functions/compare/Lt
  returnType: bool
  signatures: ['compare.Ne ARG1 ARG2 [ARG...]']
aliases: [/functions/ne]
---
@y
---
title: compare.Ne
description: Returns the boolean truth of arg1 != arg2 && arg1 != arg3.
categories: []
keywords: []
action:
  aliases: [ne]
  related:
    - functions/compare/Eq
    - functions/compare/Ge
    - functions/compare/Gt
    - functions/compare/Le
    - functions/compare/Lt
  returnType: bool
  signatures: ['compare.Ne ARG1 ARG2 [ARG...]']
aliases: [/functions/ne]
---
@z

@x
```go-html-template
{{ ne 1 1 }} → false
{{ ne 1 2 }} → true
@y
```go-html-template
{{ ne 1 1 }} → false
{{ ne 1 2 }} → true
@z

@x
{{ ne 1 1 1 }} → false
{{ ne 1 1 2 }} → false
{{ ne 1 2 1 }} → false
{{ ne 1 2 2 }} → true
```
@y
{{ ne 1 1 1 }} → false
{{ ne 1 1 2 }} → false
{{ ne 1 2 1 }} → false
{{ ne 1 2 2 }} → true
```
@z
