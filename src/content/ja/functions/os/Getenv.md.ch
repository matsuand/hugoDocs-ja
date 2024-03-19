%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: os.Getenv
description: Returns the value of an environment variable, or an empty string if the environment variable is not set.
categories: []
keywords: []
@y
title: os.Getenv
description: 環境変数の値を返します。環境変数が設定されていなかった場合は空文字列を返します。
categories: []
keywords: []
@z

@x
## Security
@y
## セキュリティ {#security}
@z

@x
By default, when using the `os.Getenv` function Hugo allows access to:
@y
`os.Getenv` の利用にあたっては、デフォルトとして Hugo は以下のアクセスのみを許可します。
@z

@x
- The `CI` environment variable
- Any environment variable beginning with `HUGO_`
@y
- `CI` 環境変数
- `HUGO_` で始まる環境変数
@z

@x
To access other environment variables, adjust your site configuration. For example, to allow access to the `HOME` and `USER` environment variables:
@y
上記以外の環境変数にアクセスするなら、サイト設定を調整します。
たとえば環境変数 `HOME` および `USER` へのアクセスを行うには以下とします。
@z

% snip code...

@x
Read more about Hugo's [security policy].
@y
詳しくは [セキュリティポリシー][security policy] を参照してください。
@z

% snip link...

@x
## Examples
@y
## 利用例 {#examples}
@z

% snip code...

@x
You can pass values when building your site:
@y
サイトのビルド時には環境変数を受け渡すことができます。
@z

% snip code...

@x
OR
@y
または
@z

% snip code...

@x
And then retrieve the values within a template:
@y
そしてその値を取得するには、テンプレート内から以下のようにします。
@z

% snip code...
