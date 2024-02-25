%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: "hugo new theme"
slug: hugo_new_theme
url: /commands/hugo_new_theme/
---
## hugo new theme
@y
---
title: "hugo new theme"
slug: hugo_new_theme
url: /commands/hugo_new_theme/
---
## hugo new theme
@z

@x
Create a new theme (skeleton)
@y
新規にテーマ (スケルトン) を生成します。
@z

@x
### Synopsis
@y
### 概要 {#synopsis}
@z

@x
Create a new theme (skeleton) called [name] in ./themes.
New theme is a skeleton. Please add content to the touched files. Add your
name to the copyright line in the license and adjust the theme.toml file
according to your needs.
@y
[name] という名前のテーマ (スケルトン) を ./themes ディレクトリ内に新規に生成します。
新規生成されるテーマはスケルトンです。
生成されたファイルに内容を追記してください。
またライセンス文書内のコピーライト行にご自身の名前を追記したり、必要に合わせて theme.toml ファイルを調整したりしてください。
@z

@x
```
hugo new theme [name] [flags]
```
@y
```
hugo new theme [name] [flags]
```
@z

@x
### Options
@y
### オプション {#options}
@z

@x
```
  -h, --help   help for theme
```
@y
```
  -h, --help   テーマに関するヘルプを表示します。
```
@z

@x
### Options inherited from parent commands
@y
### 上位コマンドから継承するオプション {#options-inherited-from-parent-commands}
@z

@x
      --clock string               set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
@y
      --clock string               Hugo が用いる日時を指定します。--clock 2021-11-06T22:30:00.00+09:00
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
### 関連コマンド {#see-also}
@z

@x
* [hugo new](/commands/hugo_new/)	 - Create new content for your site
@y
* [hugo new](/commands/hugo_new/)	 - 新規にサイトコンテントを生成します。
@z
