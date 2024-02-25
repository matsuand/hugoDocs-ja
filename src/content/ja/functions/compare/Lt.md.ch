%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: compare.Lt
description: Returns the boolean truth of arg1 < arg2 && arg1 < arg3.
categories: []
keywords: []
action:
  aliases: [lt]
  related:
    - functions/compare/Eq
    - functions/compare/Ge
    - functions/compare/Gt
    - functions/compare/Le
    - functions/compare/Ne
  returnType: bool
  signatures: ['compare.Lt ARG1 ARG2 [ARG...]']
aliases: [/functions/lt]
---
@y
---
title: compare.Lt
description: Returns the boolean truth of arg1 < arg2 && arg1 < arg3.
categories: []
keywords: []
action:
  aliases: [lt]
  related:
    - functions/compare/Eq
    - functions/compare/Ge
    - functions/compare/Gt
    - functions/compare/Le
    - functions/compare/Ne
  returnType: bool
  signatures: ['compare.Lt ARG1 ARG2 [ARG...]']
aliases: [/functions/lt]
---
@z

@x
```go-html-template
{{ lt 1 1 }} → false
{{ lt 1 2 }} → true
{{ lt 2 1 }} → false
@y
```go-html-template
{{ lt 1 1 }} → false
{{ lt 1 2 }} → true
{{ lt 2 1 }} → false
@z

@x
{{ lt 1 1 1 }} → false
{{ lt 1 1 2 }} → false
{{ lt 1 2 1 }} → false
{{ lt 1 2 2 }} → true
@y
{{ lt 1 1 1 }} → false
{{ lt 1 1 2 }} → false
{{ lt 1 2 1 }} → false
{{ lt 1 2 2 }} → true
@z

@x
{{ lt 2 1 1 }} → false
{{ lt 2 1 2 }} → false
{{ lt 2 2 1 }} → false
```
@y
{{ lt 2 1 1 }} → false
{{ lt 2 1 2 }} → false
{{ lt 2 2 1 }} → false
```
@z
