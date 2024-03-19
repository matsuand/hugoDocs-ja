%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: "hugo mod"
slug: hugo_mod
url: /commands/hugo_mod/
---
## hugo mod
@y
---
title: "hugo mod"
slug: hugo_mod
url: /commands/hugo_mod/
---
## hugo mod
@z

@x
Various Hugo Modules helpers.
@y
Various Hugo Modules helpers.
@z

@x
### Synopsis
@y
### 概要 {#synopsis}
@z

@x
Various helpers to help manage the modules in your project's dependency graph.
Most operations here requires a Go version installed on your system (>= Go 1.12) and the relevant VCS client (typically Git).
This is not needed if you only operate on modules inside /themes or if you have vendored them via "hugo mod vendor".
@y
Various helpers to help manage the modules in your project's dependency graph.
Most operations here requires a Go version installed on your system (>= Go 1.12) and the relevant VCS client (typically Git).
This is not needed if you only operate on modules inside /themes or if you have vendored them via "hugo mod vendor".
@z

@x
Note that Hugo will always start out by resolving the components defined in the site
configuration, provided by a _vendor directory (if no --ignoreVendorPaths flag provided),
Go Modules, or a folder inside the themes directory, in that order.
@y
Note that Hugo will always start out by resolving the components defined in the site
configuration, provided by a _vendor directory (if no --ignoreVendorPaths flag provided),
Go Modules, or a folder inside the themes directory, in that order.
@z

@x
See https://gohugo.io/hugo-modules/ for more information.
@y
See https://gohugo.io/hugo-modules/ for more information.
@z

@x
### Options
@y
### オプション {#options}
@z

@x
```
  -h, --help   help for mod
```
@y
```
  -h, --help   help for mod
```
@z

@x
### Options inherited from parent commands
@y
### Options inherited from parent commands
@z

@x
      --clock string               set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
@y
      --clock string               Hugo が用いる日時を指定します。--clock 2021-11-06T22:30:00.00+09:00
@z
@x
      --config string              config file (default is hugo.yaml|json|toml)
@y
      --config string              設定ファイルを指定します。 (デフォルトは hugo.yaml|json|toml)
@z
@x
      --configDir string           config dir (default "config")
@y
      --configDir string           設定ディレクトリを指定します。 (デフォルトは "config")
@z
@x
      --debug                      debug output
@y
      --debug                      デバッグ出力を行います。
@z
@x
  -d, --destination string         filesystem path to write files to
@y
  -d, --destination string         ファイル出力を行うパスを指定します。
@z
@x
  -e, --environment string         build environment
@y
  -e, --environment string         ビルド環境を指定します。
@z
@x
      --ignoreVendorPaths string   ignores any _vendor for module paths matching the given Glob pattern
@y
      --ignoreVendorPaths string   指定 Glob パターンにマッチするモジュールパスを _vendor として無視します。
@z
@x
      --logLevel string            log level (debug|info|warn|error)
@y
      --logLevel string            ログレベルを指定します。 (debug|info|warn|error)
@z
@x
      --quiet                      build in quiet mode
@y
      --quiet                      出力抑制モード (quite mode) によりビルドを行います。
@z
@x
      --renderToMemory             render to memory (mostly useful when running the server)
@y
      --renderToMemory             メモリーにレンダーします。 (サーバー起動時に有用)
@z
@x
  -s, --source string              filesystem path to read files relative from
@y
  -s, --source string              ファイル入力元を相対パスで指定します。
@z
@x
      --themesDir string           filesystem path to themes directory
@y
      --themesDir string           テーマディレクトリのパスを指定します。
@z
@x
  -v, --verbose                    verbose output
@y
  -v, --verbose                    詳細出力を行います。
@z

@x
### SEE ALSO
@y
### SEE ALSO
@z

@x
* [hugo](/commands/hugo/)	 - hugo builds your site
* [hugo mod clean](/commands/hugo_mod_clean/)	 - Delete the Hugo Module cache for the current project.
* [hugo mod get](/commands/hugo_mod_get/)	 - Resolves dependencies in your current Hugo Project.
* [hugo mod graph](/commands/hugo_mod_graph/)	 - Print a module dependency graph.
* [hugo mod init](/commands/hugo_mod_init/)	 - Initialize this project as a Hugo Module.
* [hugo mod npm](/commands/hugo_mod_npm/)	 - Various npm helpers.
* [hugo mod tidy](/commands/hugo_mod_tidy/)	 - Remove unused entries in go.mod and go.sum.
* [hugo mod vendor](/commands/hugo_mod_vendor/)	 - Vendor all module dependencies into the _vendor directory.
* [hugo mod verify](/commands/hugo_mod_verify/)	 - Verify dependencies.
@y
* [hugo](/commands/hugo/)	 - hugo builds your site
* [hugo mod clean](/commands/hugo_mod_clean/)	 - Delete the Hugo Module cache for the current project.
* [hugo mod get](/commands/hugo_mod_get/)	 - Resolves dependencies in your current Hugo Project.
* [hugo mod graph](/commands/hugo_mod_graph/)	 - Print a module dependency graph.
* [hugo mod init](/commands/hugo_mod_init/)	 - Initialize this project as a Hugo Module.
* [hugo mod npm](/commands/hugo_mod_npm/)	 - Various npm helpers.
* [hugo mod tidy](/commands/hugo_mod_tidy/)	 - Remove unused entries in go.mod and go.sum.
* [hugo mod vendor](/commands/hugo_mod_vendor/)	 - Vendor all module dependencies into the _vendor directory.
* [hugo mod verify](/commands/hugo_mod_verify/)	 - Verify dependencies.
@z
