%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Dictionary
description: Returns a map composed of the given key-value pairs.
categories: []
keywords: []
action:
  aliases: [dict]
  related:
    - functions/collections/Slice
  returnType: mapany
  signatures: ['collections.Dictionary [VALUE...]']
aliases: [/functions/dict]
---
@y
---
title: collections.Dictionary
description: Returns a map composed of the given key-value pairs.
categories: []
keywords: []
action:
  aliases: [dict]
  related:
    - functions/collections/Slice
  returnType: mapany
  signatures: ['collections.Dictionary [VALUE...]']
aliases: [/functions/dict]
---
@z

@x
Specify the key-value pairs as individual arguments:
@y
Specify the key-value pairs as individual arguments:
@z

@x
```go-html-template
{{ $m := dict "a" 1 "b" 2 }}
```
@y
```go-html-template
{{ $m := dict "a" 1 "b" 2 }}
```
@z

@x
The above produces this data structure:
@y
The above produces this data structure:
@z

@x
```json
{
  "a": 1,
  "b": 2
}
```
@y
```json
{
  "a": 1,
  "b": 2
}
```
@z

@x
To create an empty map:
@y
To create an empty map:
@z

@x
```go-html-template
{{ $m := dict }}
```
@y
```go-html-template
{{ $m := dict }}
```
@z

@x
Note that the `key` can be either a `string` or a `string slice`. The latter is useful to create a deeply nested structure, e.g.:
@y
Note that the `key` can be either a `string` or a `string slice`. The latter is useful to create a deeply nested structure, e.g.:
@z

@x
```go-html-template
{{ $m := dict (slice "a" "b" "c") "value" }}
```
@y
```go-html-template
{{ $m := dict (slice "a" "b" "c") "value" }}
```
@z

@x
The above produces this data structure:
@y
The above produces this data structure:
@z

@x
```json
{
  "a": {
    "b": {
      "c": "value"
    }
  }
}
```
@y
```json
{
  "a": {
    "b": {
      "c": "value"
    }
  }
}
```
@z
