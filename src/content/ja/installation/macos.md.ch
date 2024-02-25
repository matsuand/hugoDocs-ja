%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: macOS
description: Install Hugo on macOS.
categories: [installation]
keywords: []
menu:
  docs:
    parent: installation
    weight: 20
weight: 20
toc: true
---
{{% include "installation/_common/01-editions.md" %}}
@y
---
title: macOS
description: Hugo を macOS にインストールします。
categories: [installation]
keywords: []
menu:
  docs:
    parent: installation
    weight: 20
weight: 20
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
## Package managers
@y
## パッケージマネージャー {#package-managers}
@z

@x
{{% include "installation/_common/homebrew.md" %}}
@y
{{% include "installation/_common/homebrew.md" %}}
@z

@x
### MacPorts
@y
### MacPorts
@z

@x
[MacPorts] is a free and open-source package manager for macOS. To install the extended edition of Hugo:
@y
[MacPorts] は macOS 上のフリーかつオープンソースのパッケージマネージャーです。
Hugo 拡張エディションをインストールするには以下を実行します。
@z

@x
```sh
sudo port install hugo
```
@y
```sh
sudo port install hugo
```
@z

@x
[MacPorts]: https://www.macports.org/
@y
[MacPorts]: https://www.macports.org/
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
||Prebuilt binaries|Package managers|Build from source
:--|:--:|:--:|:--:
Easy to install?|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|
Easy to upgrade?|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:
Easy to downgrade?|:heavy_check_mark:|:heavy_check_mark: [^1]|:heavy_check_mark:
Automatic updates?|:x:|:x: [^2]|:x:
Latest version available?|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:
@y
||ビルド済みバイナリー|パッケージマネージャー|ソースからのビルド
:--|:--:|:--:|:--:
インストールしやすいか？|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|
アップグレードしやすいか？|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:
ダウングレードしやすいか？|:heavy_check_mark:|:heavy_check_mark: [^1]|:heavy_check_mark:
自動更新するか？|:x:|:x: [^2]|:x:
最新版を入手できるか？|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:
@z

@x
[^1]: Easy if a previous version is still installed.
[^2]: Possible but requires advanced configuration.
@y
[^1]: 前バージョンがインストール状態にある場合には容易です。
[^2]: 可能ですが追加の設定が必要です。
@z
