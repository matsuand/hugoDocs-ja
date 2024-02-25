%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Append
description: Appends one or more elements to a slice and returns the resulting slice.
categories: []
keywords: []
action:
  aliases: [append]
  related:
    - functions/collections/Merge
  returnType: any
  signatures:
    - collections.Append ELEMENT [ELEMENT...] COLLECTION
    - collections.Append COLLECTION1 COLLECTION2
aliases: [/functions/append]
---
@y
---
title: collections.Append
description: Appends one or more elements to a slice and returns the resulting slice.
categories: []
keywords: []
action:
  aliases: [append]
  related:
    - functions/collections/Merge
  returnType: any
  signatures:
    - collections.Append ELEMENT [ELEMENT...] COLLECTION
    - collections.Append COLLECTION1 COLLECTION2
aliases: [/functions/append]
---
@z

@x
This function appends all elements, excluding the last, to the last element. This allows [pipe](/getting-started/glossary/#pipeline) constructs as shown below.
@y
This function appends all elements, excluding the last, to the last element. This allows [pipe](/getting-started/glossary/#pipeline) constructs as shown below.
@z

@x
Append a single element to a slice:
@y
Append a single element to a slice:
@z

@x
```go-html-template
{{ $s := slice "a" "b" }}
{{ $s }} → [a b]
@y
```go-html-template
{{ $s := slice "a" "b" }}
{{ $s }} → [a b]
@z

@x
{{ $s = $s | append "c" }}
{{ $s }} → [a b c]
```
@y
{{ $s = $s | append "c" }}
{{ $s }} → [a b c]
```
@z

@x
Append two elements to a slice:
@y
Append two elements to a slice:
@z

@x
```go-html-template
{{ $s := slice "a" "b" }}
{{ $s }} → [a b]
@y
```go-html-template
{{ $s := slice "a" "b" }}
{{ $s }} → [a b]
@z

@x
{{ $s = $s | append "c" "d" }}
{{ $s }} → [a b c d]
```
@y
{{ $s = $s | append "c" "d" }}
{{ $s }} → [a b c d]
```
@z

@x
Append two elements, as a slice, to a slice. This produces the same result as the previous example:
@y
Append two elements, as a slice, to a slice. This produces the same result as the previous example:
@z

@x
```go-html-template
{{ $s := slice "a" "b" }}
{{ $s }} → [a b]
@y
```go-html-template
{{ $s := slice "a" "b" }}
{{ $s }} → [a b]
@z

@x
{{ $s = $s | append (slice "c" "d") }}
{{ $s }} → [a b c d]
```
@y
{{ $s = $s | append (slice "c" "d") }}
{{ $s }} → [a b c d]
```
@z

@x
Start with an empty slice:
@y
Start with an empty slice:
@z

@x
```go-html-template
{{ $s := slice }}
{{ $s }} → []
@y
```go-html-template
{{ $s := slice }}
{{ $s }} → []
@z

@x
{{ $s = $s | append "a" }}
{{ $s }} → [a]
@y
{{ $s = $s | append "a" }}
{{ $s }} → [a]
@z

@x
{{ $s = $s | append "b" "c" }}
{{ $s }} → [a b c]
@y
{{ $s = $s | append "b" "c" }}
{{ $s }} → [a b c]
@z

@x
{{ $s = $s | append (slice "d" "e") }}
{{ $s }} → [a b c d e]
```
@y
{{ $s = $s | append (slice "d" "e") }}
{{ $s }} → [a b c d e]
```
@z

@x
If you start with a slice of a slice:
@y
If you start with a slice of a slice:
@z

@x
```go-html-template
{{ $s := slice (slice "a" "b") }}
{{ $s }} → [[a b]]
@y
```go-html-template
{{ $s := slice (slice "a" "b") }}
{{ $s }} → [[a b]]
@z

@x
{{ $s = $s | append (slice "c" "d") }}
{{ $s }} → [[a b] [c d]]
```
@y
{{ $s = $s | append (slice "c" "d") }}
{{ $s }} → [[a b] [c d]]
```
@z

@x
To create a slice of slices, starting with an empty slice:
@y
To create a slice of slices, starting with an empty slice:
@z

@x
```go-html-template
{{ $s := slice }}
{{ $s }} → []
@y
```go-html-template
{{ $s := slice }}
{{ $s }} → []
@z

@x
{{ $s = $s | append (slice (slice "a" "b")) }}
{{ $s }} → [[a b]]
@y
{{ $s = $s | append (slice (slice "a" "b")) }}
{{ $s }} → [[a b]]
@z

@x
{{ $s = $s | append (slice "c" "d") }}
{{ $s }} → [[a b] [c d]]
```
@y
{{ $s = $s | append (slice "c" "d") }}
{{ $s }} → [[a b] [c d]]
```
@z

@x
Although the elements in the examples above are strings, you can use the `append` function with any data type, including Pages. For example, on the home page of a corporate site, to display links to the two most recent press releases followed by links to the four most recent articles:
@y
Although the elements in the examples above are strings, you can use the `append` function with any data type, including Pages. For example, on the home page of a corporate site, to display links to the two most recent press releases followed by links to the four most recent articles:
@z

@x
```go-html-template
{{ $p := where site.RegularPages "Type" "press-releases" | first 2 }}
{{ $p = $p | append (where site.RegularPages "Type" "articles" | first 4) }}
@y
```go-html-template
{{ $p := where site.RegularPages "Type" "press-releases" | first 2 }}
{{ $p = $p | append (where site.RegularPages "Type" "articles" | first 4) }}
@z

@x
{{ with $p }}
  <ul>
    {{ range . }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@y
{{ with $p }}
  <ul>
    {{ range . }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@z
