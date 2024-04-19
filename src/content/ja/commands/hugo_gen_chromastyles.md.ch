%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: "hugo gen chromastyles"
slug: hugo_gen_chromastyles
url: /commands/hugo_gen_chromastyles/
@y
title: "hugo gen chromastyles"
slug: hugo_gen_chromastyles
url: /commands/hugo_gen_chromastyles/
@z

@x
## hugo gen chromastyles
@y
## hugo gen chromastyles
@z

@x
Generate CSS stylesheet for the Chroma code highlighter
@y
Generate CSS stylesheet for the Chroma code highlighter
@z

@x
### Synopsis
@y
### 概要 {#synopsis}
@z

@x
Generate CSS stylesheet for the Chroma code highlighter for a given style. This stylesheet is needed if markup.highlight.noClasses is disabled in config.
@y
Generate CSS stylesheet for the Chroma code highlighter for a given style. This stylesheet is needed if markup.highlight.noClasses is disabled in config.
@z

@x
See https://xyproto.github.io/splash/docs/all.html for a preview of the available styles
@y
See https://xyproto.github.io/splash/docs/all.html for a preview of the available styles
@z

@x
```
hugo gen chromastyles [flags] [args]
```
@y
```
hugo gen chromastyles [flags] [args]
```
@z

@x
### Options
@y
### オプション {#options}
@z

@x
  -h, --help                    help for chromastyles
      --highlightStyle string   foreground and background colors for highlighted lines, e.g. --highlightStyle "#fff000 bg:#000fff"
      --linesStyle string       foreground and background colors for inline line numbers, e.g. --linesStyle "#fff000 bg:#000fff"
      --style string            highlighter style (see https://xyproto.github.io/splash/docs/) (default "friendly")
@y
  -h, --help                    help for chromastyles
      --highlightStyle string   foreground and background colors for highlighted lines, e.g. --highlightStyle "#fff000 bg:#000fff"
      --linesStyle string       foreground and background colors for inline line numbers, e.g. --linesStyle "#fff000 bg:#000fff"
      --style string            highlighter style (see https://xyproto.github.io/splash/docs/) (default "friendly")
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
* [hugo gen](/commands/hugo_gen/)	 - A collection of several useful generators.
@y
* [hugo gen](/commands/hugo_gen/)	 - A collection of several useful generators.
@z
