%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: compare.Eq
description: Returns the boolean truth of arg1 == arg2 || arg1 == arg3.
categories: []
keywords: []
action:
  aliases: [eq]
  related:
    - functions/compare/Ge
    - functions/compare/Gt
    - functions/compare/Le
    - functions/compare/Lt
    - functions/compare/Ne
  returnType: bool
  signatures: ['compare.Eq ARG1 ARG2 [ARG...]']
aliases: [/functions/eq]
---
@y
---
title: compare.Eq
description: Returns the boolean truth of arg1 == arg2 || arg1 == arg3.
categories: []
keywords: []
action:
  aliases: [eq]
  related:
    - functions/compare/Ge
    - functions/compare/Gt
    - functions/compare/Le
    - functions/compare/Lt
    - functions/compare/Ne
  returnType: bool
  signatures: ['compare.Eq ARG1 ARG2 [ARG...]']
aliases: [/functions/eq]
---
@z

@x
```go-html-template
{{ eq 1 1 }} → true
{{ eq 1 2 }} → false
@y
```go-html-template
{{ eq 1 1 }} → true
{{ eq 1 2 }} → false
@z

@x
{{ eq 1 1 1 }} → true
{{ eq 1 1 2 }} → true
{{ eq 1 2 1 }} → true
{{ eq 1 2 2 }} → false
```
@y
{{ eq 1 1 1 }} → true
{{ eq 1 1 2 }} → true
{{ eq 1 2 1 }} → true
{{ eq 1 2 2 }} → false
```
@z
