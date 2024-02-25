%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: compare.Conditional
description: Returns one of two arguments depending on the value of the control argument.
categories: []
keywords: []
action:
  aliases: [cond]
  related:
    - functions/compare/Default
  returnType: any
  signatures: [compare.Conditional CONTROL ARG1 ARG2]
aliases: [/functions/cond]
---
@y
---
title: compare.Conditional
description: 制御を行う引数の値に応じて、2 つの引数のうちのいずれかを返します。
categories: []
keywords: []
action:
  aliases: [cond]
  related:
    - functions/compare/Default
  returnType: any
  signatures: [compare.Conditional CONTROL ARG1 ARG2]
aliases: [/functions/cond]
---
@z

@x
The CONTROL argument is a boolean value that indicates whether the function should return ARG1 or ARG2. If CONTROL is `true`, the function returns ARG1. Otherwise, the function returns ARG2.
@y
引数 CONTROL はブール値であり、この関数の戻り値を ARG1 または ARG2 のいずれかにします。
CONTROL が `true` であるとき、この関数は ARG1 を返します。
そうでないとき ARG2 を返します。
@z

@x
```go-html-template
{{ $qty := 42 }}
{{ cond (le $qty 3) "few" "many" }} → many
```
@y
```go-html-template
{{ $qty := 42 }}
{{ cond (le $qty 3) "few" "many" }} → many
```
@z

@x
The CONTROL argument must be either `true` or `false`. To cast a non-boolean value to boolean, pass it through the `not` operator twice.
@y
引数 CONTROL は `true` または `false` のいずれかとします。
非ブール値をキャストしてブール値にする場合は、`not` オペレーターを二回適用します。
@z

@x
```go-html-template
{{ cond (42 | not | not) "truthy" "falsy" }} → truthy
{{ cond ("" | not | not) "truthy" "falsy" }} → falsy
```
@y
```go-html-template
{{ cond (42 | not | not) "truthy" "falsy" }} → truthy
{{ cond ("" | not | not) "truthy" "falsy" }} → falsy
```
@z

@x
{{% note %}}
Unlike [ternary operators] in other languages, the `cond` function does not perform [short-circuit evaluation]. The function evaluates both ARG1 and ARG2, regardless of the CONTROL value.
@y
{{% note %}}
他言語における [ternary オペレーター][ternary operators] とは違って、`cond` 関数は [短絡評価][short-circuit evaluation] (short-circuit evaluation) は行いません。
つまりこの関数は CONTROL の値がどのようなものであっても、引数 ARG1 と ARG2 の両方を評価します。
@z

@x
[short-circuit evaluation]: https://en.wikipedia.org/wiki/Short-circuit_evaluation
[ternary operators]: https://en.wikipedia.org/wiki/Ternary_conditional_operator
{{% /note %}}
@y
[short-circuit evaluation]: https://en.wikipedia.org/wiki/Short-circuit_evaluation
[ternary operators]: https://en.wikipedia.org/wiki/Ternary_conditional_operator
{{% /note %}}
@z

@x
Due to the absence of short-circuit evaluation, these examples throw an error:
@y
短絡評価を行わないことから、以下に示す例ではエラーがスローされます。
@z

@x
```go-html-template
{{ cond true "true" (div 1 0) }}
{{ cond false (div 1 0) "false" }}
```
@y
```go-html-template
{{ cond true "true" (div 1 0) }}
{{ cond false (div 1 0) "false" }}
```
@z
