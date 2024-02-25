%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: "hugo new content"
slug: hugo_new_content
url: /commands/hugo_new_content/
---
## hugo new content
@y
---
title: "hugo new content"
slug: hugo_new_content
url: /commands/hugo_new_content/
---
## hugo new content
@z

@x
Create new content for your site
@y
Create new content for your site
@z

@x
### Synopsis
@y
### 概要 {#synopsis}
@z

@x
Create a new content file and automatically set the date and title.
It will guess which kind of file to create based on the path provided.
@y
Create a new content file and automatically set the date and title.
It will guess which kind of file to create based on the path provided.
@z

@x
You can also specify the kind with `-k KIND`.
@y
You can also specify the kind with `-k KIND`.
@z

@x
If archetypes are provided in your theme or site, they will be used.
@y
If archetypes are provided in your theme or site, they will be used.
@z

@x
Ensure you run this within the root directory of your site.
@y
Ensure you run this within the root directory of your site.
@z

@x
```
hugo new content [path] [flags]
```
@y
```
hugo new content [path] [flags]
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
      --editor string       edit new content with this editor, if provided
  -f, --force               overwrite file if it already exists
  -h, --help                help for content
  -k, --kind string         content type to create
  -t, --theme strings       themes to use (located in /themes/THEMENAME/)
```
@y
```
  -b, --baseURL string      hostname (and path) to the root, e.g. https://spf13.com/
      --cacheDir string     filesystem path to cache directory
  -c, --contentDir string   filesystem path to content directory
      --editor string       edit new content with this editor, if provided
  -f, --force               overwrite file if it already exists
  -h, --help                help for content
  -k, --kind string         content type to create
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
* [hugo new](/commands/hugo_new/)	 - Create new content for your site
@y
* [hugo new](/commands/hugo_new/)	 - Create new content for your site
@z
