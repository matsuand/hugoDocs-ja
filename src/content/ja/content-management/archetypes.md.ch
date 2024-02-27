%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Archetypes
description: An archetype is a template for new content.
categories: [content management]
keywords: [archetypes,generators,metadata,front matter]
@y
title: アーキタイプ
description: アーキタイプとは新規コンテント生成時に用いるテンプレートのことです。
categories: [content management]
keywords: [archetypes,generators,metadata,front matter]
@z

@x
## Overview
@y
## 概要 {#overview}
@z

@x
A content file consists of [front matter] and markup. The markup is typically Markdown, but Hugo also supports other [content formats]. Front matter can be TOML, YAML, or JSON.
@y
コンテントファイルというものは [フロントマター][front matter] (front matter) とマークアップから構成されます。
マークアップは一般にはマークダウンのことです。
Hugo ではさらに別の [コンテントフォーマット][content formats] もサポートされます。
フロントマターは TOML, YAML, JSON による表現が可能です。
@z

@x
The `hugo new content` command creates a new file in the `content` directory, using an archetype as a template. This is the default archetype:
@y
`hugo new content` コマンドを実行すると、`content` ディレクトリ下に新たなファイルを生成します。
その際にはアーキタイプ (archetype) を使ってテンプレートとして生成します。
デフォルトのアーキタイプを以下のように記述したとします。
@z

@x
{{< code-toggle file=archetypes/default.md fm=true >}}
title = '{{ replace .File.ContentBaseName `-` ` ` | title }}'
date = '{{ .Date }}'
draft = true
{{< /code-toggle >}}
@y
{{< code-toggle file=archetypes/default.md fm=true >}}
title = '{{ replace .File.ContentBaseName `-` ` ` | title }}'
date = '{{ .Date }}'
draft = true
{{< /code-toggle >}}
@z

@x
When you create new content, Hugo evaluates the [template actions] within the archetype. For example:
@y
新規にコンテントを生成すると、Hugo はアーキタイプ内にある [テンプレートアクション][template actions] を確認します。
@z

@x
```sh
hugo new content posts/my-first-post.md
```
@y
```sh
hugo new content posts/my-first-post.md
```
@z

@x
With the default archetype shown above, Hugo creates this content file:
@y
上で示したようなデフォルトのアーキタイプが用いられた場合、Hugo は以下のようなファイルを生成します。
@z

@x
{{< code-toggle file=content/posts/my-first-post.md fm=true >}}
title = 'My First Post'
date = '2023-08-24T11:49:46-07:00'
draft = true
{{< /code-toggle >}}
@y
{{< code-toggle file=content/posts/my-first-post.md fm=true >}}
title = 'My First Post'
date = '2023-08-24T11:49:46-07:00'
draft = true
{{< /code-toggle >}}
@z

@x
You can create an archetype for one or more [content types]. For example, use one archetype for posts, and use the default archetype for everything else:
@y
アーキタイプは 1 つあるいは複数の [コンテントタイプ][content types] に対して作ることができます。
たとえば post 生成時には特定のアーキタイプを利用するものとし、それ以外に対してはデフォルトのアーキタイプを利用するといった具合です。
@z

@x
```text
archetypes/
├── default.md
└── posts.md
```
@y
```text
archetypes/
├── default.md
└── posts.md
```
@z

@x
## Lookup order
@y
## 検索順 {#lookup-order}
@z

@x
Hugo looks for archetypes in the `archetypes` directory in the root of your project, falling back to the `archetypes` directory in themes or installed modules. An archetype for a specific content type takes precedence over the default archetype.
@y
Hugo がアーキタイプを探す場所は、プロジェクトのルート配下にある `archetypes` ディレクトリです。
次にテーマあるいはインストールモジュールの `archetypes` ディレクトリを探します。
特定のコンテントタイプに対応するアーキタイプは、デフォルトのアーキタイプよりも優先されます。
@z

@x
For example, with this command:
@y
たとえば以下のコマンドを実行したとします。
@z

@x
```sh
hugo new content posts/my-first-post.md
```
@y
```sh
hugo new content posts/my-first-post.md
```
@z

@x
The archetype lookup order is:
@y
アーキタイプを検索する順は以下となります。
@z

@x
1. archetypes/posts.md
1. archetypes/default.md
1. themes/my-theme/archetypes/posts.md
1. themes/my-theme/archetypes/default.md
@y
1. archetypes/posts.md
1. archetypes/default.md
1. themes/my-theme/archetypes/posts.md
1. themes/my-theme/archetypes/default.md
@z

@x
If none of these exists, Hugo uses a built-in default archetype.
@y
そのどれもが見つからなかった場合、Hubo はあらかじめ用意しているデフォルトのアーキタイプを用います。
@z

