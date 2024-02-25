%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: cast.ToString
description: Converts a value to a string.
categories: []
keywords: []
action:
  aliases: [string]
  related:
    - functions/cast/ToFloat
    - functions/cast/ToInt
  returnType: string
  signatures: [cast.ToString INPUT]
aliases: [/functions/string]
---
@y
---
title: cast.ToString
description: Converts a value to a string.
categories: []
keywords: []
action:
  aliases: [string]
  related:
    - functions/cast/ToFloat
    - functions/cast/ToInt
  returnType: string
  signatures: [cast.ToString INPUT]
aliases: [/functions/string]
---
@z

@x
With a decimal (base 10) input:
@y
With a decimal (base 10) input:
@z

@x
```go-html-template
{{ string 11 }} → 11 (string)
{{ string "11" }} → 11 (string)
@y
```go-html-template
{{ string 11 }} → 11 (string)
{{ string "11" }} → 11 (string)
@z

@x
{{ string 11.1 }} → 11.1 (string)
{{ string "11.1" }} → 11.1 (string)
@y
{{ string 11.1 }} → 11.1 (string)
{{ string "11.1" }} → 11.1 (string)
@z

@x
{{ string 11.9 }} → 11.9 (string)
{{ string "11.9" }} → 11.9 (string)
```
@y
{{ string 11.9 }} → 11.9 (string)
{{ string "11.9" }} → 11.9 (string)
```
@z

@x
With a binary (base 2) input:
@y
With a binary (base 2) input:
@z

@x
```go-html-template
{{ string 0b11 }} → 3 (string)
{{ string "0b11" }} → 0b11 (string)
```
@y
```go-html-template
{{ string 0b11 }} → 3 (string)
{{ string "0b11" }} → 0b11 (string)
```
@z

@x
With an octal (base 8) input (use either notation):
@y
With an octal (base 8) input (use either notation):
@z

@x
```go-html-template
{{ string 011 }} → 9 (string)
{{ string "011" }} → 011 (string)
@y
```go-html-template
{{ string 011 }} → 9 (string)
{{ string "011" }} → 011 (string)
@z

@x
{{ string 0o11 }} → 9 (string)
{{ string "0o11" }} → 0o11 (string)
```
@y
{{ string 0o11 }} → 9 (string)
{{ string "0o11" }} → 0o11 (string)
```
@z

@x
With a hexadecimal (base 16) input:
@y
With a hexadecimal (base 16) input:
@z

@x
```go-html-template
{{ string 0x11 }} → 17 (string)
{{ string "0x11" }} → 0x11 (string)
```
@y
```go-html-template
{{ string 0x11 }} → 17 (string)
{{ string "0x11" }} → 0x11 (string)
```
@z
