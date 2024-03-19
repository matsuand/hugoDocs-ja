%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: collections.IsSet
description: Reports whether the key exists within the collection.
categories: []
keywords: []
@y
title: collections.IsSet
description: コレクション内にキーが存在するかどうかを返します。
categories: []
keywords: []
@z

@x
For example, consider this site configuration:
@y
例えば以下のようなサイト設定があったとします。
@z

% snip code...

@x
It the value of `showHeroImage` is `true`, we can detect that it exists using either `if` or `with`:
@y
`showHeroImage` の値が `true` であるとき、それが存在することは `if` または `with` を使って確認することができます。
@z

% snip code...

@x
But if the value of `showHeroImage` is `false`, we can't use either `if` or `with` to detect its existence. In this case, you must use the `isset` function:
@y
しかし `showHeroImage` が `false` であるときは、`if` や `with` を使ってもその存在を確認することができません。
こういった場合には `isset` 関数を用いなければなりません。
@z

% snip code...

@x
{{% note %}}
When using the `isset` function you must reference the key using lower case. See the previous example.
{{% /note %}}
@y
{{% note %}}
`isset` 関数を用いるにあたって、参照のために用いるキーは小文字としなければなりません。
上の例を確認してください。
{{% /note %}}
@z
