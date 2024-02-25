%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: inflect.Humanize
description: Returns the humanized version of the input with the first letter capitalized.
categories: []
keywords: []
action:
  aliases: [humanize]
  related:
    - functions/inflect/Pluralize
    - functions/inflect/Singularize
  returnType: string
  signatures: [inflect.Humanize INPUT]
aliases: [/functions/humanize]
---
@y
---
title: inflect.Humanize
description: Returns the humanized version of the input with the first letter capitalized.
categories: []
keywords: []
action:
  aliases: [humanize]
  related:
    - functions/inflect/Pluralize
    - functions/inflect/Singularize
  returnType: string
  signatures: [inflect.Humanize INPUT]
aliases: [/functions/humanize]
---
@z

@x
```go-html-template
{{ humanize "my-first-post" }} → My first post
{{ humanize "myCamelPost" }} → My camel post
```
@y
```go-html-template
{{ humanize "my-first-post" }} → My first post
{{ humanize "myCamelPost" }} → My camel post
```
@z

@x
If the input is an integer or a string representation of an integer, humanize returns the number with the proper ordinal appended.
@y
If the input is an integer or a string representation of an integer, humanize returns the number with the proper ordinal appended.
@z

@x
```go-html-template
{{ humanize "52" }} → 52nd
{{ humanize 103 }} → 103rd
```
@y
```go-html-template
{{ humanize "52" }} → 52nd
{{ humanize 103 }} → 103rd
```
@z
