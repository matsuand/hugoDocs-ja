%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: "hugo convert"
slug: hugo_convert
url: /commands/hugo_convert/
@y
title: "hugo convert"
slug: hugo_convert
url: /commands/hugo_convert/
@z

@x
## hugo convert
@y
## hugo convert
@z

@x
Convert your content to different formats
@y
Convert your content to different formats
@z

@x
### Synopsis
@y
### 概要 {#synopsis}
@z

@x
Convert your content (e.g. front matter) to different formats.
@y
Convert your content (e.g. front matter) to different formats.
@z

@x
See convert's subcommands toJSON, toTOML and toYAML for more information.
@y
See convert's subcommands toJSON, toTOML and toYAML for more information.
@z

@x
### Options
@y
### オプション {#options}
@z

@x
```
  -h, --help            help for convert
  -o, --output string   filesystem path to write files to
      --unsafe          enable less safe operations, please backup first
```
@y
```
  -h, --help            help for convert
  -o, --output string   filesystem path to write files to
      --unsafe          enable less safe operations, please backup first
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
* [hugo convert toJSON](/commands/hugo_convert_tojson/)	 - Convert front matter to JSON
* [hugo convert toTOML](/commands/hugo_convert_totoml/)	 - Convert front matter to TOML
* [hugo convert toYAML](/commands/hugo_convert_toyaml/)	 - Convert front matter to YAML
@y
* [hugo](/commands/hugo/)	 - hugo builds your site
* [hugo convert toJSON](/commands/hugo_convert_tojson/)	 - Convert front matter to JSON
* [hugo convert toTOML](/commands/hugo_convert_totoml/)	 - Convert front matter to TOML
* [hugo convert toYAML](/commands/hugo_convert_toyaml/)	 - Convert front matter to YAML
@z
