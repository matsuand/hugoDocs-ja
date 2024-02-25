%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Delimit
description: Loops through any array, slice, or map and returns a string of all the values separated by a delimiter.
categories: []
keywords: []
action:
  aliases: [delimit]
  related:
    - functions/strings/Split
  returnType: string
  signatures: ['collections.Delimit COLLECTION DELIMITER [LAST]']
aliases: [/functions/delimit]
---
@y
---
title: collections.Delimit
description: Loops through any array, slice, or map and returns a string of all the values separated by a delimiter.
categories: []
keywords: []
action:
  aliases: [delimit]
  related:
    - functions/strings/Split
  returnType: string
  signatures: ['collections.Delimit COLLECTION DELIMITER [LAST]']
aliases: [/functions/delimit]
---
@z

@x
Delimit a slice:
@y
Delimit a slice:
@z

@x
```go-html-template
{{ $s := slice "b" "a" "c" }}
{{ delimit $s ", " }} → b, a, c
{{ delimit $s ", " " and "}} → b, a and c
```
@y
```go-html-template
{{ $s := slice "b" "a" "c" }}
{{ delimit $s ", " }} → b, a, c
{{ delimit $s ", " " and "}} → b, a and c
```
@z

@x
Delimit a map:
@y
Delimit a map:
@z

@x
{{% note %}}
The `delimit` function sorts maps by key, returning the values.
{{% /note %}}
@y
{{% note %}}
The `delimit` function sorts maps by key, returning the values.
{{% /note %}}
@z

@x
```go-html-template
{{ $m := dict "b" 2 "a" 1 "c" 3 }}
{{ delimit $m ", " }} → 1, 2, 3
{{ delimit $m ", " " and "}} → 1, 2 and 3
```
@y
```go-html-template
{{ $m := dict "b" 2 "a" 1 "c" 3 }}
{{ delimit $m ", " }} → 1, 2, 3
{{ delimit $m ", " " and "}} → 1, 2 and 3
```
@z
