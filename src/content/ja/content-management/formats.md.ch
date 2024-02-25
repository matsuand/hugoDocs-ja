%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Content formats
description: Both HTML and Markdown are supported content formats.
categories: [content management]
keywords: [markdown,asciidoc,pandoc,content format]
menu:
  docs:
    parent: content-management
    weight: 40
weight: 40
toc: true
aliases: [/content/markdown-extras/,/content/supported-formats/,/doc/supported-formats/]
---
@y
---
title: コンテントフォーマット
description: Both HTML and Markdown are supported content formats.
categories: [content management]
keywords: [markdown,asciidoc,pandoc,content format]
menu:
  docs:
    parent: content-management
    weight: 40
weight: 40
toc: true
aliases: [/content/markdown-extras/,/content/supported-formats/,/doc/supported-formats/]
---
@z

@x
You can put any file type into your `/content` directories, but Hugo uses the `markup` front matter value if set or the file extension (see `Markup identifiers` in the table below) to determine if the markup needs to be processed, e.g.:
@y
`/content` ディレクトリにはどのようなタイプのファイルでも配置することができます。
ただし Hugo はマークアップ処理が必要であるかどうかを、フロントマターの `markup` 値の設定の有無、またはファイル拡張子 (マークアップ識別子参照) により判断します。
処理対象となるのは以下のものです。
@z

@x
* Markdown converted to HTML
* [Shortcodes](/content-management/shortcodes/) processed
* Layout applied
@y
* HTML に変換されるマークダウン。
* [Shortcodes](/content-management/shortcodes/)
* 適用されるレイアウト。
@z

@x
## List of content formats
@y
## コンテントフォーマットの一覧 {#list-of-content-formats}
@z

@x
The current list of content formats in Hugo:
@y
Hugo における現時点でのコンテントフォーマットは以下のとおりです。
@z

