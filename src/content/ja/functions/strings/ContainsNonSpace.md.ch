%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.ContainsNonSpace
description: Reports whether the given string contains any non-space characters as defined by Unicode's White Space property.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/strings/Contains
    - functions/strings/ContainsAny
    - functions/strings/HasPrefix
    - functions/strings/HasSuffix
    - functions/collections/In
  returnType: bool
  signatures: [strings.ContainsNonSpace STRING]
aliases: [/functions/strings.containsnonspace]
---
@y
---
title: strings.ContainsNonSpace
description: Reports whether the given string contains any non-space characters as defined by Unicode's White Space property.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/strings/Contains
    - functions/strings/ContainsAny
    - functions/strings/HasPrefix
    - functions/strings/HasSuffix
    - functions/collections/In
  returnType: bool
  signatures: [strings.ContainsNonSpace STRING]
aliases: [/functions/strings.containsnonspace]
---
@z

@x
{{< new-in 0.111.0 >}}
@y
{{< new-in 0.111.0 >}}
@z

@x
```go-html-template
{{ strings.ContainsNonSpace "\n" }} → false
{{ strings.ContainsNonSpace " " }} → false
{{ strings.ContainsNonSpace "\n abc" }} → true
```
@y
```go-html-template
{{ strings.ContainsNonSpace "\n" }} → false
{{ strings.ContainsNonSpace " " }} → false
{{ strings.ContainsNonSpace "\n abc" }} → true
```
@z

@x
Common whitespace characters include:
@y
Common whitespace characters include:
@z

@x
```text
'\t', '\n', '\v', '\f', '\r', ' '
```
@y
```text
'\t', '\n', '\v', '\f', '\r', ' '
```
@z

@x
See the [Unicode Character Database] for a complete list.
@y
See the [Unicode Character Database] for a complete list.
@z

@x
[Unicode Character Database]: https://www.unicode.org/Public/UCD/latest/ucd/PropList.txt
@y
[Unicode Character Database]: https://www.unicode.org/Public/UCD/latest/ucd/PropList.txt
@z
