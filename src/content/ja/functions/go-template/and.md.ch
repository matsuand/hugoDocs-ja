%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: and
description: Returns the first falsy argument. If all arguments are truthy, returns the last argument.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/not
    - functions/go-template/or
  returnType: any
  signatures: [and VALUE...]
---
@y
---
title: and
description: 最初に現れる偽値 (falsy) の引数を返します。引数がすべて真値 (truthy) である場合は最後の引数を返します。
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/not
    - functions/go-template/or
  returnType: any
  signatures: [and VALUE...]
---
@z

@x
{{% include "functions/go-template/_common/truthy-falsy.md" %}}
@y
{{% include "functions/go-template/_common/truthy-falsy.md" %}}
@z

@x
```go-html-template
{{ and 1 0 "" }} → 0 (int)
{{ and 1 false 0 }} → false (bool)
@y
```go-html-template
{{ and 1 0 "" }} → 0 (int)
{{ and 1 false 0 }} → false (bool)
@z

@x
{{ and 1 2 3 }} → 3 (int)
{{ and "a" "b" "c" }} → c (string)
{{ and "a" 1 true }} → true (bool)
```
@y
{{ and 1 2 3 }} → 3 (int)
{{ and "a" "b" "c" }} → c (string)
{{ and "a" 1 true }} → true (bool)
```
@z

@x
{{% include "functions/go-template/_common/text-template.md" %}}
@y
{{% include "functions/go-template/_common/text-template.md" %}}
@z
