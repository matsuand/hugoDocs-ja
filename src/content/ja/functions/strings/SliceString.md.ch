%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.SliceString
description: Creates a slice of a half-open range, including start and end indices.
categories: []
keywords: []
action:
  aliases: [slicestr]
  related: []
  returnType: string
  signatures: ['strings.SliceString STRING START [END]']
aliases: [/functions/slicestr]
---
@y
---
title: strings.SliceString
description: Creates a slice of a half-open range, including start and end indices.
categories: []
keywords: []
action:
  aliases: [slicestr]
  related: []
  returnType: string
  signatures: ['strings.SliceString STRING START [END]']
aliases: [/functions/slicestr]
---
@z

@x
For example, 1 and 4 creates a slice including elements 1 through&nbsp;3.
The `end` index can be omitted; it defaults to the string's length.
@y
For example, 1 and 4 creates a slice including elements 1 through&nbsp;3.
The `end` index can be omitted; it defaults to the string's length.
@z

@x
```go-html-template
{{ slicestr "BatMan" 3 }}` → Man
{{ slicestr "BatMan" 0 3 }}` → Bat
```
@y
```go-html-template
{{ slicestr "BatMan" 3 }}` → Man
{{ slicestr "BatMan" 0 3 }}` → Bat
```
@z
