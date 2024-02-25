%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.In
description: Reports whether the given value is a member of the given set.
categories: []
keywords: []
action:
  aliases: [in]
  related:
    - functions/strings/Contains
    - functions/strings/ContainsAny
    - functions/strings/ContainsNonSpace
    - functions/strings/HasPrefix
    - functions/strings/HasSuffix
  returnType: bool
  signatures: [collections.In SET VALUE]
aliases: [/functions/in]
---
@y
---
title: collections.In
description: Reports whether the given value is a member of the given set.
categories: []
keywords: []
action:
  aliases: [in]
  related:
    - functions/strings/Contains
    - functions/strings/ContainsAny
    - functions/strings/ContainsNonSpace
    - functions/strings/HasPrefix
    - functions/strings/HasSuffix
  returnType: bool
  signatures: [collections.In SET VALUE]
aliases: [/functions/in]
---
@z

@x
The `SET` can be an [array], [slice], or [string].
@y
The `SET` can be an [array], [slice], or [string].
@z

@x
[array]: /getting-started/glossary/#array
[slice]: /getting-started/glossary/#slice
[string]: /getting-started/glossary/#string
@y
[array]: /getting-started/glossary/#array
[slice]: /getting-started/glossary/#slice
[string]: /getting-started/glossary/#string
@z

@x
```go-html-template
{{ $s := slice "a" "b" "c" }}
{{ in $s "b" }} → true
```
@y
```go-html-template
{{ $s := slice "a" "b" "c" }}
{{ in $s "b" }} → true
```
@z

@x
```go-html-template
{{ $s := slice 1 2 3 }}
{{ in $s 2 }} → true
```
@y
```go-html-template
{{ $s := slice 1 2 3 }}
{{ in $s 2 }} → true
```
@z

@x
```go-html-template
{{ $s := slice 1.11 2.22 3.33 }}
{{ in $s 2.22 }} → true
```
@y
```go-html-template
{{ $s := slice 1.11 2.22 3.33 }}
{{ in $s 2.22 }} → true
```
@z

@x
```go-html-template
{{ $s := "abc" }}
{{ in $s "b" }} → true
```
@y
```go-html-template
{{ $s := "abc" }}
{{ in $s "b" }} → true
```
@z
