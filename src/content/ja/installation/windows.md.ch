%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Windows
description: Install Hugo on Windows.
categories: [installation]
keywords: []
menu:
  docs:
    parent: installation
    weight: 40
weight: 40
toc: true
---
@y
---
title: Windows
description: Hugo を Windows にインストールします。
categories: [installation]
keywords: []
menu:
  docs:
    parent: installation
    weight: 40
weight: 40
toc: true
---
@z

@x
{{% note %}}
Hugo v0.121.1 and later require at least Windows 10 or Windows Server 2016.
{{% /note %}}
@y
{{% note %}}
Hugo v0.121.1 またはそれ以降は、最低でも Windows 10 または Windows Server 2016 を必要とします。
{{% /note %}}
@z

@x
{{% include "installation/_common/01-editions.md" %}}
@y
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
### Chocolatey
@y
### Chocolatey
@z

@x
[Chocolatey] is a free and open-source package manager for Windows. To install the extended edition of Hugo:
@y
[Chocolatey] は Windows 上のフリーかつオープンソースのパッケージマネージャーです。
Hugo 拡張エディションをインストールするには以下を実行します。
@z

@x
```sh
choco install hugo-extended
```
@y
```sh
choco install hugo-extended
```
@z

@x
[Chocolatey]: https://chocolatey.org/
@y
[Chocolatey]: https://chocolatey.org/
@z

@x
### Scoop
@y
### Scoop
@z

@x
[Scoop] is a free and open-source package manager for Windows. To install the extended edition of Hugo:
@y
[Scoop] は Windows 上のフリーかつオープンソースのパッケージマネージャーです。
Hugo 拡張エディションをインストールするには以下を実行します。
@z

@x
```sh
scoop install hugo-extended
```
@y
```sh
scoop install hugo-extended
```
@z

@x
[Scoop]: https://scoop.sh/
@y
[Scoop]: https://scoop.sh/
@z

@x
### Winget
@y
### Winget
@z

@x
[Winget] is Microsoft's official free and open-source package manager for Windows. To install the extended edition of Hugo:
@y
[Winget] は Microsoft 社が提供する公式のフリーでオープンソースのパッケージマネージャーです。
Hugo 拡張エディションをインストールするには以下を実行します。
@z

@x
```sh
winget install Hugo.Hugo.Extended
```
@y
```sh
winget install Hugo.Hugo.Extended
```
@z

@x
[Winget]: https://learn.microsoft.com/en-us/windows/package-manager/
@y
[Winget]: https://learn.microsoft.com/en-us/windows/package-manager/
@z

@x
{{% include "installation/_common/04-build-from-source.md" %}}
@y
{{% include "installation/_common/04-build-from-source.md" %}}
@z

@x
{{% note %}}
See these [detailed instructions](https://discourse.gohugo.io/t/41370) to install GCC on Windows.
{{% /note %}}
@y
{{% note %}}
Windows 上に GCC をインストールするには [具体的な手順](https://discourse.gohugo.io/t/41370) を参照してください。
{{% /note %}}
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
Easy to downgrade?|:heavy_check_mark:|:heavy_check_mark: [^2]|:heavy_check_mark:
Automatic updates?|:x:|:x: [^1]|:x:
Latest version available?|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:
@y
||ビルド済みバイナリー|パッケージマネージャー|ソースからのビルド
:--|:--:|:--:|:--:
インストールしやすいか？|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|
アップグレードしやすいか？|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:
ダウングレードしやすいか？|:heavy_check_mark:|:heavy_check_mark: [^2]|:heavy_check_mark:
自動更新するか？|:x:|:x: [^1]|:x:
最新版を入手できるか？|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:
@z

@x
[^1]: Possible but requires advanced configuration.
[^2]: Easy if a previous version is still installed.
@y
[^1]: 可能ですが追加の設定が必要です。
[^2]: 前バージョンがインストール状態にある場合には容易です。
@z
