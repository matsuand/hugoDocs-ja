%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: "hugo config mounts"
slug: hugo_config_mounts
url: /commands/hugo_config_mounts/
@y
title: "hugo config mounts"
slug: hugo_config_mounts
url: /commands/hugo_config_mounts/
@z

@x
## hugo config mounts
@y
## hugo config mounts
@z

@x
Print the configured file mounts
@y
Print the configured file mounts
@z

@x
```
hugo config mounts [flags] [args]
```
@y
```
hugo config mounts [flags] [args]
```
@z

@x
### Options
@y
### オプション {#options}
@z

@x
```
  -b, --baseURL string      hostname (and path) to the root, e.g. https://spf13.com/
      --cacheDir string     filesystem path to cache directory
  -c, --contentDir string   filesystem path to content directory
  -h, --help                help for mounts
  -t, --theme strings       themes to use (located in /themes/THEMENAME/)
```
@y
```
  -b, --baseURL string      hostname (and path) to the root, e.g. https://spf13.com/
      --cacheDir string     filesystem path to cache directory
  -c, --contentDir string   filesystem path to content directory
  -h, --help                help for mounts
  -t, --theme strings       themes to use (located in /themes/THEMENAME/)
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
* [hugo config](/commands/hugo_config/)	 - Print the site configuration
@y
* [hugo config](/commands/hugo_config/)	 - Print the site configuration
@z
