%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: cast.ToInt
description: Converts a value to a decimal integer (base 10).
keywords: []
action:
  aliases: [int]
  related:
    - functions/cast/ToFloat
    - functions/cast/ToString
  returnType: int
  signatures: [cast.ToInt INPUT]
aliases: [/functions/int]
---
@y
---
title: cast.ToInt
description: Converts a value to a decimal integer (base 10).
keywords: []
action:
  aliases: [int]
  related:
    - functions/cast/ToFloat
    - functions/cast/ToString
  returnType: int
  signatures: [cast.ToInt INPUT]
aliases: [/functions/int]
---
@z

@x
With a decimal (base 10) input:
@y
With a decimal (base 10) input:
@z

@x
```go-html-template
{{ int 11 }} → 11 (int)
{{ int "11" }} → 11 (int)
@y
```go-html-template
{{ int 11 }} → 11 (int)
{{ int "11" }} → 11 (int)
@z

@x
{{ int 11.1 }} → 11 (int)
{{ int 11.9 }} → 11 (int)
```
@y
{{ int 11.1 }} → 11 (int)
{{ int 11.9 }} → 11 (int)
```
@z

@x
With a binary (base 2) input:
@y
With a binary (base 2) input:
@z

@x
```go-html-template
{{ int 0b11 }} → 3 (int)
{{ int "0b11" }} → 3 (int)
```
@y
```go-html-template
{{ int 0b11 }} → 3 (int)
{{ int "0b11" }} → 3 (int)
```
@z

@x
With an octal (base 8) input (use either notation):
@y
With an octal (base 8) input (use either notation):
@z

@x
```go-html-template
{{ int 011 }} → 9 (int)
{{ int "011" }} → 9 (int)
@y
```go-html-template
{{ int 011 }} → 9 (int)
{{ int "011" }} → 9 (int)
@z

@x
{{ int 0o11 }} → 9 (int)
{{ int "0o11" }} → 9 (int)
```
@y
{{ int 0o11 }} → 9 (int)
{{ int "0o11" }} → 9 (int)
```
@z

@x
With a hexadecimal (base 16) input:
@y
With a hexadecimal (base 16) input:
@z

@x
```go-html-template
{{ int 0x11 }} → 17 (int)
{{ int "0x11" }} → 17 (int)
```
@y
```go-html-template
{{ int 0x11 }} → 17 (int)
{{ int "0x11" }} → 17 (int)
```
@z

@x
{{% note %}}
Values with a leading zero are octal (base 8). When casting a string representation of a decimal (base 10) number, remove leading zeros:
@y
{{% note %}}
Values with a leading zero are octal (base 8). When casting a string representation of a decimal (base 10) number, remove leading zeros:
@z

@x
`{{ strings.TrimLeft "0" "0011" | int }} → 11`
{{% /note %}}
@y
`{{ strings.TrimLeft "0" "0011" | int }} → 11`
{{% /note %}}
@z
