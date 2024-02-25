%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Quick start
description: Learn to create a Hugo site in minutes.
categories: [getting started]
keywords: [quick start,usage]
@y
title: クイックスタート
description: ほんの数分で Hugo サイト生成方法を学びます。
categories: [はじめよう]
keywords: [quick start,usage]
@z

@x
In this tutorial you will:
@y
本チュートリアルでは以下を行います。
@z

@x
1. Create a site
2. Add content
3. Configure the site
4. Publish the site
@y
1. サイトの生成
2. コンテントの追加
3. サイトの設定
4. サイトの公開
@z

@x
## Prerequisites
@y
## 前提条件 {#prerequisites}
@z

@x
Before you begin this tutorial you must:
@y
チュートリアルをはじめる前には、以下の作業が必要です。
@z

@x
1. [Install Hugo] (extended edition, {{% param "minVersion" %}} or later)
1. [Install Git]
@y
1. [Hugo のインストール][Install Hugo] (拡張エディション、{{% param "minVersion" %}} またはそれ以降)
1. [Git のインストール][Install Git]
@z

@x
You must also be comfortable working from the command line.
@y
またコマンドライン操作にも慣れておく必要があります。
@z

@x
## Create a site
@y
## サイトの生成 {#create-a-site}
@z

@x
### Commands
@y
### コマンド {#commands}
@z

@x
{{% note %}}
**If you are a Windows user:**
@y
{{% note %}}
**Windows ユーザーの場合**
@z

@x
- Do not use the Command Prompt
- Do not use Windows PowerShell
- Run these commands from [PowerShell] or a Linux terminal such as WSL or Git Bash
@y
- コマンドプロンプトは利用しないでください。
- Windows PowerShell は利用しないでください。
- Run these commands from [PowerShell] or a Linux terminal such as WSL or Git Bash
@z

@x
PowerShell and Windows PowerShell [are different applications].
@y
PowerShell と Windows PowerShell は[異なるアプリケーションです][are different applications]。
@z

@x
[PowerShell]: https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows
[are different applications]: https://learn.microsoft.com/en-us/powershell/scripting/whats-new/differences-from-windows-powershell?view=powershell-7.3
{{% /note %}}
@y
[PowerShell]: https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows
[are different applications]: https://learn.microsoft.com/en-us/powershell/scripting/whats-new/differences-from-windows-powershell?view=powershell-7.3
{{% /note %}}
@z

@x
Verify that you have installed Hugo {{% param "minVersion" %}} or later.
@y
以下を実行して Hugo のバージョンが {{% param "minVersion" %}} またはそれ以降であることを確認してください。
@z

@x
```text
hugo version
```
@y
```text
hugo version
```
@z

@x
Run these commands to create a Hugo site with the [Ananke] theme. The next section provides an explanation of each command.
@y
以下のコマンドを実行して、[Ananke] テーマを用いた Hugo サイトの生成を行います。
各コマンドの説明は次の節で示します。
@z

@x
```text
hugo new site quickstart
cd quickstart
git init
git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke
echo "theme = 'ananke'" >> hugo.toml
hugo server
```
@y
```text
hugo new site quickstart
cd quickstart
git init
git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke
echo "theme = 'ananke'" >> hugo.toml
hugo server
```
@z

@x
View your site at the URL displayed in your terminal. Press `Ctrl + C` to stop Hugo's development server.
@y
端末画面に示されている URL にアクセスしてサイトを確認します。
`Ctrl + C` を押下すれば Hugo の開発用サーバーを停止させることができます。
@z

@x
### Explanation of commands
@y
### 各コマンドの説明 {#explanation-of-commands}
@z

@x
Create the [directory structure] for your project in the `quickstart` directory.
@y
`quickstart` ディレクトリ配下に、プロジェクト用の [ディレクトリ構造][directory structure] を作り出します。
@z

@x
```text
hugo new site quickstart
```
@y
```text
hugo new site quickstart
```
@z

@x
Change the current directory to the root of your project.
@y
カレントディレクトリをプロジェクトのルートとします。
@z

@x
```text
cd quickstart
```
@y
```text
cd quickstart
```
@z

@x
Initialize an empty Git repository in the current directory.
@y
カレントディレクトリにおいて、空の Git リポジトリを初期化します。
@z

@x
```text
git init
```
@y
```text
git init
```
@z

@x
Clone the [Ananke] theme into the `themes` directory, adding it to your project as a [Git submodule].
@y
[Ananke] テーマをクローンして `themes` ディレクトリに置きます。
追加にあたっては、プロジェクトに対して [Git サブモジュール][Git submodule] として追加します。
@z

