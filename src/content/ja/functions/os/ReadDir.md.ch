%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: os.ReadDir
description: Returns an array of FileInfo structures sorted by file name, one element for each directory entry.
categories: []
keywords: []
action:
  aliases: [readDir]
  related:
    - functions/os/FileExists
    - functions/os/Getenv
    - functions/os/ReadFile
    - functions/os/Stat
  returnType: os.FileInfo
  signatures: [os.ReadDir PATH]
aliases: [/functions/readdir]
---
@y
---
title: os.ReadDir
description: FileInfo 構造体をファイル名順に収容した配列を返します。個々の要素には各ディレクトリエントリーが含まれます。
categories: []
keywords: []
action:
  aliases: [readDir]
  related:
    - functions/os/FileExists
    - functions/os/Getenv
    - functions/os/ReadFile
    - functions/os/Stat
  returnType: os.FileInfo
  signatures: [os.ReadDir PATH]
aliases: [/functions/readdir]
---
@z

@x
The `os.ReadDir` function resolves the path relative to the root of your project directory. A leading path separator (`/`) is optional.
@y
`os.ReadDir` 関数は、指定されたパスをプロジェクトのルートディレクトリからの相対パスとして解釈します。
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
This template code:
@y
テンプレートコードを以下とします。
@z

@x
```go-html-template
{{ range readDir "content" }}
  {{ .Name }} → {{ .IsDir }}
{{ end }}
```
@y
```go-html-template
{{ range readDir "content" }}
  {{ .Name }} → {{ .IsDir }}
{{ end }}
```
@z

@x
Produces:
@y
処理結果は以下となります。
@z

@x
```html
about.md → false
contact.md → false
news → true
```
@y
```html
about.md → false
contact.md → false
news → true
```
@z

@x
Note that `os.ReadDir` is not recursive.
@y
なお `os.ReadDir` は再帰的処理は行いません。
@z

@x
Details of the `FileInfo` structure are available in the [Go documentation](https://pkg.go.dev/io/fs#FileInfo).
@y
構造体 `FileInfo` についての詳細は [Go ドキュメント](https://pkg.go.dev/io/fs#FileInfo) に説明されています。
@z
