%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Seq
description: Returns a slice of integers.
categories: []
keywords: []
action:
  aliases: [seq]
  related: []
  returnType: '[]int'
  signatures:
    - collections.Seq LAST
    - collections.Seq FIRST LAST
    - collections.Seq FIRST INCREMENT LAST
aliases: [/functions/seq]
---
@y
---
title: collections.Seq
description: Returns a slice of integers.
categories: []
keywords: []
action:
  aliases: [seq]
  related: []
  returnType: '[]int'
  signatures:
    - collections.Seq LAST
    - collections.Seq FIRST LAST
    - collections.Seq FIRST INCREMENT LAST
aliases: [/functions/seq]
---
@z

@x
```go-html-template
{{ seq 2 }} → [1 2]
{{ seq 0 2 }} → [0 1 2]
{{ seq -2 2 }} → [-2 -1 0 1 2]
{{ seq -2 2 2 }} → [-2 0 2]
```
@y
```go-html-template
{{ seq 2 }} → [1 2]
{{ seq 0 2 }} → [0 1 2]
{{ seq -2 2 }} → [-2 -1 0 1 2]
{{ seq -2 2 2 }} → [-2 0 2]
```
@z

@x
A contrived example of iterating over a sequence of integers:
@y
A contrived example of iterating over a sequence of integers:
@z

@x
```go-html-template
{{ $product := 1 }}
{{ range seq 4 }}
  {{ $product = mul $product . }}
{{ end }}
{{ $product }} → 24
```
@y
```go-html-template
{{ $product := 1 }}
{{ range seq 4 }}
  {{ $product = mul $product . }}
{{ end }}
{{ $product }} → 24
```
@z

@x
{{% note %}}
The slice created by the `seq` function is limited to 2000 elements.
{{% /note %}}
@y
{{% note %}}
The slice created by the `seq` function is limited to 2000 elements.
{{% /note %}}
@z
