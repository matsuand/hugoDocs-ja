%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: len
description: Returns the length of a string, slice, map, or collection.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/strings/Count
    - functions/strings/CountRunes
    - functions/strings/CountWords
    - functions/strings/RuneCount
  returnType: int
  signatures: [len VALUE]
aliases: [/functions/len]
---
@y
---
title: len
description: 文字列、スライス、マップ、コレクションの長さを返します。
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/strings/Count
    - functions/strings/CountRunes
    - functions/strings/CountWords
    - functions/strings/RuneCount
  returnType: int
  signatures: [len VALUE]
aliases: [/functions/len]
---
@z

@x
With a string:
@y
文字列に対して用います。
@z

@x
```go-html-template
{{ "ab" | len }} → 2
{{ "" | len }} → 0
```
@y
```go-html-template
{{ "ab" | len }} → 2
{{ "" | len }} → 0
```
@z

@x
With a slice:
@y
スライスに対して用います。
@z

@x
```go-html-template
{{ slice "a" "b" | len }} → 2
{{ slice | len }} → 0
```
@y
```go-html-template
{{ slice "a" "b" | len }} → 2
{{ slice | len }} → 0
```
@z

@x
With a map:
@y
マップに対して用います。
@z

@x
```go-html-template
{{ dict "a" 1 "b" 2  | len }} → 2
{{ dict | len }} → 0
```
@y
```go-html-template
{{ dict "a" 1 "b" 2  | len }} → 2
{{ dict | len }} → 0
```
@z

@x
With a collection:
@y
コレクションに対して用います。
@z

@x
```go-html-template
{{ site.RegularPages | len }} → 42
```
@y
```go-html-template
{{ site.RegularPages | len }} → 42
```
@z

@x
You may also determine the number of pages in a collection with:
@y
コレクション内にあるページ数を確認する際にも利用できます。
@z

@x
```go-html-template
{{ site.RegularPages.Len }} → 42
```
@y
```go-html-template
{{ site.RegularPages.Len }} → 42
```
@z

@x
{{% include "functions/go-template/_common/text-template.md" %}}
@y
{{% include "functions/go-template/_common/text-template.md" %}}
@z
