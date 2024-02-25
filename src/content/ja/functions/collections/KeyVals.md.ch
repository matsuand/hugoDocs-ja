%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.KeyVals
description: Returns a KeyVals struct.
categories: []
keywords: []
action:
  aliases: [keyVals]
  related:
    - methods/pages/Related
  returnType: types.KeyValues
  signatures: [collections.KeyVals KEY VALUES...]
aliases: [/functions/keyvals]
---
@y
---
title: collections.KeyVals
description: Returns a KeyVals struct.
categories: []
keywords: []
action:
  aliases: [keyVals]
  related:
    - methods/pages/Related
  returnType: types.KeyValues
  signatures: [collections.KeyVals KEY VALUES...]
aliases: [/functions/keyvals]
---
@z

@x
The primary application for this function is the definition of the `namedSlices` parameter in the options map passed to the [`Related`] method on the `Pages` object.
@y
The primary application for this function is the definition of the `namedSlices` parameter in the options map passed to the [`Related`] method on the `Pages` object.
@z

@x
[`Related`]: /methods/pages/related/
@y
[`Related`]: /methods/pages/related/
@z

@x
See [related content](/content-management/related).
@y
See [related content](/content-management/related).
@z

@x
```go-html-template
{{ $kv := keyVals "foo" "a" "b" "c" }}
```
@y
```go-html-template
{{ $kv := keyVals "foo" "a" "b" "c" }}
```
@z

@x
The resulting data structure is:
@y
The resulting data structure is:
@z

@x
```json
{
  "Key": "foo",
  "Values": [
    "a",
    "b",
    "c"
  ]
}
```
@y
```json
{
  "Key": "foo",
  "Values": [
    "a",
    "b",
    "c"
  ]
}
```
@z

@x
To extract the key and values:
@y
To extract the key and values:
@z

@x
```go-html-template
{{ $kv.Key }} → foo
{{ $kv.Values }} → [a b c]
```
@y
```go-html-template
{{ $kv.Key }} → foo
{{ $kv.Values }} → [a b c]
```
@z
