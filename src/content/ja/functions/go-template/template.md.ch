%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: template
description: Executes the given template, optionally passing context.
categories: []
keywords: []
@y
title: template
description: 指定されたテンプレートを実行します。任意引数としてコンテキストを受け付けます。
categories: []
keywords: []
@z

@x
Use the `template` function to execute [embedded templates]. For example:
@y
`template` 関数を使って [埋め込みテンプレート][embedded templates] (internal template) を実行します。
たとえば以下のとおりです。
@z

% snip code...

@x
You can also use the `template` function to execute a defined template:
@y
`template` 関数は、定義済みテンプレートの実行に用いることもできます。
@z

% snip code...

@x
The example above can be rewritten using an [inline partial] template:
@y
上の例は、[インライン部分テンプレート][inline partial] を使って、以下のように書き換えることもできます。
@z

% snip code...
% snip include...
% snip links...
