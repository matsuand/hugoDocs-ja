%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Merge
description: Returns the result of merging two or more maps.
categories: []
keywords: []
action:
  aliases: [merge]
  related:
    - functions/collections/Append
  returnType: any
  signatures: [collections.Merge MAP MAP...]
aliases: [/functions/merge]
---
@y
---
title: collections.Merge
description: Returns the result of merging two or more maps.
categories: []
keywords: []
action:
  aliases: [merge]
  related:
    - functions/collections/Append
  returnType: any
  signatures: [collections.Merge MAP MAP...]
aliases: [/functions/merge]
---
@z

@x
Returns the result of merging two or more maps from left to right. If a key already exists, `merge` updates its value. If a key is absent, `merge` inserts the value under the new key.
@y
Returns the result of merging two or more maps from left to right. If a key already exists, `merge` updates its value. If a key is absent, `merge` inserts the value under the new key.
@z

@x
Key handling is case-insensitive.
@y
Key handling is case-insensitive.
@z

@x
The following examples use these map definitions:
@y
The following examples use these map definitions:
@z

@x
```go-html-template
{{ $m1 := dict "x" "foo" }}
{{ $m2 := dict "x" "bar" "y" "wibble" }}
{{ $m3 := dict "x" "baz" "y" "wobble" "z" (dict "a" "huey") }}
```
@y
```go-html-template
{{ $m1 := dict "x" "foo" }}
{{ $m2 := dict "x" "bar" "y" "wibble" }}
{{ $m3 := dict "x" "baz" "y" "wobble" "z" (dict "a" "huey") }}
```
@z

@x
Example 1
@y
Example 1
@z

@x
```go-html-template
{{ $merged := merge $m1 $m2 $m3 }}
@y
```go-html-template
{{ $merged := merge $m1 $m2 $m3 }}
@z

@x
{{ $merged.x }}   → baz
{{ $merged.y }}   → wobble
{{ $merged.z.a }} → huey
```
@y
{{ $merged.x }}   → baz
{{ $merged.y }}   → wobble
{{ $merged.z.a }} → huey
```
@z

@x
Example 2
@y
Example 2
@z

@x
```go-html-template
{{ $merged := merge $m3 $m2 $m1 }}
@y
```go-html-template
{{ $merged := merge $m3 $m2 $m1 }}
@z

@x
{{ $merged.x }}   → foo
{{ $merged.y }}   → wibble
{{ $merged.z.a }} → huey
```
@y
{{ $merged.x }}   → foo
{{ $merged.y }}   → wibble
{{ $merged.z.a }} → huey
```
@z

@x
Example 3
@y
Example 3
@z

@x
```go-html-template
{{ $merged := merge $m2 $m3 $m1 }}
@y
```go-html-template
{{ $merged := merge $m2 $m3 $m1 }}
@z

@x
{{ $merged.x }}   → foo
{{ $merged.y }}   → wobble
{{ $merged.z.a }} → huey
```
@y
{{ $merged.x }}   → foo
{{ $merged.y }}   → wobble
{{ $merged.z.a }} → huey
```
@z

@x
Example 4
@y
Example 4
@z

@x
```go-html-template
{{ $merged := merge $m1 $m3 $m2 }}
@y
```go-html-template
{{ $merged := merge $m1 $m3 $m2 }}
@z

@x
{{ $merged.x }}   → bar
{{ $merged.y }}   → wibble
{{ $merged.z.a }} → huey
```
@y
{{ $merged.x }}   → bar
{{ $merged.y }}   → wibble
{{ $merged.z.a }} → huey
```
@z

@x
{{% note %}}
Regardless of depth, merging only applies to maps. For slices, use [append](/functions/collections/append).
{{% /note %}}
@y
{{% note %}}
Regardless of depth, merging only applies to maps. For slices, use [append](/functions/collections/append).
{{% /note %}}
@z
