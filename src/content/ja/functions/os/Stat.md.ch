%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: os.Stat
description: Returns a FileInfo structure describing a file or directory.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/os/FileExists
    - functions/os/Getenv
    - functions/os/ReadDir
    - functions/os/ReadFile
  returnType: os.FileInfo
  signatures: [os.Stat PATH]
aliases: [/functions/os.stat]
---
@y
---
title: os.Stat
description: ファイルまたはディレクトリを表現する FileInfo 構造体を返します。
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/os/FileExists
    - functions/os/Getenv
    - functions/os/ReadDir
    - functions/os/ReadFile
  returnType: os.FileInfo
  signatures: [os.Stat PATH]
aliases: [/functions/os.stat]
---
@z

@x
The `os.Stat` function attempts to resolve the path relative to the root of your project directory. If a matching file or directory is not found, it will attempt to resolve the path relative to the [`contentDir`](/getting-started/configuration#contentdir). A leading path separator (`/`) is optional.
@y
`os.Stat` 関数は、指定されたパスをプロジェクトのルートディレクトリからの相対パスとして解釈します。
マッチするファイルまたはディレクトリが見つからなかった場合、そのパスは [`contentDir`](/getting-started/configuration#contentdir) からの相対パスとして解釈します。
先頭にパスセパレーター (`/`) をつけるかどうかは任意です。
@z

@x
```go-html-template
{{ $f := os.Stat "README.md" }}
{{ $f.IsDir }}    → false (bool)
{{ $f.ModTime }}  → 2021-11-25 10:06:49.315429236 -0800 PST (time.Time)
{{ $f.Name }}     → README.md (string)
{{ $f.Size }}     → 241 (int64)
@y
```go-html-template
{{ $f := os.Stat "README.md" }}
{{ $f.IsDir }}    → false (bool)
{{ $f.ModTime }}  → 2021-11-25 10:06:49.315429236 -0800 PST (time.Time)
{{ $f.Name }}     → README.md (string)
{{ $f.Size }}     → 241 (int64)
@z

@x
{{ $d := os.Stat "content" }}
{{ $d.IsDir }}    → true (bool)
```
@y
{{ $d := os.Stat "content" }}
{{ $d.IsDir }}    → true (bool)
```
@z

@x
Details of the `FileInfo` structure are available in the [Go documentation](https://pkg.go.dev/io/fs#FileInfo).
@y
構造体 `FileInfo` についての詳細は [Go ドキュメント](https://pkg.go.dev/io/fs#FileInfo) に説明されています。
@z
