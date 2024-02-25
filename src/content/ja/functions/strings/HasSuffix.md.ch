%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.HasSuffix
description: Reports whether the given string ends with the given suffix.
categories: []
keywords: []
action:
  aliases: [hasSuffix]
  related:
    - functions/strings/Contains
    - functions/strings/ContainsAny
    - functions/strings/ContainsNonSpace
    - functions/strings/HasPrefix
    - functions/collections/In
  returnType: bool
  signatures: [strings.HasSuffix STRING SUFFIX]
aliases: [/functions/hassuffix,/functions/strings/hassuffix]
---
@y
---
title: strings.HasSuffix
description: 指定された文字列が指定されたサフィックスで終わるかどうかを返します。
categories: []
keywords: []
action:
  aliases: [hasSuffix]
  related:
    - functions/strings/Contains
    - functions/strings/ContainsAny
    - functions/strings/ContainsNonSpace
    - functions/strings/HasPrefix
    - functions/collections/In
  returnType: bool
  signatures: [strings.HasSuffix STRING SUFFIX]
aliases: [/functions/hassuffix,/functions/strings/hassuffix]
---
@z

@x
```go-html-template
{{ hasSuffix "Hugo" "go" }} → true
```
@y
```go-html-template
{{ hasSuffix "Hugo" "go" }} → true
```
@z
