%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.ReplaceRE
description: Returns a copy of INPUT, replacing all occurrences of a regular expression with a replacement pattern.
categories: []
keywords: []
action:
  aliases: [replaceRE]
  related:
    - functions/strings/FindRE
    - functions/strings/FindRESubmatch
    - functions/strings/Replace
  returnType: string
  signatures: ['strings.ReplaceRE PATTERN REPLACEMENT INPUT [LIMIT]']
aliases: [/functions/replacere]
---
@y
---
title: strings.ReplaceRE
description: 入力文字列 INPUT の中の、置換パターンを用いた正規表現にマッチする文字列を、すべて置き換えた文字列のコピーを返します。
categories: []
keywords: []
action:
  aliases: [replaceRE]
  related:
    - functions/strings/FindRE
    - functions/strings/FindRESubmatch
    - functions/strings/Replace
  returnType: string
  signatures: ['strings.ReplaceRE PATTERN REPLACEMENT INPUT [LIMIT]']
aliases: [/functions/replacere]
---
@z

@x
{{% include "functions/_common/regular-expressions.md" %}}
@y
{{% include "functions/_common/regular-expressions.md" %}}
@z

@x
```go-html-template
{{ $s := "a-b--c---d" }}
{{ replaceRE `(-{2,})` "-" $s }} → a-b-c-d
```
@y
```go-html-template
{{ $s := "a-b--c---d" }}
{{ replaceRE `(-{2,})` "-" $s }} → a-b-c-d
```
@z

@x
Limit the number of replacements using the LIMIT argument:
@y
置き換え回数を制限するには `LIMIT` 引数を使います。
@z

@x
```go-html-template
{{ $s := "a-b--c---d" }}
{{ replaceRE `(-{2,})` "-" $s 1 }} → a-b-c---d
```
@y
```go-html-template
{{ $s := "a-b--c---d" }}
{{ replaceRE `(-{2,})` "-" $s 1 }} → a-b-c---d
```
@z

@x
Use `$1`, `$2`, etc. within the replacement string to insert the content of each capturing group within the regular expression:
@y
正規表現内においてグルーピングによって取得した内容は、置換文字列内にて `$1`, `$2` などを使って挿入することができます。
@z

@x
```go-html-template
{{ $s := "http://gohugo.io/docs" }}
{{ replaceRE "^https?://([^/]+).*" "$1" $s }} → gohugo.io
```
@y
```go-html-template
{{ $s := "http://gohugo.io/docs" }}
{{ replaceRE "^https?://([^/]+).*" "$1" $s }} → gohugo.io
```
@z

@x
{{% note %}}
You can write and test your regular expression using [regex101.com](https://regex101.com/). Be sure to select the Go flavor before you begin.
{{% /note %}}
@y
{{% note %}}
正規表現を書いてテストするものとして [regex101.com](https://regex101.com/) を利用することができます。
その際には flavor 欄から Go を選択して進めてください。
{{% /note %}}
@z

@x
[RE2]: https://github.com/google/re2/wiki/Syntax
[string literal]: https://go.dev/ref/spec#String_literals
@y
[RE2]: https://github.com/google/re2/wiki/Syntax
[string literal]: https://go.dev/ref/spec#String_literals
@z
