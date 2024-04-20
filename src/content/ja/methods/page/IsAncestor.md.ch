%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: IsAncestor
description: Reports whether PAGE1 is an ancestor of PAGE2.
categories: []
keywords: []
@y
title: IsAncestor
description: PAGE1 が PAGE2 の親ページであるかどうかを返します。
categories: []
keywords: []
@z

@x
{{% include "methods/page/_common/definition-of-section.md" %}}
@y
{{% include "methods/page/_common/definition-of-section.md" %}}
@z

@x
With this content structure:
@y
以下のコンテント構造があるとします。
@z

% snip text...

@x
When rendering the "auctions" page:
@y
"auctions" ページのレンダリング処理においては以下のようになります。
@z

% snip code...

@x
In the examples above we are coding defensively using the [`with`] statement, returning nothing if the page does not exist. By adding an [`else`] clause we can do some error reporting:
@y
上の例では [`with`] 命令を使って安全なコーディングを行っています。
こうしておくと、ページが存在しない場合には何も返しません。
[`else`] 節を加えると、エラー処理を行うことができます。
@z

% snip code...

@x
## Understanding context
@y
## コンテントに対する理解 {#understanding-context}
@z

@x
Inside of the `with` block, the [context] (the dot) is the section `Page` object, not the `Page` object passed into the template. If we were to use this syntax:
@y
`with` ブロック内での [コンテキスト][context] (ドット) は、そのセクションの `Page` オブジェクトであって、テンプレートに受け渡された `Page` オブジェクトではありません。
以下の構文を考えます。
@z

% snip code...

@x
The result would be wrong when rendering the "auction-1" page because we are comparing the section page to itself.
@y
上のコードが "auction-1" ページのレンダリング処理である場合、その結果は誤っていることになります。
というのも、セクションページとそれ自体を比較していることになるからです。
@z

@x note
Use the `$` to get the context passed into the template.
@y
テンプレートに受け渡されたコンテキストを得るには `$` を利用します。
@z

% snip code...

@x note
Gaining a thorough understanding of context is critical for anyone writing template code.
@y
コンテントについて充分に理解しておくことは、テンプレートコード生成のためには極めて重要なことです。
@z

% snip links...
