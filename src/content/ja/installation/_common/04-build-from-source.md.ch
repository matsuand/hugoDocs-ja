%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
# Do not remove front matter.
---
@y
---
# Do not remove front matter.
---
@z

@x
## Build from source
@y
## ソースからのビルド {#build-from-source}
@z

@x
To build the extended edition of Hugo from source you must:
@y
Hugo の拡張エディションをソースからビルドするには、以下を行う必要があります。
@z

@x
1. Install [Git]
1. Install [Go] version 1.20 or later
1. Install a C compiler, either [GCC] or [Clang]
1. Update your `PATH` environment variable as described in the [Go documentation]
@y
1. [Git] のインストール。
1. [Go] バージョン 1.20 またはそれ以降のインストール。
1. C コンパイラーとして [GCC] または [Clang] のインストール。
1. [Go ドキュメント][Go documentation] に説明されているような環境変数 `PATH` の設定。
@z

@x
> The install directory is controlled by the `GOPATH` and `GOBIN` environment variables. If `GOBIN` is set, binaries are installed to that directory. If `GOPATH` is set, binaries are installed to the bin subdirectory of the first directory in the `GOPATH` list. Otherwise, binaries are installed to the bin subdirectory of the default `GOPATH` (`$HOME/go` or `%USERPROFILE%\go`).
@y
> インストールディレクトリは、環境変数 `GOPATH` と `GOBIN` によって制御されます。
> `GOBIN` が設定されている場合、バイナリーはそのディレクトリにインストールされます。
> `GOPATH` が設定されている場合、バイナリは `GOPATH` パスリスト内の最初のディレクトリ配下のサブディレクトリ bin にインストールされます。設定されていない場合は、`GOPATH` のデフォルトディレクトリ (`$HOME/go` または `%USERPROFILE%\go`) 配下のサブディレクトリ bin にインストールされます。
@z

@x
Then build and test:
@y
そしてビルドとテストを以下のようにして行います。
@z

@x
```sh
CGO_ENABLED=1 go install -tags extended github.com/gohugoio/hugo@latest
hugo version
```
@y
```sh
CGO_ENABLED=1 go install -tags extended github.com/gohugoio/hugo@latest
hugo version
```
@z

@x
[Clang]: https://clang.llvm.org/
[GCC]: https://gcc.gnu.org/
[Git]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
[Go documentation]: https://go.dev/doc/code#Command
[Go]: https://go.dev/doc/install
@y
[Clang]: https://clang.llvm.org/
[GCC]: https://gcc.gnu.org/
[Git]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
[Go documentation]: https://go.dev/doc/code#Command
[Go]: https://go.dev/doc/install
@z
