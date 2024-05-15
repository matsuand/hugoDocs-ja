%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Slice
description: Returns a slice composed of the given values.
categories: []
keywords: []
action:
  aliases: [slice]
  related:
    - functions/collections/Dictionary
  returnType: any
  signatures: ['collections.Slice [VALUE...]']
aliases: [/functions/slice]
---
@y
---
title: collections.Slice
description: Returns a slice composed of the given values.
categories: []
keywords: []
action:
  aliases: [slice]
  related:
    - functions/collections/Dictionary
  returnType: any
  signatures: ['collections.Slice [VALUE...]']
aliases: [/functions/slice]
---
@z

@x
```go-html-template
{{ $s := slice "a" "b" "c" }}
{{ $s }} → [a b c]
```
@y
```go-html-template
{{ $s := slice "a" "b" "c" }}
{{ $s }} → [a b c]
```
@z

@x
To create an empty slice:
@y
To create an empty slice:
@z

@x
```go-html-template
{{ $s := slice }}
```
@y
```go-html-template
{{ $s := slice }}
```
@z
