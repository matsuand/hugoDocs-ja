%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.ContainsAny
description: Reports whether the given string contains any character within the given set.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/strings/Contains
    - functions/strings/ContainsNonSpace
    - functions/strings/HasPrefix
    - functions/strings/HasSuffix
    - functions/collections/In
  returnType: bool
  signatures: [strings.ContainsAny STRING SET]
aliases: [/functions/strings.containsany]
---
@y
---
title: strings.ContainsAny
description: Reports whether the given string contains any character within the given set.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/strings/Contains
    - functions/strings/ContainsNonSpace
    - functions/strings/HasPrefix
    - functions/strings/HasSuffix
    - functions/collections/In
  returnType: bool
  signatures: [strings.ContainsAny STRING SET]
aliases: [/functions/strings.containsany]
---
@z

@x
```go-html-template
{{ strings.ContainsAny "Hugo" "gm" }} → true
```
@y
```go-html-template
{{ strings.ContainsAny "Hugo" "gm" }} → true
```
@z

@x
The check is case sensitive:
@y
The check is case sensitive:
@z

@x
```go-html-template
{{ strings.ContainsAny "Hugo" "Gm" }} → false
```
@y
```go-html-template
{{ strings.ContainsAny "Hugo" "Gm" }} → false
```
@z
