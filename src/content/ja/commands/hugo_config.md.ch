%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: "hugo config"
slug: hugo_config
url: /commands/hugo_config/
@y
title: "hugo config"
slug: hugo_config
url: /commands/hugo_config/
@z

@x
## hugo config
@y
## hugo config
@z

@x
Print the site configuration
@y
Print the site configuration
@z

@x
### Synopsis
@y
### 概要 {#synopsis}
@z

@x
Print the site configuration, both default and custom settings.
@y
Print the site configuration, both default and custom settings.
@z

@x
```
hugo config [command] [flags]
```
@y
```
hugo config [command] [flags]
```
@z

@x
### Options
@y
### オプション {#options}
@z

@x
  -b, --baseURL string           hostname (and path) to the root, e.g. https://spf13.com/
      --cacheDir string          filesystem path to cache directory
  -c, --contentDir string        filesystem path to content directory
      --format string            preferred file format (toml, yaml or json) (default "toml")
  -h, --help                     help for config
      --lang string              the language to display config for. Defaults to the first language defined.
      --renderSegments strings   named segments to render (configured in the segments config)
  -t, --theme strings            themes to use (located in /themes/THEMENAME/)
@y
  -b, --baseURL string           hostname (and path) to the root, e.g. https://spf13.com/
      --cacheDir string          filesystem path to cache directory
  -c, --contentDir string        filesystem path to content directory
      --format string            preferred file format (toml, yaml or json) (default "toml")
  -h, --help                     help for config
      --lang string              the language to display config for. Defaults to the first language defined.
      --renderSegments strings   named segments to render (configured in the segments config)
  -t, --theme strings            themes to use (located in /themes/THEMENAME/)
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
* [hugo config mounts](/commands/hugo_config_mounts/)	 - Print the configured file mounts
@y
* [hugo](/commands/hugo/)	 - hugo builds your site
* [hugo config mounts](/commands/hugo_config_mounts/)	 - Print the configured file mounts
@z
