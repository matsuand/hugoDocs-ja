%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: os.FileExists
description: Reports whether the file or directory exists.
categories: []
keywords: []
action:
  aliases: [fileExists]
  related:
    - functions/os/Getenv
    - functions/os/ReadDir
    - functions/os/ReadFile
    - functions/os/Stat
  returnType: bool
  signatures: [os.FileExists PATH]
aliases: [/functions/fileexists]
---
@y
---
title: os.FileExists
description: ファイルまたはディレクトリが存在するかどうかを返します。
categories: []
keywords: []
action:
  aliases: [fileExists]
  related:
    - functions/os/Getenv
    - functions/os/ReadDir
    - functions/os/ReadFile
    - functions/os/Stat
  returnType: bool
  signatures: [os.FileExists PATH]
aliases: [/functions/fileexists]
---
@z

@x
The `os.FileExists` function attempts to resolve the path relative to the root of your project directory. If a matching file or directory is not found, it will attempt to resolve the path relative to the [`contentDir`](/getting-started/configuration#contentdir). A leading path separator (`/`) is optional.
@y
`os.FileExists` 関数は、指定されたパスをプロジェクトのルートディレクトリからの相対パスとして解釈します。
マッチするファイルまたはディレクトリが見つからなかった場合、そのパスは [`contentDir`](/getting-started/configuration#contentdir) からの相対パスとして解釈します。
先頭にパスセパレーター (`/`) をつけるかどうかは任意です。
@z

@x
With this directory structure:
@y
以下のようなディレクトリ構造があったとします。
@z

@x
```text
content/
├── about.md
├── contact.md
└── news/
    ├── article-1.md
    └── article-2.md
```
@y
```text
content/
├── about.md
├── contact.md
└── news/
    ├── article-1.md
    └── article-2.md
```
@z

@x
The function returns these values:
@y
本関数はそれぞれ以下のような値を返します。
@z

@x
```go-html-template
{{ fileExists "content" }} → true
{{ fileExists "content/news" }} → true
{{ fileExists "content/news/article-1" }} → false
{{ fileExists "content/news/article-1.md" }} → true
{{ fileExists "news" }} → true
{{ fileExists "news/article-1" }} → false
{{ fileExists "news/article-1.md" }} → true
```
@y
```go-html-template
{{ fileExists "content" }} → true
{{ fileExists "content/news" }} → true
{{ fileExists "content/news/article-1" }} → false
{{ fileExists "content/news/article-1.md" }} → true
{{ fileExists "news" }} → true
{{ fileExists "news/article-1" }} → false
{{ fileExists "news/article-1.md" }} → true
```
@z