@x
```text
git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke
```
@y
```text
git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke
```
@z

@x
Append a line to the site configuration file, indicating the current theme.
@y
サイト設定ファイルに以下の 1 行を追加します。
カレントなテーマを設定するものです。
@z

@x
```text
echo "theme = 'ananke'" >> hugo.toml
```
@y
```text
echo "theme = 'ananke'" >> hugo.toml
```
@z

@x
Start Hugo's development server to view the site.
@y
Hugo の開発用サーバーを起動して、サイトの確認を行います。
@z

@x
```text
hugo server
```
@y
```text
hugo server
```
@z

@x
Press `Ctrl + C` to stop Hugo's development server.
@y
`Ctrl + C` を押下すれば Hugo の開発用サーバーを停止することができます。
@z

@x
## Add content
@y
## コンテントの追加 {#add-content}
@z

@x
Add a new page to your site.
@y
サイトに対して新規のページを追加します。
@z

@x
```text
hugo new content posts/my-first-post.md
```
@y
```text
hugo new content posts/my-first-post.md
```
@z

@x
Hugo created the file in the `content/posts` directory. Open the file with your editor.
@y
Hugo は `content/posts` ディレクトリに新たなファイルを生成します。
テキストエディターを使って、そのファイルを開いてみます。
@z

@x
```text
+++
title = 'My First Post'
date = 2024-01-14T07:07:07+01:00
draft = true
+++
```
@y
```text
+++
title = 'My First Post'
date = 2024-01-14T07:07:07+01:00
draft = true
+++
```
@z

@x
Notice the `draft` value in the [front matter] is `true`. By default, Hugo does not publish draft content when you build the site. Learn more about [draft, future, and expired content].
@y
なお [フロントマター][front matter] における `draft` の値は `true` としています。
Hugo ではサイトビルド時にドラフト (draft) コンテントは公開しないものとなっています。
詳しくは [ドラフト、公開予定、期限切れのコンテント][draft, future, and expired content] を参照してください。
@z

@x
Add some [Markdown] to the body of the post, but do not change the `draft` value.
@y
ポスト (post; 投稿内容) の本文に [マークダウン][Markdown] を適当に追加します。
ただし `draft` の値はそのままとします。
@z

% snip link...

@x
```text
+++
title = 'My First Post'
date = 2024-01-14T07:07:07+01:00
draft = true
+++
## Introduction
@y
```text
+++
title = 'My First Post'
date = 2024-01-14T07:07:07+01:00
draft = true
+++
## はじめに
@z

@x
This is **bold** text, and this is *emphasized* text.
@y
これは **ボールド体** のテキストです。これは *強調体* のテキストです。
@z

