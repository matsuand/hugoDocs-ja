%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: with
description: Binds context (the dot) to the expression and executes the block if expression is truthy.
categories: []
keywords: []
@y
title: with
description: コンテキスト (ドット) を式にバインドして、その式が真値 (truthy) であればブロックを実行します。
categories: []
keywords: []
@z

@x
{{% include "functions/go-template/_common/truthy-falsy.md" %}}
@y
{{% include "functions/go-template/_common/truthy-falsy.md" %}}
@z

@x
```go-html-template
{{ $var := "foo" }}
{{ with $var }}
  {{ . }} → foo
{{ end }}
```
@y
```go-html-template
{{ $var := "foo" }}
{{ with $var }}
  {{ . }} → foo
{{ end }}
```
@z

@x
Use with the [`else`] statement:
@y
[`else`] ステートメントとともに利用した例です。
@z

@x
```go-html-template
{{ $var := "foo" }}
{{ with $var }}
  {{ . }} → foo
{{ else }}
  {{ print "var is falsy" }}
{{ end }}
```
@y
```go-html-template
{{ $var := "foo" }}
{{ with $var }}
  {{ . }} → foo
{{ else }}
  {{ print "var is falsy" }}
{{ end }}
```
@z

@x
Initialize a variable, scoped to the current block:
@y
変数を初期化して、そのスコープは現在のブロック内とします。
@z

@x
```go-html-template
{{ with $var := 42 }}
  {{ . }} → 42
  {{ $var }} → 42
{{ end }}
{{ $var }} → undefined
```
@y
```go-html-template
{{ with $var := 42 }}
  {{ . }} → 42
  {{ $var }} → 42
{{ end }}
{{ $var }} → undefined
```
@z

@x
## Understanding context
@y
## コンテキストへの理解 {#understanding-context}
@z

@x
At the top of a page template, the [context] (the dot) is a `Page` object. Inside of the `with` block, the context is bound to the value passed to the `with` statement.
@y
ページテンプレートの最上位において、[コンテキスト][context] (ドット) は `Page` オブジェクトのことです。
`with` ブロック内部でのコンテキストは、`with` ステートメントにおいて受け渡される値にバインドされます。
@z

@x
With this contrived example:
@y
以下のような例を見てみます。
@z

@x
```go-html-template
{{ with 42 }}
  {{ .Title }}
{{ end }}
```
@y
```go-html-template
{{ with 42 }}
  {{ .Title }}
{{ end }}
```
@z

@x
Hugo will throw an error:
@y
Hugo は以下のような例外をスローします。
@z

@x
    can't evaluate field Title in type int
@y
    can't evaluate field Title in type int
    (フィールド Title は int 型として評価できません)
@z

@x
The error occurs because we are trying to use the `.Title` method on an integer instead of a `Page` object. Inside of the `with` block, if we want to render the page title, we need to get the context passed into the template.
@y
ここでなぜエラーが発生したかと言えば、`.Title` メソッドを `Page` オブジェクトに対してではなく整数値に対して適用しようとしたからです。
`with` ブロック内部においてページタイトルをレンダリングしたいのであれば、コンテキストをテンプレートに対して受け渡さなければなりません。
@z

@x
{{% note %}}
Use the `$` to get the context passed into the template.
{{% /note %}}
@y
{{% note %}}
コンテキストをテンプレートに受け渡すには `$` を使います。
{{% /note %}}
@z

@x
This template will render the page title as desired:
@y
以下のテンプレートであれば、ページタイトルを正しくレンダリングしてくれます。
@z

@x
```go-html-template
{{ with 42 }}
  {{ $.Title }}
{{ end }}
```
@y
```go-html-template
{{ with 42 }}
  {{ $.Title }}
{{ end }}
```
@z

@x
{{% note %}}
Gaining a thorough understanding of context is critical for anyone writing template code.
{{% /note %}}
@y
{{% note %}}
コンテキストを完全に理解しておくことは、テンプレートコードを書くにあたっては極めて重要です。
{{% /note %}}
@z

@x
[context]: /getting-started/glossary/#context
@y
[context]: /getting-started/glossary/#context
@z

@x
{{% include "functions/go-template/_common/text-template.md" %}}
@y
{{% include "functions/go-template/_common/text-template.md" %}}
@z

% snip link...