@x
| Name  | Markup identifiers | Comment |
| ------------- | ------------- |-------------|
| Goldmark  | `markdown`, `goldmark`  |Note that you can set the default handler of `md` and `Markdown` to something else, see [Configure Markup](/getting-started/configuration-markup/).|
|Emacs Org-Mode|`org`|See [go-org](https://github.com/niklasfasching/go-org).|
|AsciiDoc|`asciidocext`, `adoc`, `ad`|Needs [Asciidoctor][ascii] installed.|
|RST|`rst`|Needs [RST](https://docutils.sourceforge.io/rst.html) installed.|
|Pandoc|`pandoc`, `pdc`|Needs [Pandoc](https://www.pandoc.org/) installed.|
|HTML|`html`, `htm`|To be treated as a content file, with layout, shortcodes etc., it must have front matter. If not, it will be copied as-is.|
@y
| 名前  | マークアップ識別子 | 内容説明 |
| ------------- | ------------- |-------------|
| Goldmark  | `markdown`, `goldmark`  |Note that you can set the default handler of `md` and `Markdown` to something else, see [Configure Markup](/getting-started/configuration-markup/).|
|Emacs Org-Mode|`org`|[go-org](https://github.com/niklasfasching/go-org) 参照。|
|AsciiDoc|`asciidocext`, `adoc`, `ad`|[Asciidoctor][ascii] インストール要。|
|RST|`rst`|[RST](https://docutils.sourceforge.io/rst.html) インストール要。|
|Pandoc|`pandoc`, `pdc`|[Pandoc](https://www.pandoc.org/) インストール要。|
|HTML|`html`, `htm`|To be treated as a content file, with layout, shortcodes etc., it must have front matter. If not, it will be copied as-is.|
@z

@x
The `markup identifier` is fetched from either the `markup` variable in front matter or from the file extension. For markup-related configuration, see [Configure Markup](/getting-started/configuration-markup/).
@y
マークアップ識別子は、フロントマターの `markup` 変数、またはファイル拡張子から割り当てられます。
マークアップ関連の設定については [マークアップの設定](/getting-started/configuration-markup/) を参照してください。
@z

@x
## External helpers
@y
## 外部ヘルパー {#external-helpers}
@z

@x
Some of the formats in the table above need external helpers installed on your PC. For example, for AsciiDoc files,
Hugo will try to call the `asciidoctor` command. This means that you will have to install the associated
tool on your machine to be able to use these formats.
@y
上の一覧の中のフォーマットに関しては、PC に外部ヘルパープログラムをインストールしておくべきものがあります。
たとえば AsciiDoc ファイルの場合、Hugo は `asciidoctor` コマンドを呼び出します。
つまりそのようなフォーマットを利用するためには、PC に関連ツールをインストールしておく必要があるということです。
@z

@x
Hugo passes reasonable default arguments to these external helpers by default:
@y
Hugo はそのような外部ヘルパーに対して、デフォルトで以下のような適切な引数を受け渡すものとなっています。
@z

@x
- `asciidoctor`: `--no-header-footer -`
- `rst2html`: `--leave-comments --initial-header-level=2`
- `pandoc`: `--mathjax`
@y
- `asciidoctor`: `--no-header-footer -`
- `rst2html`: `--leave-comments --initial-header-level=2`
- `pandoc`: `--mathjax`
@z

@x
{{% note %}}
Because additional formats are external commands, generation performance will rely heavily on the performance of the external tool you are using. As this feature is still in its infancy, feedback is welcome.
{{% /note %}}
@y
{{% note %}}
Because additional formats are external commands, generation performance will rely heavily on the performance of the external tool you are using. As this feature is still in its infancy, feedback is welcome.
{{% /note %}}
@z

@x
### Asciidoctor
@y
### Asciidoctor
@z

@x
The Asciidoctor community offers a wide set of tools for the AsciiDoc format that can be installed additionally to Hugo.
[See the Asciidoctor docs for installation instructions](https://asciidoctor.org/docs/install-toolchain/). Make sure that also all
optional extensions like `asciidoctor-diagram` or `asciidoctor-html5s` are installed if required.
@y
The Asciidoctor community offers a wide set of tools for the AsciiDoc format that can be installed additionally to Hugo.
[See the Asciidoctor docs for installation instructions](https://asciidoctor.org/docs/install-toolchain/). Make sure that also all
optional extensions like `asciidoctor-diagram` or `asciidoctor-html5s` are installed if required.
@z

@x
{{% note %}}
External `asciidoctor` command requires Hugo rendering to _disk_ to a specific destination directory. It is required to run Hugo with the command option `--destination`.
{{% /note %}}
@y
{{% note %}}
External `asciidoctor` command requires Hugo rendering to _disk_ to a specific destination directory. It is required to run Hugo with the command option `--destination`.
{{% /note %}}
@z

@x
Some Asciidoctor parameters can be customized in Hugo. See&nbsp;[details].
@y
Some Asciidoctor parameters can be customized in Hugo. See&nbsp;[details].
@z

@x
[details]: /getting-started/configuration-markup/#asciidoc
@y
[details]: /getting-started/configuration-markup/#asciidoc
@z

@x
## Learn Markdown
@y
## マークダウンについて学ぶ {#learn-markdown}
@z

@x
Markdown syntax is simple enough to learn in a single sitting. The following are excellent resources to get you up and running:
@y
マークダウンの文法はとても単純なので、一気に学ぶことができます。
以下のような優れたリソースを見れば、さらにやる気が出てくると思います。
@z

@x
* [Daring Fireball: Markdown, John Gruber (Creator of Markdown)][fireball]
* [Markdown Cheatsheet, Adam Pritchard][mdcheatsheet]
* [Markdown Tutorial (Interactive), Garen Torikian][mdtutorial]
* [The Markdown Guide, Matt Cone][mdguide]
@y
* [Daring Fireball: Markdown, John Gruber (Creator of Markdown)][fireball]
* [Markdown Cheatsheet, Adam Pritchard][mdcheatsheet]
* [Markdown Tutorial (Interactive), Garen Torikian][mdtutorial]
* [The Markdown Guide, Matt Cone][mdguide]
@z

% snip URLs...
