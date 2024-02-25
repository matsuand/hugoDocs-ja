%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: not
description: Returns the boolean negation of its single argument.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/and
    - functions/go-template/or
  returnType: bool
  signatures: [not VALUE]
---
@y
---
title: not
description: 一つの引数に対して、ブール値の否定を返します。
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/and
    - functions/go-template/or
  returnType: bool
  signatures: [not VALUE]
---
@z

@x
Unlike the `and` and `or` operators, the `not` operator always returns a boolean value.
@y
`and` オペレーターや `or` オペレーターの場合とは違い、`not` オペレーターは常にブール値を返します。
@z

@x
```go-html-template
{{ not true }} → false
{{ not false }} → true
@y
```go-html-template
{{ not true }} → false
{{ not false }} → true
@z

@x
{{ not 1 }} → false
{{ not 0 }} → true
@y
{{ not 1 }} → false
{{ not 0 }} → true
@z

@x
{{ not "x" }} → false
{{ not "" }} → true
```
@y
{{ not "x" }} → false
{{ not "" }} → true
```
@z

@x
Use the `not` operator, twice in succession, to cast any value to a boolean value. For example:
@y
`not`オペレーターを続けて二回用いることで、どのような値でもブール値にキャストすることができます。
たとえば以下のとおりです。
@z

@x
```go-html-template
{{ 42 | not | not }} → true
{{ "" | not | not }} → false
```
@y
```go-html-template
{{ 42 | not | not }} → true
{{ "" | not | not }} → false
```
@z

@x
{{% include "functions/go-template/_common/text-template.md" %}}
@y
{{% include "functions/go-template/_common/text-template.md" %}}
@z
