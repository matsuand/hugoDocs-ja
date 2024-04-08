%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% snip 対応

@x
title: Linux
description: Install Hugo on Linux.
categories: [installation]
keywords: []
@y
title: Linux
description: Hugo を Linux にインストールします。
categories: [installation]
keywords: []
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
### Snap
@y
### Snap
@z

@x
[Snap] is a free and open-source package manager for Linux. Available for [most distributions], snap packages are simple to install and are automatically updated.
@y
[Snap] は Linux 上のフリーかつオープンソースのパッケージマネージャーです。
[ほとんどのディストリビューション][most distributions] において利用可能です。
パッケージのインストールはとても簡単であり、また更新も自動で行われます。
@z

@x
The Hugo snap package is [strictly confined]. Strictly confined snaps run in complete isolation, up to a minimal access level that’s deemed always safe. The sites you create and build must be located within your home directory, or on removable media.
@y
snap パッケージの Hugo は [厳密に管理されています][strictly confined] (strictly confined)。
snap が厳密に管理されていると、その実行は独立した形で行われ、確実に安全であるとみなされる最小限のアクセスレベルが維持されます。
サイトの生成とビルドにあたっては、そのファイルをホームディレクトリかあるいはリムーバルメディア上に配置する必要があります。
@z

@x
To install the extended edition of Hugo:
@y
Hugo 拡張エディションをインストールするには以下を実行します。
@z

@x
```sh
sudo snap install hugo
```
@y
```sh
sudo snap install hugo
```
@z

@x
To enable or revoke access to removable media:
@y
リムーバルメディアへのアクセスの有効無効を設定するには以下を実行します。
@z

@x
```sh
sudo snap connect hugo:removable-media
sudo snap disconnect hugo:removable-media
```
@y
```sh
sudo snap connect hugo:removable-media
sudo snap disconnect hugo:removable-media
```
@z

@x
To enable or revoke access to SSH keys:
@y
SSH 鍵へのアクセスの有効無効を設定するには以下を実行します。
@z

@x
```sh
sudo snap connect hugo:ssh-keys
sudo snap disconnect hugo:ssh-keys
```
@y
```sh
sudo snap connect hugo:ssh-keys
sudo snap disconnect hugo:ssh-keys
```
@z

@x
[most distributions]: https://snapcraft.io/docs/installing-snapd
[strictly confined]: https://snapcraft.io/docs/snap-confinement
[Snap]: https://snapcraft.io/
@y
[most distributions]: https://snapcraft.io/docs/installing-snapd
[strictly confined]: https://snapcraft.io/docs/snap-confinement
[Snap]: https://snapcraft.io/
@z

@x
{{% include "installation/_common/homebrew.md" %}}
@y
{{% include "installation/_common/homebrew.md" %}}
@z

@x
## Repository packages
@y
## リポジトリパッケージ {#repository-packages}
@z

@x
Most Linux distributions maintain a repository for commonly installed applications.
@y
Linux ディストリビューションの多くでは、通常のアプリケーションインストール用リポジトリを用意しています。
@z

@x
{{% note %}}
The Hugo version available in package repositories varies based on Linux distribution and release, and in some cases will not be the [latest version].
@y
{{% note %}}
Linux パッケージリポジトリでは、長期サポートポリシーの都合により、[最新リリース][latest release] が含まれていない場合があります。

パッケージリポジトリから入手できる Hugo は、Linux ディストリビューションやそのリリースによってさまざまです。
場合によっては [最新バージョン][latest version] ではないかもしれません。。
@z

@x
Use one of the other installation methods if your package repository does not provide the desired version.
@y
パッケージリポジトリからは必要なバージョンが得られない場合は、他のインストール手順を選んで実施してください。
@z

@x
[latest version]: https://github.com/gohugoio/hugo/releases/latest
{{% /note %}}
@y
[latest version]: https://github.com/gohugoio/hugo/releases/latest
{{% /note %}}
@z

@x
### Alpine Linux
@y
### Alpine Linux
@z

@x
To install the extended edition of Hugo on [Alpine Linux]:
@y
[Alpine Linux] に Hugo 拡張エディションをインストールするには以下を実行します。
@z

@x
```sh
doas apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community hugo
```
@y
```sh
doas apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community hugo
```
@z

@x
[Alpine Linux]: https://alpinelinux.org/
@y
[Alpine Linux]: https://alpinelinux.org/
@z

@x
### Arch Linux
@y
### Arch Linux
@z

@x
Derivatives of the [Arch Linux] distribution of Linux include [EndeavourOS], [Garuda Linux], [Manjaro], and others. To install the extended edition of Hugo:
@y
[Arch Linux] から派生したディストリビューションには [EndeavourOS], [Garuda Linux], [Manjaro] などがあります。
Hugo 拡張エディションをインストールするには以下を実行します。
@z

@x
```sh
sudo pacman -S hugo
```
@y
```sh
sudo pacman -S hugo
```
@z

@x
[Arch Linux]: https://archlinux.org/
[EndeavourOS]: https://endeavouros.com/
[Manjaro]: https://manjaro.org/
[Garuda Linux]: https://garudalinux.org/
@y
[Arch Linux]: https://archlinux.org/
[EndeavourOS]: https://endeavouros.com/
[Manjaro]: https://manjaro.org/
[Garuda Linux]: https://garudalinux.org/
@z

@x
### Debian
@y
### Debian
@z

