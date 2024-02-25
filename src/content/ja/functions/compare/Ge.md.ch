%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: compare.Ge
description: Returns the boolean truth of arg1 >= arg2 && arg1 >= arg3.
categories: []
keywords: []
action:
  aliases: [ge]
  related:
    - functions/compare/Eq
    - functions/compare/Gt
    - functions/compare/Le
    - functions/compare/Lt
    - functions/compare/Ne
  returnType: bool
  signatures: ['compare.Ge ARG1 ARG2 [ARG...]']
aliases: [/functions/ge]
---
@y
---
title: compare.Ge
description: Returns the boolean truth of arg1 >= arg2 && arg1 >= arg3.
categories: []
keywords: []
action:
  aliases: [ge]
  related:
    - functions/compare/Eq
    - functions/compare/Gt
    - functions/compare/Le
    - functions/compare/Lt
    - functions/compare/Ne
  returnType: bool
  signatures: ['compare.Ge ARG1 ARG2 [ARG...]']
aliases: [/functions/ge]
---
@z

@x
```go-html-template
{{ ge 1 1 }} → true
{{ ge 1 2 }} → false
{{ ge 2 1 }} → true
@y
```go-html-template
{{ ge 1 1 }} → true
{{ ge 1 2 }} → false
{{ ge 2 1 }} → true
@z

@x
{{ ge 1 1 1 }} → true
{{ ge 1 1 2 }} → false
{{ ge 1 2 1 }} → false
{{ ge 1 2 2 }} → false
@y
{{ ge 1 1 1 }} → true
{{ ge 1 1 2 }} → false
{{ ge 1 2 1 }} → false
{{ ge 1 2 2 }} → false
@z

@x
{{ ge 2 1 1 }} → true
{{ ge 2 1 2 }} → true
{{ ge 2 2 1 }} → true
```
@y
{{ ge 2 1 1 }} → true
{{ ge 2 1 2 }} → true
{{ ge 2 2 1 }} → true
```
@z
