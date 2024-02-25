%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Apply
description: Returns a new collection with each element transformed by the given function.
categories: []
keywords: []
action:
  aliases: [apply]
  related: []
  returnType: '[]any'
  signatures: [collections.Apply COLLECTION FUNCTION PARAM...]
aliases: [/functions/apply]
---
@y
---
title: collections.Apply
description: Returns a new collection with each element transformed by the given function.
categories: []
keywords: []
action:
  aliases: [apply]
  related: []
  returnType: '[]any'
  signatures: [collections.Apply COLLECTION FUNCTION PARAM...]
aliases: [/functions/apply]
---
@z

@x
The `apply` function takes three or more arguments, depending on the function being applied to the collection elements.
@y
The `apply` function takes three or more arguments, depending on the function being applied to the collection elements.
@z

@x
The first argument is the collection itself, the second argument is the function name, and the remaining arguments are passed to the function, with the string `"."` representing the collection element.
@y
The first argument is the collection itself, the second argument is the function name, and the remaining arguments are passed to the function, with the string `"."` representing the collection element.
@z

@x
```go-html-template
{{ $s := slice "hello" "world" }}
@y
```go-html-template
{{ $s := slice "hello" "world" }}
@z

@x
{{ $s = apply $s "strings.FirstUpper" "." }}
{{ $s }} → [Hello World]
@y
{{ $s = apply $s "strings.FirstUpper" "." }}
{{ $s }} → [Hello World]
@z

@x
{{ $s = apply $s "strings.Replace" "." "l" "_" }}
{{ $s }} →  [He__o Wor_d]
```
@y
{{ $s = apply $s "strings.Replace" "." "l" "_" }}
{{ $s }} →  [He__o Wor_d]
```
@z
