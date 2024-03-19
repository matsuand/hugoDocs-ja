%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: "hugo mod npm pack"
slug: hugo_mod_npm_pack
url: /commands/hugo_mod_npm_pack/
---
## hugo mod npm pack
@y
---
title: "hugo mod npm pack"
slug: hugo_mod_npm_pack
url: /commands/hugo_mod_npm_pack/
---
## hugo mod npm pack
@z

@x
Experimental: Prepares and writes a composite package.json file for your project.
@y
Experimental: Prepares and writes a composite package.json file for your project.
@z

@x
### Synopsis
@y
### 概要 {#synopsis}
@z

@x
Prepares and writes a composite package.json file for your project.
@y
Prepares and writes a composite package.json file for your project.
@z

@x
On first run it creates a "package.hugo.json" in the project root if not already there. This file will be used as a template file
with the base dependency set. 
@y
On first run it creates a "package.hugo.json" in the project root if not already there. This file will be used as a template file
with the base dependency set. 
@z

@x
This set will be merged with all "package.hugo.json" files found in the dependency tree, picking the version closest to the project.
@y
This set will be merged with all "package.hugo.json" files found in the dependency tree, picking the version closest to the project.
@z

@x
This command is marked as 'Experimental'. We think it's a great idea, so it's not likely to be
removed from Hugo, but we need to test this out in "real life" to get a feel of it,
so this may/will change in future versions of Hugo.
@y
This command is marked as 'Experimental'. We think it's a great idea, so it's not likely to be
removed from Hugo, but we need to test this out in "real life" to get a feel of it,
so this may/will change in future versions of Hugo.
@z

@x
```
hugo mod npm pack [flags] [args]
```
@y
```
hugo mod npm pack [flags] [args]
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
  -h, --help                     help for pack
      --renderSegments strings   named segments to render (configured in the segments config)
  -t, --theme strings            themes to use (located in /themes/THEMENAME/)
@y
  -b, --baseURL string           hostname (and path) to the root, e.g. https://spf13.com/
      --cacheDir string          filesystem path to cache directory
  -c, --contentDir string        filesystem path to content directory
  -h, --help                     help for pack
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
* [hugo mod npm](/commands/hugo_mod_npm/)	 - Various npm helpers.
@y
* [hugo mod npm](/commands/hugo_mod_npm/)	 - Various npm helpers.
@z