@x
Visit the [Hugo](https://gohugo.io) website!
```
@y
[Hugo](https://gohugo.io) のウェブサイトを参照してください！
```
@z

@x
Save the file, then start Hugo’s development server to view the site. You can run either of the following commands to include draft content.
@y
ファイルを保存し、Hugo の開発用サーバーを起動してサイトを確認します。
以下のいずれかのコマンドを実行すれば、ドラフトコンテントであっても表示されることになります。
@z

@x
```text
hugo server --buildDrafts
hugo server -D
```
@y
```text
hugo server --buildDrafts
hugo server -D
```
@z

@x
View your site at the URL displayed in your terminal. Keep the development server running as you continue to add and change content.
@y
端末画面に示されている URL にアクセスしてサイトを確認します。
コンテントの追加や変更を行う場合には、開発用サーバーを起動したままとします。
@z

@x
When satisfied with your new content, set the front matter `draft` parameter to `false`.
@y
When satisfied with your new content, set the front matter `draft` parameter to `false`.
@z

@x
{{% note %}}
Hugo's rendering engine conforms to the CommonMark [specification] for Markdown. The CommonMark organization provides a useful [live testing tool] powered by the reference implementation.
@y
{{% note %}}
Hugo のレンダリングエンジンは、マークダウンに関しては [CommonMark の仕様][specification] に準拠しています。
CommonMark では、リファレンス実装 (reference implementation) に基づいた、便利な [オンライン確認ツール][live testing tool] を提供しています。
@z

@x
[live testing tool]: https://spec.commonmark.org/dingus/
[specification]: https://spec.commonmark.org/
{{% /note %}}
@y
[live testing tool]: https://spec.commonmark.org/dingus/
[specification]: https://spec.commonmark.org/
{{% /note %}}
@z

@x
## Configure the site
@y
## サイトの設定 {#configure-the-site}
@z

@x
With your editor, open the [site configuration] file (`hugo.toml`) in the root of your project.
@y
テキストエディターを使って、プロジェクトルートにある [サイト設定ファイル][site configuration] (`hugo.toml`) を開きます。
@z

@x
```text
baseURL = 'https://example.org/'
languageCode = 'en-us'
title = 'My New Hugo Site'
theme = 'ananke'
```
@y
```text
baseURL = 'https://example.org/'
languageCode = 'en-us'
title = 'My New Hugo Site'
theme = 'ananke'
```
@z

@x
Make the following changes:
@y
これを以下のように変更します。
@z

@x
1. Set the `baseURL` for your production site. This value must begin with the protocol and end with a slash, as shown above.
@y
1. 本番サイト用の `baseURL` を設定します。
   設定する値は上で示しているように、プロトコルを必ず先頭につけ、最後にはスラッシュをつけます。
@z

@x
2. Set the `languageCode` to your language and region.
@y
2. `languageCode` に利用する言語と地域を設定します。
@z

@x
3. Set the `title` for your production site.
@y
3. 本番サイト用の `title` を設定します。
@z

@x
Start Hugo's development server to see your changes, remembering to include draft content.
@y
Hugo の開発用サーバーを起動して変更箇所を確認します。
ドラフトコンテントも表示する起動とすることを忘れないでください。
@z

@x
```text
hugo server -D
```
@y
```text
hugo server -D
```
@z

@x
{{% note %}}
Most theme authors provide configuration guidelines and options. Make sure to visit your theme's repository or documentation site for details.
@y
{{% note %}}
提供されるテーマにおいては、たいていは設定ガイドラインやオプションが提供されています。
詳しいことは、そのテーマのリポジトリやドキュメントサイトを参照してください。
@z

@x
[The New Dynamic], authors of the Ananke theme, provide [documentation] for configuration and usage. They also provide a [demonstration site].
@y
[The New Dynamic], authors of the Ananke theme, provide [documentation] for configuration and usage. They also provide a [demonstration site].
@z

@x
[demonstration site]: https://gohugo-ananke-theme-demo.netlify.app/
[documentation]: https://github.com/theNewDynamic/gohugo-theme-ananke#readme
[The New Dynamic]: https://www.thenewdynamic.com/
{{% /note %}}
@y
[demonstration site]: https://gohugo-ananke-theme-demo.netlify.app/
[documentation]: https://github.com/theNewDynamic/gohugo-theme-ananke#readme
[The New Dynamic]: https://www.thenewdynamic.com/
{{% /note %}}
@z

@x
## Publish the site
@y
## サイトの公開 {#publish-the-site}
@z

@x
In this step you will _publish_ your site, but you will not _deploy_ it.
@y
In this step you will _publish_ your site, but you will not _deploy_ it.
@z

@x
When you _publish_ your site, Hugo creates the entire static site in the `public` directory in the root of your project. This includes the HTML files, and assets such as images, CSS files, and JavaScript files.
@y
When you _publish_ your site, Hugo creates the entire static site in the `public` directory in the root of your project. This includes the HTML files, and assets such as images, CSS files, and JavaScript files.
@z

@x
When you publish your site, you typically do _not_ want to include [draft, future, or expired content]. The command is simple.
@y
When you publish your site, you typically do _not_ want to include [draft, future, or expired content]. The command is simple.
@z

@x
```text
hugo
```
@y
```text
hugo
```
@z

@x
To learn how to _deploy_ your site, see the [hosting and deployment] section.
@y
To learn how to _deploy_ your site, see the [hosting and deployment] section.
@z

@x
## Ask for help
@y
## Ask for help
@z

@x
Hugo's [forum] is an active community of users and developers who answer questions, share knowledge, and provide examples. A quick search of over 20,000 topics will often answer your question. Please be sure to read about [requesting help] before asking your first question.
@y
Hugo's [forum] is an active community of users and developers who answer questions, share knowledge, and provide examples. A quick search of over 20,000 topics will often answer your question. Please be sure to read about [requesting help] before asking your first question.
@z

@x
## Other resources
@y
## Other resources
@z

@x
For other resources to help you learn Hugo, including books and video tutorials, see the [external learning resources](/getting-started/external-learning-resources/) page.
@y
For other resources to help you learn Hugo, including books and video tutorials, see the [external learning resources](/getting-started/external-learning-resources/) page.
@z

% snip links...
