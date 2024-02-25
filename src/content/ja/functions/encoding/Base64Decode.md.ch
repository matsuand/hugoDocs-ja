%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: encoding.Base64Decode
description: Returns the base64 decoding of the given content.
categories: []
keywords: []
@y
title: encoding.Base64Decode
description: 指定された内容を base64 によりデコードして返します。
categories: []
keywords: []
@z

% snip code...

@x
Use the `base64Decode` function to decode responses from APIs. For example, the result of this call to GitHub's API contains the base64-encoded representation of the repository's README file:
@y
`base64Decode` 関数は API からのレスポンスとしてデコードを行います。
たとえばこの関数を使って GitHub API に対して、リポジトリ内の README ファイルの base64 エンコード内容を取得するものとします。
@z

% snip code...

@x
To retrieve and render the content:
@y
内容を抽出してレンダリングするには以下のようにします。
@z

% snip code...
