%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: fmt.Printf
description: Formats a string using the standard `fmt.Sprintf` function.
categories: []
keywords: []
action:
  aliases: [printf]
  related:
    - functions/fmt/Print
    - functions/fmt/Println
  returnType: string
  signatures: ['fmt.Printf FORMAT [INPUT]']
aliases: [/functions/printf]
---
@y
---
title: fmt.Printf
description: Formats a string using the standard `fmt.Sprintf` function.
categories: []
keywords: []
action:
  aliases: [printf]
  related:
    - functions/fmt/Print
    - functions/fmt/Println
  returnType: string
  signatures: ['fmt.Printf FORMAT [INPUT]']
aliases: [/functions/printf]
---
@z

@x
{{% include "functions/fmt/_common/fmt-layout.md" %}}
@y
{{% include "functions/fmt/_common/fmt-layout.md" %}}
@z

@x
```go-html-template
{{ $var := "world" }}
{{ printf "Hello %s." $var }} → Hello world.
```
@y
```go-html-template
{{ $var := "world" }}
{{ printf "Hello %s." $var }} → Hello world.
```
@z

@x
```go-html-template
{{ $pi := 3.14159265 }}
{{ printf "Pi is approximately %.2f." $pi }} → 3.14
```
@y
```go-html-template
{{ $pi := 3.14159265 }}
{{ printf "Pi is approximately %.2f." $pi }} → 3.14
```
@z

@x
Use the `printf` function with the `safeHTMLAttr` function:
@y
Use the `printf` function with the `safeHTMLAttr` function:
@z

@x
```go-html-template
{{ $desc := "Eat at Joe's" }}
<meta name="description" {{ printf "content=%q" $desc | safeHTMLAttr }}>
```
@y
```go-html-template
{{ $desc := "Eat at Joe's" }}
<meta name="description" {{ printf "content=%q" $desc | safeHTMLAttr }}>
```
@z

@x
Hugo renders this to:
@y
Hugo renders this to:
@z

@x
```html
<meta name="description" content="Eat at Joe's">
```
@y
```html
<meta name="description" content="Eat at Joe's">
```
@z
