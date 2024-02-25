%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.Contains
description: Reports whether the given string contains the given substring.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/strings/ContainsAny
    - functions/strings/ContainsNonSpace
    - functions/strings/HasPrefix
    - functions/strings/HasSuffix
    - functions/collections/In
  returnType: bool
  signatures: [strings.Contains STRING SUBSTRING]
aliases: [/functions/strings.contains]
---
@y
---
title: strings.Contains
description: Reports whether the given string contains the given substring.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/strings/ContainsAny
    - functions/strings/ContainsNonSpace
    - functions/strings/HasPrefix
    - functions/strings/HasSuffix
    - functions/collections/In
  returnType: bool
  signatures: [strings.Contains STRING SUBSTRING]
aliases: [/functions/strings.contains]
---
@z

@x
```go-html-template
{{ strings.Contains "Hugo" "go" }} → true
```
@y
```go-html-template
{{ strings.Contains "Hugo" "go" }} → true
```
@z

@x
The check is case sensitive:
@y
The check is case sensitive:
@z

@x
```go-html-template
{{ strings.Contains "Hugo" "Go" }} → false
```
@y
```go-html-template
{{ strings.Contains "Hugo" "Go" }} → false
```
@z