@x
## Functions and context
@y
## 関数とコンテキスト {#functions-and-context}
@z

@x
You can use any [template function] within an archetype. As shown above, the default archetype uses the [`replace`](/functions/strings/replace) function to replace hyphens with spaces when populating the title in front matter.
@y
アーキタイプ内では [テンプレート関数][template function] を利用できます。
上で示したように、デフォルトのアーキタイプ内では [`replace`](/functions/strings/replace) 関数を使っていて、そこではフロントマター内のタイトルを生成するにあたり、ハイフンをスペース文字に置換することを行っています。
@z

@x
Archetypes receive the following [context]:
@y
アーキタイプは以下の [コンテキスト][context] (context) を受け取ります。
@z

@x
Date
: (`string`) The current date and time, formatted in compliance with RFC3339.
@y
Date
: (`string`) The current date and time, formatted in compliance with RFC3339.
@z

@x
File
: (`hugolib.fileInfo`) Returns file information for the current page. See [details](/methods/page/file).
@y
File
: (`hugolib.fileInfo`) Returns file information for the current page. See [details](/methods/page/file).
@z

@x
Type
: (`string`) The [content type] inferred from the top-level directory name, or as specified by the `--kind` flag passed to the `hugo new content` command.

[content type]: /getting-started/glossary#content-type
@y
Type
: (`string`) The [content type] inferred from the top-level directory name, or as specified by the `--kind` flag passed to the `hugo new content` command.

[content type]: /getting-started/glossary#content-type
@z

@x
Site
: (`page.Site`) The current site object. See [details](/methods/site/).
@y
Site
: (`page.Site`) The current site object. See [details](/methods/site/).
@z

% snip URLs...

@x
## Alternate date format
@y
## Alternate date format
@z

@x
To insert date and time with an altnerate format, use the [`time.Now`] function:

[`time.Now`]: /functions/time/now/
@y
To insert date and time with an altnerate format, use the [`time.Now`] function:

[`time.Now`]: /functions/time/now/
@z

@x
{{< code-toggle file=archetypes/default.md fm=true >}}
title = '{{ replace .File.ContentBaseName `-` ` ` | title }}'
date = '{{ time.Now.Format "2006-01-02" }}'
draft = true
{{< /code-toggle >}}
@y
{{< code-toggle file=archetypes/default.md fm=true >}}
title = '{{ replace .File.ContentBaseName `-` ` ` | title }}'
date = '{{ time.Now.Format "2006-01-02" }}'
draft = true
{{< /code-toggle >}}
@z

@x
## Include content
@y
## コンテントを含むアーキタイプ {#include-content}
@z

@x
Although typically used as a front matter template, you can also use an archetype to populate content.
@y
アーキタイプはフロントマターのテンプレートとして利用するのが普通ですが、これをコンテント生成のために利用することもできます。
@z

@x
For example, in a documentation site you might have a section (content type) for functions. Every page within this section should follow the same format: a brief description, the function signature, examples, and notes. We can pre-populate the page to remind content authors of the standard format.
@y
たとえばドキュメントサイトを構築しているものとして、関数に対するセクション (コンテントタイプ) を生成するものとします。
そのセクションの下で作られるページは同一のフォーマットに従うはずです。
たとえば概要説明、関数構文、利用例、備考などといった具合です。
コンテント作者が標準的なフォーマットを忘れないようにするため、ページの構成を事前に与えておくことができます。
@z

@x
{{< code file=archetypes/functions.md >}}
---
date: '{{ .Date }}'
draft: true
title: '{{ replace .File.ContentBaseName `-` ` ` | title }}'
---
@y
{{< code file=archetypes/functions.md >}}
---
date: '{{ .Date }}'
draft: true
title: '{{ replace .File.ContentBaseName `-` ` ` | title }}'
---
@z

@x
A brief description of what the function does, using simple present tense in the third person singular form. For example:
@y
関数の動作に関する簡単な説明。三人称単数、現在形を利用。たとえば以下のとおり。
@z

@x
`someFunction` returns the string `s` repeated `n` times.
@y
`someFunction` は文字列 `s` を `n` 回繰り返して返す。
@z

@x
## Signature
@y
## 関数構文
@z

@x
```text
func someFunction(s string, n int) string
```
@y
```text
func someFunction(s string, n int) string
```
@z

@x
## Examples
@y
## 利用例
@z

@x
One or more practical examples, each within a fenced code block.
@y
1 つまたはそれ以上の利用例を、それぞれ枠囲いのコードブロックにより表現。
@z

@x
## Notes
@y
## 備考
@z

@x
Additional information to clarify as needed.
{{< /code >}}
@y
必要に応じて内容を明らかにする追加の情報。
{{< /code >}}
@z

