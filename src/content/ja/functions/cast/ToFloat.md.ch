%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: cast.ToFloat
description: Converts a value to a decimal floating-point number (base 10).
categories: []
keywords: []
action:
  aliases: [float]
  related:
    - functions/cast/ToInt
    - functions/cast/ToString
  returnType: float64
  signatures: [cast.ToFloat INPUT]
aliases: [/functions/float]
---
@y
---
title: cast.ToFloat
description: Converts a value to a decimal floating-point number (base 10).
categories: []
keywords: []
action:
  aliases: [float]
  related:
    - functions/cast/ToInt
    - functions/cast/ToString
  returnType: float64
  signatures: [cast.ToFloat INPUT]
aliases: [/functions/float]
---
@z

@x
With a decimal (base 10) input:
@y
With a decimal (base 10) input:
@z

@x
```go-html-template
{{ float 11 }} → 11 (float64)
{{ float "11" }} → 11 (float64)
@y
```go-html-template
{{ float 11 }} → 11 (float64)
{{ float "11" }} → 11 (float64)
@z

@x
{{ float 11.1 }} → 11.1 (float64)
{{ float "11.1" }} → 11.1 (float64)
@y
{{ float 11.1 }} → 11.1 (float64)
{{ float "11.1" }} → 11.1 (float64)
@z

@x
{{ float 11.9 }} → 11.9 (float64)
{{ float "11.9" }} → 11.9 (float64)
```
@y
{{ float 11.9 }} → 11.9 (float64)
{{ float "11.9" }} → 11.9 (float64)
```
@z

@x
With a binary (base 2) input:
@y
With a binary (base 2) input:
@z

@x
```go-html-template
{{ float 0b11 }} → 3 (float64)
```
@y
```go-html-template
{{ float 0b11 }} → 3 (float64)
```
@z

@x
With an octal (base 8) input (use either notation):
@y
With an octal (base 8) input (use either notation):
@z

@x
```go-html-template
{{ float 011 }} → 9 (float64)
{{ float "011" }} → 11 (float64)
@y
```go-html-template
{{ float 011 }} → 9 (float64)
{{ float "011" }} → 11 (float64)
@z

@x
{{ float 0o11 }} → 9 (float64)
```
@y
{{ float 0o11 }} → 9 (float64)
```
@z

@x
With a hexadecimal (base 16) input:
@y
With a hexadecimal (base 16) input:
@z

@x
```go-html-template
{{ float 0x11 }} → 17 (float64)
```
@y
```go-html-template
{{ float 0x11 }} → 17 (float64)
```
@z
