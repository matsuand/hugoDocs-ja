%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: "hugo completion zsh"
slug: hugo_completion_zsh
url: /commands/hugo_completion_zsh/
---
## hugo completion zsh
@y
---
title: "hugo completion zsh"
slug: hugo_completion_zsh
url: /commands/hugo_completion_zsh/
---
## hugo completion zsh
@z

@x
Generate the autocompletion script for zsh
@y
Generate the autocompletion script for zsh
@z

@x
### Synopsis
@y
### 概要 {#synopsis}
@z

@x
Generate the autocompletion script for the zsh shell.
@y
Generate the autocompletion script for the zsh shell.
@z

@x
If shell completion is not already enabled in your environment you will need
to enable it.  You can execute the following once:
@y
If shell completion is not already enabled in your environment you will need
to enable it.  You can execute the following once:
@z

@x
	echo "autoload -U compinit; compinit" >> ~/.zshrc
@y
	echo "autoload -U compinit; compinit" >> ~/.zshrc
@z

@x
To load completions in your current shell session:
@y
To load completions in your current shell session:
@z

@x
	source <(hugo completion zsh)
@y
	source <(hugo completion zsh)
@z

@x
To load completions for every new session, execute once:
@y
To load completions for every new session, execute once:
@z

@x
#### Linux:
@y
#### Linux:
@z

@x
	hugo completion zsh > "${fpath[1]}/_hugo"
@y
	hugo completion zsh > "${fpath[1]}/_hugo"
@z

@x
#### macOS:
@y
#### macOS:
@z

@x
	hugo completion zsh > $(brew --prefix)/share/zsh/site-functions/_hugo
@y
	hugo completion zsh > $(brew --prefix)/share/zsh/site-functions/_hugo
@z

@x
You will need to start a new shell for this setup to take effect.
@y
You will need to start a new shell for this setup to take effect.
@z

@x
```
hugo completion zsh [flags]
```
@y
```
hugo completion zsh [flags]
```
@z

@x
### Options
@y
### オプション {#options}
@z

@x
```
  -h, --help              help for zsh
      --no-descriptions   disable completion descriptions
```
@y
```
  -h, --help              help for zsh
      --no-descriptions   disable completion descriptions
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
* [hugo completion](/commands/hugo_completion/)	 - Generate the autocompletion script for the specified shell
@y
* [hugo completion](/commands/hugo_completion/)	 - Generate the autocompletion script for the specified shell
@z
