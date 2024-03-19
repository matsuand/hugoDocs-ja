%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Basic usage
description: Hugo's command line interface (CLI) is fully featured but simple to use, even for those with limited experience working from the command line.
categories: [getting started]
keywords: [usage,livereload,command,flags]
@y
title: 基本操作
description: Hugo のコマンドラインインターフェース (command line interface; CLI) の機能は充実していて、しかも操作が簡単です。たとえコマンドライン操作の経験が少ない方でも安心して利用できます。
categories: [getting started]
keywords: [usage,livereload,command,flags]
@z

@x
## Test your installation
@y
## インストールの確認
@z

@x
After [installing] Hugo, test your installation by running:
@y
Hugo を [インストール][installing] したら、以下を実行して確認します。
@z

@x
```sh
hugo version
```
@y
```sh
hugo version
```
@z

@x
You should see something like:
@y
以下のような出力が行われます。
@z

% snip output...

@x
## Display available commands
@y
## 利用可能なコマンドの表示 {#display-available-commands}
@z

@x
To see a list of the available commands and flags:
@y
利用可能なコマンドやフラグを確認するには、以下を実行します。
@z

@x
```sh
hugo help
```
@y
```sh
hugo help
```
@z

@x
To get help with a subcommand, use the `--help` flag. For example:
@y
サブコマンドのヘルプを見るには `--help` フラグを使います。
たとえば以下のとおりです。
@z

@x
```sh
hugo server --help
```
@y
```sh
hugo server --help
```
@z

@x
## Build your site
@y
## サイトの構築 {#build-your-site}
@z

@x
To build your site, `cd` into your project directory and run:
@y
サイトを構築するには `cd` によりプロジェクトディレクトリに入って以下を実行します。
@z

@x
```sh
hugo
```
@y
```sh
hugo
```
@z

@x
The [`hugo`] command builds your site, publishing the files to the `public` directory. To publish your site to a different directory, use the [`--destination`] flag or set [`publishDir`] in your site configuration.
@y
[`hugo`] コマンドがサイトを構築します。
公開するファイルは `public` ディレクトリに出力されます。
サイトの公開を別ディレクトリとする場合は [`--destination`] フラグを用いるか、サイト設定において [`publishDir`] を設定します。
@z

@x
{{% note %}}
Hugo does not clear the `public` directory before building your site. Existing files are overwritten, but not deleted. This behavior is intentional to prevent the inadvertent removal of files that you may have added to the `public` directory after the build.
@y
{{% note %}}
Hugo はサイトの構築にあたって `public` ディレクトリをクリアしません。
既存のファイルは上書きされ、ファイル削除は行われません。
この動作は意図的なものであって、ビルドした後に `public` ディレクトリに何かファイルを追加する場合があるかもしれないため、それを不用意に削除しないようにしているものです。
@z

@x
Depending on your needs, you may wish to manually clear the contents of the public directory before every build.
{{% /note %}}
@y
作業での必要に応じて、ビルドを行う際には、毎回 public ディレクトリを手動で削除することをお勧めします。
{{% /note %}}
@z

@x
## Draft, future, and expired content
@y
## Draft, future, and expired content
@z

@x
Hugo allows you to set `draft`, `date`, `publishDate`, and `expiryDate` in the [front matter] of your content. By default, Hugo will not publish content when:
@y
Hugo allows you to set `draft`, `date`, `publishDate`, and `expiryDate` in the [front matter] of your content. By default, Hugo will not publish content when:
@z

@x
- The `draft` value is `true`
- The `date` is in the future
- The `publishDate` is in the future
- The `expiryDate` is in the past
@y
- The `draft` value is `true`
- The `date` is in the future
- The `publishDate` is in the future
- The `expiryDate` is in the past
@z

@x
You can override the default behavior when running `hugo` or `hugo server` with command line flags:
@y
You can override the default behavior when running `hugo` or `hugo server` with command line flags:
@z

