%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: BSD
description: Install Hugo on BSD derivatives.
categories: [installation]
keywords: []
menu:
  docs:
    parent: installation
    weight: 50
weight: 50
toc: true
---
{{% include "installation/_common/01-editions.md" %}}
@y
---
title: BSD
description: Hugo を BSD 派生ディストリビューションにインストールします。
categories: [installation]
keywords: []
menu:
  docs:
    parent: installation
    weight: 50
weight: 50
toc: true
---
{{% include "installation/_common/01-editions.md" %}}
@z

@x
{{% include "installation/_common/02-prerequisites.md" %}}
@y
{{% include "installation/_common/02-prerequisites.md" %}}
@z

@x
{{% include "installation/_common/03-prebuilt-binaries.md" %}}
@y
{{% include "installation/_common/03-prebuilt-binaries.md" %}}
@z

@x
## Repository packages
@y
## リポジトリパッケージ {#repository-packages}
@z

@x
Most BSD derivatives maintain a repository for commonly installed applications. Please note that these repositories may not contain the [latest release].
@y
BSD 派生のディストリビューションの多くでは、通常のアプリケーションインストール用リポジトリを用意しています。
そのようなリポジトリに [最新リリース][latest release] が含まれていない場合もあるため、よく確認してください。
@z

@x
[latest release]: https://github.com/gohugoio/hugo/releases/latest
@y
[latest release]: https://github.com/gohugoio/hugo/releases/latest
@z

@x
### DragonFly BSD
@y
### DragonFly BSD
@z

@x
[DragonFly BSD] includes Hugo in its package repository. To install the extended edition of Hugo:
@y
[DragonFly BSD] はパッケージリポジトリより Hugo を提供しています。
Hugo 拡張エディションをインストールするには以下を実行します。
@z

@x
```sh
sudo pkg install gohugo
```
@y
```sh
sudo pkg install gohugo
```
@z

@x
[DragonFly BSD]: https://www.dragonflybsd.org/
@y
[DragonFly BSD]: https://www.dragonflybsd.org/
@z

@x
### FreeBSD
@y
### FreeBSD
@z

@x
[FreeBSD] includes Hugo in its package repository. To install the extended edition of Hugo:
@y
[FreeBSD] はパッケージリポジトリより Hugo を提供しています。
Hugo 拡張エディションをインストールするには以下を実行します。
@z

@x
```sh
sudo pkg install gohugo
```
@y
```sh
sudo pkg install gohugo
```
@z

@x
[FreeBSD]: https://www.freebsd.org/
@y
[FreeBSD]: https://www.freebsd.org/
@z

@x
### NetBSD
@y
### NetBSD
@z

@x
[NetBSD] includes Hugo in its package repository. To install the extended edition of Hugo:
@y
[NetBSD] はパッケージリポジトリより Hugo を提供しています。
Hugo 拡張エディションをインストールするには以下を実行します。
@z

@x
```sh
sudo pkgin install go-hugo
```
@y
```sh
sudo pkgin install go-hugo
```
@z

@x
[NetBSD]: https://www.netbsd.org/
@y
[NetBSD]: https://www.netbsd.org/
@z

@x
### OpenBSD
@y
### OpenBSD
@z

@x
[OpenBSD] includes Hugo in its package repository. This will prompt you to select which edition of Hugo to install:
@y
[OpenBSD] はパッケージリポジトリより Hugo を提供しています。
インストールの際にはどのエディションを選択するのかを選びます。
@z

@x
```sh
doas pkg_add hugo
```
@y
```sh
doas pkg_add hugo
```
@z

@x
[OpenBSD]: https://www.openbsd.org/
@y
[OpenBSD]: https://www.openbsd.org/
@z

@x
{{% include "installation/_common/04-build-from-source.md" %}}
@y
{{% include "installation/_common/04-build-from-source.md" %}}
@z

@x
## Comparison
@y
## 比較対照 {#comparison}
@z

@x
||Prebuilt binaries|Repository packages|Build from source
:--|:--:|:--:|:--:
Easy to install?|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:
Easy to upgrade?|:heavy_check_mark:|varies|:heavy_check_mark:
Easy to downgrade?|:heavy_check_mark:|varies|:heavy_check_mark:
Automatic updates?|:x:|varies|:x:
Latest version available?|:heavy_check_mark:|varies|:heavy_check_mark:
@y
||ビルド済みバイナリー|パッケージマネージャー|ソースからのビルド
:--|:--:|:--:|:--:
インストールしやすいか？|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:
アップグレードしやすいか？|:heavy_check_mark:|状況次第|:heavy_check_mark:
ダウングレードしやすいか？|:heavy_check_mark:|状況次第|:heavy_check_mark:
自動更新するか？|:x:|状況次第|:x:
最新版を入手できるか？|:heavy_check_mark:|状況次第|:heavy_check_mark:
@z
