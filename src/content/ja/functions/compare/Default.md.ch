%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: compare.Default
description: Returns the second argument if set, else the first argument.
keywords: []
@y
title: compare.Default
description: 第二引数があればそれを返し、なければ第一引数を返します。
keywords: []
@z

@x
The `default` function returns the second argument if set, else the first argument.
@y
`default` 関数は、第二引数があればそれを返し、なければ第一引数を返します。
@z

@x
{{% note %}}
When the second argument is the boolean `false` value, the `default` function returns `false`. All _other_ falsy values are considered unset.

{{% include "functions/go-template/_common/truthy-falsy.md" %}}

To set a default value based on truthiness, use the [`or`] operator instead.

[`or`]: /functions/go-template/or/
{{% /note %}}
@y
{{% note %}}
第二引数がブール値の `false` である場合、`default` 関数は `false` を返します。
これ以外の false らしき値は、設定されていないものとして扱われます。

{{% include "functions/go-template/_common/truthy-falsy.md" %}}

真偽値に基づいてデフォルト値を設定する場合には、この関数ではなく [`or`] オペレーターを用いてください。

[`or`]: /functions/go-template/or/
{{% /note %}}
@z

@x
The `default` function returns the second argument if set:
@y
`default` 関数は、第二引数が与えられていればそれを返します。
@z

@x
```go-html-template
{{ default 42 1 }} → 1
{{ default 42 "foo" }} → foo
{{ default 42 (dict "k" "v") }} → map[k:v]
{{ default 42 (slice "a" "b") }} → [a b]
{{ default 42 true }} → true
@y
```go-html-template
{{ default 42 1 }} → 1
{{ default 42 "foo" }} → foo
{{ default 42 (dict "k" "v") }} → map[k:v]
{{ default 42 (slice "a" "b") }} → [a b]
{{ default 42 true }} → true
@z

@x
<!-- As noted above, the boolean "false" is considered set -->
{{ default 42 false }} → false
```
@y
<!-- 上で説明したように、ブール値 "false" は設定されているものとして扱われます。 -->
{{ default 42 false }} → false
```
@z

@x
The `default` function returns the first argument if the second argument is not set:
@y
`default` 関数に第二引数が与えられなかった場合、第一引数を返します。
@z

@x
```go-html-template
{{ default 42 0 }} → 42
{{ default 42 "" }} → 42
{{ default 42 dict }} → 42
{{ default 42 slice }} → 42
{{ default 42 <nil> }} → 42
```
@y
```go-html-template
{{ default 42 0 }} → 42
{{ default 42 "" }} → 42
{{ default 42 dict }} → 42
{{ default 42 slice }} → 42
{{ default 42 <nil> }} → 42
```
@z