@x
```sh
hugo --buildDrafts    # or -D
hugo --buildExpired   # or -E
hugo --buildFuture    # or -F
```
@y
```sh
hugo --buildDrafts    # or -D
hugo --buildExpired   # or -E
hugo --buildFuture    # or -F
```
@z

@x
Although you can also set these values in your site configuration, it can lead to unwanted results unless all content authors are aware of, and understand, the settings.
@y
Although you can also set these values in your site configuration, it can lead to unwanted results unless all content authors are aware of, and understand, the settings.
@z

@x
{{% note %}}
As noted above, Hugo does not clear the `public` directory before building your site. Depending on the _current_ evaluation of the four conditions above, after the build your `public` directory may contain extraneous files from a previous build.
@y
{{% note %}}
As noted above, Hugo does not clear the `public` directory before building your site. Depending on the _current_ evaluation of the four conditions above, after the build your `public` directory may contain extraneous files from a previous build.
@z

@x
A common practice is to manually clear the contents of the `public` directory before each build to remove draft, expired, and future content.
{{% /note %}}
@y
A common practice is to manually clear the contents of the `public` directory before each build to remove draft, expired, and future content.
{{% /note %}}
@z

@x
## Develop and test your site
@y
## サイトの開発とテスト {#develop-and-test-your-site}
@z

@x
To view your site while developing layouts or creating content, `cd` into your project directory and run:
@y
レイアウト開発やコンテントの生成中にサイトを確認したい場合は、`cd` によりプロジェクトディレクトリに入って以下を実行します。
@z

@x
```sh
hugo server
```
@y
```sh
hugo server
```
@z

@x
The [`hugo server`] command builds your site into memory, and serves your pages using a minimal HTTP server. When you run `hugo server` it will display the URL of your local site:
@y
[`hugo server`] コマンドは、メモリ内にサイトを構築します。
そして小さな HTTP サーバーを使ってページ表示を行います。
`hugo server` を実行すると、ローカル端末には URL が表示されます。
@z

@x
```text
Web Server is available at http://localhost:1313/ 
```
@y
```text
Web Server is available at http://localhost:1313/ 
```
@z

@x
While the server is running, it watches your project directory for changes to assets, configuration, content, data, layouts, translations, and static files. When it detects a change, the server rebuilds your site and refreshes your browser using [LiveReload].
@y
While the server is running, it watches your project directory for changes to assets, configuration, content, data, layouts, translations, and static files. When it detects a change, the server rebuilds your site and refreshes your browser using [LiveReload].
@z

@x
Most Hugo builds are so fast that you may not notice the change unless you are looking directly at your browser.
@y
Most Hugo builds are so fast that you may not notice the change unless you are looking directly at your browser.
@z

@x
### LiveReload
@y
### LiveReload {#livereload}
@z

@x
While the server is running, Hugo injects JavaScript into the generated HTML pages. The LiveReload script creates a connection from the browser to the server via web sockets. You do not need to install any software or browser plugins, nor is any configuration required.
@y
While the server is running, Hugo injects JavaScript into the generated HTML pages. The LiveReload script creates a connection from the browser to the server via web sockets. You do not need to install any software or browser plugins, nor is any configuration required.
@z

@x
### Automatic redirection
@y
### Automatic redirection
@z

@x
When editing content, if you want your browser to automatically redirect to the page you last modified, run:
@y
When editing content, if you want your browser to automatically redirect to the page you last modified, run:
@z

@x
```sh
hugo server --navigateToChanged
```
@y
```sh
hugo server --navigateToChanged
```
@z

@x
## Deploy your site
@y
## サイトのデプロイ {#deploy-your-site}
@z

@x
{{% note %}}
As noted above, Hugo does not clear the public directory before building your site. Manually clear the contents of the public directory before each build to remove draft, expired, and future content.
{{% /note %}}
@y
{{% note %}}
As noted above, Hugo does not clear the public directory before building your site. Manually clear the contents of the public directory before each build to remove draft, expired, and future content.
{{% /note %}}
@z

@x
When you are ready to deploy your site, run:
@y
サイトをデプロイする準備ができたら、以下を実行します。
@z

@x
```sh
hugo
```
@y
```sh
hugo
```
@z