@x
Although you can include [template actions] within the content body, remember that Hugo evaluates these once---at the time of content creation. In most cases, place template actions in a [template] where Hugo evaluates the actions every time you [build](/getting-started/glossary/#build) the site.
@y
このコンテントの本文中に [テンプレートアクション][template actions] を含めることもできます。
ただし Hugo がそれを処理するのは一度きり、つまりコンテント生成時のみであることを忘れないでください。
普通、テンプレートアクションは [テンプレート][template] 内に置きます。
そうすることで Hugo がサイトを [ビルド](/getting-started/glossary/#build) するたびに、そのアクションを評価します。
@z

@x
## Leaf bundles
@y
## リーフバンドル {#leaf-bundles}
@z

@x
You can also create archetypes for [leaf bundles](/getting-started/glossary/#leaf-bundle).
@y
You can also create archetypes for [leaf bundles](/getting-started/glossary/#leaf-bundle).
@z

@x
For example, in a photography site you might have a section (content type) for galleries. Each gallery is leaf bundle with content and images.
@y
For example, in a photography site you might have a section (content type) for galleries. Each gallery is leaf bundle with content and images.
@z

@x
Create an archetype for galleries:
@y
Create an archetype for galleries:
@z

@x
```text
archetypes/
├── galleries/
│   ├── images/
│   │   └── .gitkeep
│   └── index.md      <-- same format as default.md
└── default.md
```
@y
```text
archetypes/
├── galleries/
│   ├── images/
│   │   └── .gitkeep
│   └── index.md      <-- same format as default.md
└── default.md
```
@z

@x
Subdirectories within an archetype must contain at least one file. Without a file, Hugo will not create the subdirectory when you create new content. The name and size of the file are irrelevant. The example above includes a&nbsp;`.gitkeep` file, an empty file commonly used to preserve otherwise empty directories in a Git repository.
@y
Subdirectories within an archetype must contain at least one file. Without a file, Hugo will not create the subdirectory when you create new content. The name and size of the file are irrelevant. The example above includes a&nbsp;`.gitkeep` file, an empty file commonly used to preserve otherwise empty directories in a Git repository.
@z

@x
To create a new gallery:
@y
To create a new gallery:
@z

@x
```sh
hugo new galleries/bryce-canyon
```
@y
```sh
hugo new galleries/bryce-canyon
```
@z

@x
This produces:
@y
This produces:
@z

@x
```text
content/
├── galleries/
│   └── bryce-canyon/
│       ├── images/
│       │   └── .gitkeep
│       └── index.md
└── _index.md
```
@y
```text
content/
├── galleries/
│   └── bryce-canyon/
│       ├── images/
│       │   └── .gitkeep
│       └── index.md
└── _index.md
```
@z

@x
## Use alternate archetype
@y
## 別のアーキタイプの利用 {#use-alternate-archetype}
@z

@x
Use the `--kind` command line flag to specify an alternate archetype when creating content.
@y
コマンドラインフラグ `--kind` を利用すると、コンテント生成時に別のアーキタイプを指定することができます。
@z

@x
For example, let's say your site has two sections: articles and tutorials. Create an archetype for each content type:
@y
たとえばサイト上に 2 つのセクション、つまり記事 (article) とチュートリアル (tutorial) があるとします。
この 2 つのコンテントタイプごとにアーキタイプを生成します。
@z

@x
```text
archetypes/
├── articles.md
├── default.md
└── tutorials.md
```
@y
```text
archetypes/
├── articles.md
├── default.md
└── tutorials.md
```
@z

@x
To create an article using the articles archetype:
@y
そして記事向けのアーキタイプを使って記事を生成します。
@z

@x
```sh
hugo new content articles/something.md
```
@y
```sh
hugo new content articles/something.md
```
@z

@x
To create an article using the tutorials archetype:
@y
次にチュートリアル向けのアーキタイプを使って記事を生成します。
@z

@x
```sh
hugo new content --kind tutorials articles/something.md
```
@y
```sh
hugo new content --kind tutorials articles/something.md
```
@z

@x
[content formats]: /getting-started/glossary/#content-format
[content types]: /getting-started/glossary/#content-type
[context]: /getting-started/glossary/#context
[front matter]: /getting-started/glossary/#front-matter
[template actions]: /getting-started/glossary/#template-action
[template]: /getting-started/glossary/#template
[template function]: /getting-started/glossary/#function
@y
[content formats]: /getting-started/glossary/#content-format
[content types]: /getting-started/glossary/#content-type
[context]: /getting-started/glossary/#context
[front matter]: /getting-started/glossary/#front-matter
[template actions]: /getting-started/glossary/#template-action
[template]: /getting-started/glossary/#template
[template function]: /getting-started/glossary/#function
@z
