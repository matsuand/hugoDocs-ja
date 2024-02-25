%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.Chomp
description: Returns the given string, removing all trailing newline characters and carriage returns.
categories: []
keywords: []
action:
  aliases: [chomp]
  related:
    - functions/strings/Trim
    - functions/strings/TrimLeft
    - functions/strings/TrimPrefix
    - functions/strings/TrimRight
    - functions/strings/TrimSuffix
  returnType: any
  signatures: [strings.Chomp STRING]
aliases: [/functions/chomp]
---
@y
---
title: strings.Chomp
description: Returns the given string, removing all trailing newline characters and carriage returns.
categories: []
keywords: []
action:
  aliases: [chomp]
  related:
    - functions/strings/Trim
    - functions/strings/TrimLeft
    - functions/strings/TrimPrefix
    - functions/strings/TrimRight
    - functions/strings/TrimSuffix
  returnType: any
  signatures: [strings.Chomp STRING]
aliases: [/functions/chomp]
---
@z

@x
If the argument is of type `template.HTML`, returns `template.HTML`, else returns a `string`.
@y
If the argument is of type `template.HTML`, returns `template.HTML`, else returns a `string`.
@z

@x
```go-html-template
{{ chomp | "foo\n" }} → foo
{{ chomp | "foo\n\n" }} → foo
@y
```go-html-template
{{ chomp | "foo\n" }} → foo
{{ chomp | "foo\n\n" }} → foo
@z

@x
{{ chomp | "foo\r\n" }} → foo
{{ chomp | "foo\r\n\r\n" }} → foo
```
@y
{{ chomp | "foo\r\n" }} → foo
{{ chomp | "foo\r\n\r\n" }} → foo
```
@z
