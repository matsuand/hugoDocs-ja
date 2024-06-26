%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: "hugo mod get"
slug: hugo_mod_get
url: /commands/hugo_mod_get/
@y
title: "hugo mod get"
slug: hugo_mod_get
url: /commands/hugo_mod_get/
@z

@x
## hugo mod get
@y
## hugo mod get
@z

@x
Resolves dependencies in your current Hugo Project.
@y
Resolves dependencies in your current Hugo Project.
@z

@x
### Synopsis
@y
### 概要 {#synopsis}
@z

@x
Resolves dependencies in your current Hugo Project.
@y
Resolves dependencies in your current Hugo Project.
@z

@x
Some examples:
@y
Some examples:
@z

@x
Install the latest version possible for a given module:
@y
Install the latest version possible for a given module:
@z

@x
    hugo mod get github.com/gohugoio/testshortcodes
@y
    hugo mod get github.com/gohugoio/testshortcodes
@z

@x
Install a specific version:
@y
Install a specific version:
@z

@x
    hugo mod get github.com/gohugoio/testshortcodes@v0.3.0
@y
    hugo mod get github.com/gohugoio/testshortcodes@v0.3.0
@z

@x
Install the latest versions of all direct module dependencies:
@y
Install the latest versions of all direct module dependencies:
@z

@x
    hugo mod get
    hugo mod get ./... (recursive)
@y
    hugo mod get
    hugo mod get ./... (recursive)
@z

@x
Install the latest versions of all module dependencies (direct and indirect):
@y
Install the latest versions of all module dependencies (direct and indirect):
@z

@x
    hugo mod get -u
    hugo mod get -u ./... (recursive)
@y
    hugo mod get -u
    hugo mod get -u ./... (recursive)
@z

@x
Run "go help get" for more information. All flags available for "go get" is also relevant here.
@y
Run "go help get" for more information. All flags available for "go get" is also relevant here.
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
```
hugo mod get [flags] [args]
```
@y
```
hugo mod get [flags] [args]
```
@z

@x
### Options
@y
### オプション {#options}
@z

@x
```
  -h, --help   help for get
```
@y
```
  -h, --help   help for get
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
  -M, --renderToMemory             render to memory (mostly useful when running the server)
@y
  -M, --renderToMemory             メモリーにレンダーします。 (サーバー起動時に有用)
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
* [hugo mod](/commands/hugo_mod/)	 - Various Hugo Modules helpers.
@y
* [hugo mod](/commands/hugo_mod/)	 - Various Hugo Modules helpers.
@z