@x
This builds your site, publishing the files to the public directory. The directory structure will look something like this:
@y
This builds your site, publishing the files to the public directory. The directory structure will look something like this:
@z

@x
```text
public/
├── categories/
│   ├── index.html
│   └── index.xml  <-- RSS feed for this section
├── post/
│   ├── my-first-post/
│   │   └── index.html
│   ├── index.html
│   └── index.xml  <-- RSS feed for this section
├── tags/
│   ├── index.html
│   └── index.xml  <-- RSS feed for this section
├── index.html
├── index.xml      <-- RSS feed for the site
└── sitemap.xml
```
@y
```text
public/
├── categories/
│   ├── index.html
│   └── index.xml  <-- RSS feed for this section
├── post/
│   ├── my-first-post/
│   │   └── index.html
│   ├── index.html
│   └── index.xml  <-- RSS feed for this section
├── tags/
│   ├── index.html
│   └── index.xml  <-- RSS feed for this section
├── index.html
├── index.xml      <-- RSS feed for the site
└── sitemap.xml
```
@z

@x
In a simple hosting environment, where you typically `ftp`, `rsync`, or `scp` your files to the root of a virtual host, the contents of the `public` directory are all that you need.
@y
In a simple hosting environment, where you typically `ftp`, `rsync`, or `scp` your files to the root of a virtual host, the contents of the `public` directory are all that you need.
@z

@x
Most of our users deploy their sites using a CI/CD workflow, where a push[^1] to their GitHub or GitLab repository triggers a build and deployment. Popular providers include [AWS Amplify], [CloudCannon], [Cloudflare Pages], [GitHub Pages], [GitLab Pages], and [Netlify].
@y
Most of our users deploy their sites using a CI/CD workflow, where a push[^1] to their GitHub or GitLab repository triggers a build and deployment. Popular providers include [AWS Amplify], [CloudCannon], [Cloudflare Pages], [GitHub Pages], [GitLab Pages], and [Netlify].
@z

@x
Learn more in the [hosting and deployment] section.
@y
詳しくは [ホスティングとデプロイ][hosting and deployment] の節を参照してください。
@z

@x
[^1]: The Git repository contains the entire project directory, typically excluding the public directory because the site is built _after_ the push.
@y
[^1]: The Git repository contains the entire project directory, typically excluding the public directory because the site is built _after_ the push.
@z

@x
[`--destination`]: /commands/hugo/#options
[`hugo server`]: /commands/hugo_server/
[`hugo`]: /commands/hugo/
[`publishDir`]: /getting-started/configuration/#publishdir
[AWS Amplify]: https://aws.amazon.com/amplify/
[CloudCannon]: https://cloudcannon.com/
[Cloudflare Pages]: https://pages.cloudflare.com/
[commands]: /commands/
[front matter]: /content-management/front-matter/
[GitHub Pages]: https://pages.github.com/
[GitLab Pages]: https://docs.gitlab.com/ee/user/project/pages/
[hosting and deployment]: /hosting-and-deployment/
[hosting]: /hosting-and-deployment/
[installing]: /installation/
[LiveReload]: https://github.com/livereload/livereload-js
[Netlify]: https://www.netlify.com/
@y
[`--destination`]: /commands/hugo/#options
[`hugo server`]: /commands/hugo_server/
[`hugo`]: /commands/hugo/
[`publishDir`]: /getting-started/configuration/#publishdir
[AWS Amplify]: https://aws.amazon.com/amplify/
[CloudCannon]: https://cloudcannon.com/
[Cloudflare Pages]: https://pages.cloudflare.com/
[commands]: /commands/
[front matter]: /content-management/front-matter/
[GitHub Pages]: https://pages.github.com/
[GitLab Pages]: https://docs.gitlab.com/ee/user/project/pages/
[hosting and deployment]: /hosting-and-deployment/
[hosting]: /hosting-and-deployment/
[installing]: /installation/
[LiveReload]: https://github.com/livereload/livereload-js
[Netlify]: https://www.netlify.com/
@z
