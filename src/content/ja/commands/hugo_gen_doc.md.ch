%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: "hugo gen doc"
slug: hugo_gen_doc
url: /commands/hugo_gen_doc/
@y
title: "hugo gen doc"
slug: hugo_gen_doc
url: /commands/hugo_gen_doc/
@z

@x
## hugo gen doc
@y
## hugo gen doc
@z

@x
Generate Markdown documentation for the Hugo CLI.
@y
Generate Markdown documentation for the Hugo CLI.
@z

@x
### Synopsis
@y
### 概要 {#synopsis}
@z

@x
Generate Markdown documentation for the Hugo CLI.
			This command is, mostly, used to create up-to-date documentation
	of Hugo's command-line interface for https://gohugo.io/.
@y
Generate Markdown documentation for the Hugo CLI.
			This command is, mostly, used to create up-to-date documentation
	of Hugo's command-line interface for https://gohugo.io/.
@z

@x
	It creates one Markdown file per command with front matter suitable
	for rendering in Hugo.
@y
	It creates one Markdown file per command with front matter suitable
	for rendering in Hugo.
@z

@x
```
hugo gen doc [flags] [args]
```
@y
```
hugo gen doc [flags] [args]
```
@z

@x
### Options
@y
### オプション {#options}
@z

@x
```
      --dir string   the directory to write the doc. (default "/tmp/hugodoc/")
  -h, --help         help for doc
```
@y
```
      --dir string   the directory to write the doc. (default "/tmp/hugodoc/")
  -h, --help         help for doc
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
* [hugo gen](/commands/hugo_gen/)	 - A collection of several useful generators.
@y
* [hugo gen](/commands/hugo_gen/)	 - A collection of several useful generators.
@z
