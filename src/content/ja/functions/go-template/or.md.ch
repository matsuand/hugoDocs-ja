%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: or
description: Returns the first truthy argument. If all arguments are falsy, returns the last argument.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/and
    - functions/go-template/not
  returnType: any
  signatures: [or VALUE...]
---
@y
---
title: or
description: 最初に現れる真値 (truthy) の引数を返します。引数がすべて偽値 (falsy) である場合は最後の引数を返します。
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/and
    - functions/go-template/not
  returnType: any
  signatures: [or VALUE...]
---
@z

@x
{{% include "functions/go-template/_common/truthy-falsy.md" %}}
@y
{{% include "functions/go-template/_common/truthy-falsy.md" %}}
@z

@x
```go-html-template
{{ or 0 1 2 }} → 1
{{ or false "a" 1 }} → a
{{ or 0 true "a" }} → true
@y
```go-html-template
{{ or 0 1 2 }} → 1
{{ or false "a" 1 }} → a
{{ or 0 true "a" }} → true
@z

@x
{{ or false "" 0 }} → 0
{{ or 0 "" false }} → false
```
@y
{{ or false "" 0 }} → 0
{{ or 0 "" false }} → false
```
@z

@x
{{% include "functions/go-template/_common/text-template.md" %}}
@y
{{% include "functions/go-template/_common/text-template.md" %}}
@z
