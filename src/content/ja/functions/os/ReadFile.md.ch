%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: os.ReadFile
description: Returns the contents of a file.
categories: []
keywords: []
action:
  aliases: [readFile]
  related:
    - functions/os/FileExists
    - functions/os/Getenv
    - functions/os/ReadDir
    - functions/os/Stat
  returnType: string
  signatures: [os.ReadFile PATH]
aliases: [/functions/readfile]
---
@y
---
title: os.ReadFile
description: ファイル内容を返します。
categories: []
keywords: []
action:
  aliases: [readFile]
  related:
    - functions/os/FileExists
    - functions/os/Getenv
    - functions/os/ReadDir
    - functions/os/Stat
  returnType: string
  signatures: [os.ReadFile PATH]
aliases: [/functions/readfile]
---
@z

@x
The `os.ReadFile` function attempts to resolve the path relative to the root of your project directory. If a matching file is not found, it will attempt to resolve the path relative to the [`contentDir`](/getting-started/configuration#contentdir). A leading path separator (`/`) is optional.
@y
`os.ReadFile` 関数は、指定されたパスをプロジェクトのルートディレクトリからの相対パスとして解釈します。
マッチするファイルまたはディレクトリが見つからなかった場合、そのパスは [`contentDir`](/getting-started/configuration#contentdir) からの相対パスとして解釈します。
先頭にパスセパレーター (`/`) をつけるかどうかは任意です。
@z

@x
With a file named README.md in the root of your project directory:
@y
プロジェクトルート配下に README.md というファイルがあるとします。
@z

@x
```text
This is **bold** text.
```
@y
```text
これは **ボールド体** のテキストです。
```
@z

@x
This template code:
@y
テンプレートコードを以下とします。
@z

@x
```go-html-template
{{ readFile "README.md" }}
```
@y
```go-html-template
{{ readFile "README.md" }}
```
@z

@x
Produces:
@y
処理結果は以下となります。
@z

@x
```html
This is **bold** text.
```
@y
```html
これは **ボールド体** のテキストです。
```
@z

@x
Note that `os.ReadFile` returns raw (uninterpreted) content.
@y
なお `os.ReadFile` は生の (処理されていない) ファイル内容を返します。
@z
