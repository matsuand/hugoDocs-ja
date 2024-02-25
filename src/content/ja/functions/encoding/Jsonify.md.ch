%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: encoding.Jsonify
description: Encodes the given object to JSON.
categories: []
keywords: []
action:
  aliases: [jsonify]
  returnType: template.HTML
  related:
    - functions/transform/Remarshal
    - functions/transform/Unmarshal
  signatures:
    - encoding.Jsonify [OPTIONS] INPUT
aliases: [/functions/jsonify]
---
@y
---
title: encoding.Jsonify
description: 指定されたオブジェクトを JSON にエンコードします。
categories: []
keywords: []
action:
  aliases: [jsonify]
  returnType: template.HTML
  related:
    - functions/transform/Remarshal
    - functions/transform/Unmarshal
  signatures:
    - encoding.Jsonify [OPTIONS] INPUT
aliases: [/functions/jsonify]
---
@z

@x
To customize the printing of the JSON, pass an options map as the first
argument. Supported options are "prefix" and "indent". Each JSON element in
the output will begin on a new line beginning with *prefix* followed by one or
more copies of *indent* according to the indentation nesting.
@y
JSON の出力をカスタマイズする場合は、第一引数にオプションのマップを受け渡します。
サポートされているオプションは "prefix" と "indent" です。
出力される各 JSON 要素は各行ごとに出力され、先頭にプリフィックス *prefix* がつけられます。
そこに続けて、インデントネストの深さに応じた分のインデント *indent* がつけられます。
@z

@x
```go-html-template
{{ dict "title" .Title "content" .Plain | jsonify }}
{{ dict "title" .Title "content" .Plain | jsonify (dict "indent" "  ") }}
{{ dict "title" .Title "content" .Plain | jsonify (dict "prefix" " " "indent" "  ") }}
```
@y
```go-html-template
{{ dict "title" .Title "content" .Plain | jsonify }}
{{ dict "title" .Title "content" .Plain | jsonify (dict "indent" "  ") }}
{{ dict "title" .Title "content" .Plain | jsonify (dict "prefix" " " "indent" "  ") }}
```
@z

@x
## Options
@y
## オプション {#options}
@z

@x
indent
: (`string`) Indentation to use. Default is "".
@y
indent
: (`string`) 指定するインデント。デフォルトは "" です。
@z

@x
prefix
: (`string`) Indentation prefix. Default is "".
@y
prefix
: (`string`) インデントのプリフィックス。デフォルトは "" です。
@z

@x
noHTMLEscape
: (`bool`) Disable escaping of problematic HTML characters inside JSON quoted strings. The default behavior is to escape `&`, `<`, and `>` to `\u0026`, `\u003c`, and `\u003e` to avoid certain safety problems that can arise when embedding JSON in HTML. Default is `false`.
@y
noHTMLEscape
: (`bool`) JSON の引用符内の文字列において、HTML 上問題となる文字をエスケープしないことを指定します。
デフォルトの動作は `&`、`<`、`>` をそれぞれ `\u0026`、`\u003c`、`\u003e` にエスケープして、HTML 内に JSON を埋め込んだ際の安全上の問題を回避するものとしています。
デフォルトは `false` です。
@z