@x
Derivatives of the [Debian] distribution of Linux include [elementary OS], [KDE neon], [Linux Lite], [Linux Mint], [MX Linux], [Pop!_OS], [Ubuntu], [Zorin OS], and others. To install the extended edition of Hugo:
@y
[Debian] から派生したディストリビューションには [elementary OS], [KDE neon], [Linux Lite], [Linux Mint], [MX Linux], [Pop!_OS], [Ubuntu], [Zorin OS] などがあります。
Hugo 拡張エディションをインストールするには以下を実行します。
@z

@x
```sh
sudo apt install hugo
```
@y
```sh
sudo apt install hugo
```
@z

@x
You can also download Debian packages from the [latest release] page.
@y
Debian パッケージは [最新リリース][latest release] のページからもダウンロードすることができます。
@z

% snip links...

@x
### Fedora
@y
### Fedora
@z

@x
Derivatives of the [Fedora] distribution of Linux include [CentOS], [Red Hat Enterprise Linux], and others. To install the extended edition of Hugo:
@y
[Fedora] から派生したディストリビューションには [CentOS], [Red Hat Enterprise Linux] などがあります。
Hugo 拡張エディションをインストールするには以下を実行します。
@z

% snip command...
% snip links...

@x
### Gentoo
@y
### Gentoo
@z

@x
Derivatives of the [Gentoo] distribution of Linux include [Calculate Linux], [Funtoo], and others. To install the extended edition of Hugo:
@y
[Gentoo] から派生したディストリビューションには [Calculate Linux], [Funtoo] などがあります。
Hugo 拡張エディションをインストールするには、以下の手順を実行します。
@z

@x
1. Specify the `extended` [USE] flag in /etc/portage/package.use/hugo:
@y
1. /etc/portage/package.use/hugo において [USE] フラグに `extended` を指定します。
@z

@x
    ```text
    www-apps/hugo extended
    ```
@y
    ```text
    www-apps/hugo extended
    ```
@z

@x
2. Build using the Portage package manager:
@y
2. Portage パッケージマネージャーを使ってビルドします。
@z

@x
    ```sh
    sudo emerge www-apps/hugo
    ```
@y
    ```sh
    sudo emerge www-apps/hugo
    ```
@z

@x
[Calculate Linux]: https://www.calculate-linux.org/
[Funtoo]: https://www.funtoo.org/
[Gentoo]: https://www.gentoo.org/
[USE]: https://packages.gentoo.org/packages/www-apps/hugo
@y
[Calculate Linux]: https://www.calculate-linux.org/
[Funtoo]: https://www.funtoo.org/
[Gentoo]: https://www.gentoo.org/
[USE]: https://packages.gentoo.org/packages/www-apps/hugo
@z

@x
### openSUSE
@y
### openSUSE
@z

@x
Derivatives of the [openSUSE] distribution of Linux include [GeckoLinux], [Linux Karmada], and others. To install the extended edition of Hugo:
@y
[openSUSE] から派生したディストリビューションには [GeckoLinux], [Linux Karmada] などがあります。
Hugo 拡張エディションをインストールするには以下を実行します。
@z

@x
```sh
sudo zypper install hugo
```
@y
```sh
sudo zypper install hugo
```
@z

@x
[GeckoLinux]: https://geckolinux.github.io/
[Linux Karmada]: https://linuxkamarada.com/
[openSUSE]: https://www.opensuse.org/
@y
[GeckoLinux]: https://geckolinux.github.io/
[Linux Karmada]: https://linuxkamarada.com/
[openSUSE]: https://www.opensuse.org/
@z

@x
### Solus
@y
### Solus
@z

@x
The [Solus] distribution of Linux includes Hugo in its package repository. To install the extended edition of Hugo:
@y
[Solus] ディストリビューションでは、パッケージリポジトリ内より Hugo を提供しています。
Hugo 拡張エディションをインストールするには以下を実行します。
@z

@x
```sh
sudo eopkg install hugo
```
@y
```sh
sudo eopkg install hugo
```
@z

@x
[Solus]: https://getsol.us/
@y
[Solus]: https://getsol.us/
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
||Prebuilt binaries|Package managers|Repository packages|Build from source
:--|:--:|:--:|:--:|:--:
Easy to install?|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:
Easy to upgrade?|:heavy_check_mark:|:heavy_check_mark:|varies|:heavy_check_mark:
Easy to downgrade?|:heavy_check_mark:|:heavy_check_mark: [^1]|varies|:heavy_check_mark:
Automatic updates?|:x:|varies [^2]|:x:|:x:
Latest version available?|:heavy_check_mark:|:heavy_check_mark:|varies|:heavy_check_mark:
@y
||ビルド済みバイナリー|パッケージマネージャー|リポジトリパッケージ|ソースからのビルド
:--|:--:|:--:|:--:|:--:
インストールしやすいか？|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:
アップグレードしやすいか？|:heavy_check_mark:|:heavy_check_mark:|状況次第|:heavy_check_mark:
ダウングレードしやすいか？|:heavy_check_mark:|:heavy_check_mark: [^1]|状況次第|:heavy_check_mark:
自動更新するか？|:x:|状況次第 [^2]|:x:|:x:
最新版を入手できるか？|:heavy_check_mark:|:heavy_check_mark:|状況次第|:heavy_check_mark:
@z

@x
[^1]: Easy if a previous version is still installed.
[^2]: Snap packages are automatically updated. Homebrew requires advanced configuration.
@y
[^1]: 前バージョンがインストール状態にある場合には容易です。
[^2]: Snap パッケージは自動的にアップデートされます。Homebrew では追加の設定が必要です。
@z
