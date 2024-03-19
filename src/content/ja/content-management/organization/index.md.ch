%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Content organization
linkTitle: Organization
description: Hugo assumes that the same structure that works to organize your source content is used to organize the rendered site.
categories: [content management,fundamentals]
keywords: [sections,content,organization,bundle,resources]
@y
title: コンテントの構成
linkTitle: コンテントの構成
description: Hugo では、ソースコンテントを構築するための構成をそのままレンダリングサイトにも適用するものとしています。
categories: [content management,fundamentals]
keywords: [sections,content,organization,bundle,resources]
@z

@x
## Page bundles
@y
## ページバンドル {#page-bundles}
@z

@x
Hugo `0.32` announced page-relative images and other resources packaged into `Page Bundles`.
@y
Hugo `0.32` では、ページに関連するイメージやリソースは `ページバンドル` (Page Bundle) としてパッケージされることが発表されました。
@z

@x
These terms are connected, and you also need to read about [Page Resources](/content-management/page-resources) and [Image Processing](/content-management/image-processing) to get the full picture.
@y
このあたりの用語は相互に関連づいているので、全体像を把握するためには [ページリソース](/content-management/page-resources) (Page Resource) や [イメージ処理](/content-management/image-processing) (Image Processing) といった用語について確認する必要があります。
@z

@x
{{< imgproc "1-featured-content-bundles.png" "resize 300x" >}}
The illustration shows three bundles. Note that the home page bundle cannot contain other content pages, although other files (images etc.) are allowed.
{{< /imgproc >}}
@y
{{< imgproc "1-featured-content-bundles.png" "resize 300x" >}}
この図では 3 つのバンドルを示しています。なおホームページバンドルには他のコンテントページは含まれていません。その他のファイル (イメージなど) については含めることができます。
{{< /imgproc >}}
@z

@x
{{% note %}}
The bundle documentation is a **work in progress**. We will publish more comprehensive docs about this soon.
{{% /note %}}
@y
{{% note %}}
バンドルに関するドキュメントは **制作途中** です。
分かりやすいドキュメントをすぐに提供する予定です。
{{% /note %}}
@z

@x
## Organization of content source
@y
## コンテントソースの構成 {#organization-of-content-source}
@z

@x
In Hugo, your content should be organized in a manner that reflects the rendered website.
@y
Hugo におけるコンテントは、レンダリングされるウェブサイトを反映する形に構成することが必要です。
@z

@x
While Hugo supports content nested at any level, the top levels (i.e. `content/<DIRECTORIES>`) are special in Hugo and are considered the content type used to determine layouts etc. To read more about sections, including how to nest them, see [sections].
@y
Hugo はどの階層レベルであってもコンテントをネストして配置することをサポートしていますが、トップレベル (つまり `content/<DIRECTORIES>`) だけは特別です。
そのディレクトリ名がレイアウトなどとしてコンテントタイプを決定するものとなります。
セクションに関する詳細、特にそのネスト方法については [セクション][sections] を参照してください。
@z

@x
Without any additional configuration, the following will automatically work:
@y
追加の設定を行うまでもなく、以下の構成は自動的に解釈されます。
@z

@x
```txt
.
└── content
    └── about
    |   └── index.md  // <- https://example.org/about/
    ├── posts
    |   ├── firstpost.md   // <- https://example.org/posts/firstpost/
    |   ├── happy
    |   |   └── ness.md  // <- https://example.org/posts/happy/ness/
    |   └── secondpost.md  // <- https://example.org/posts/secondpost/
    └── quote
        ├── first.md       // <- https://example.org/quote/first/
        └── second.md      // <- https://example.org/quote/second/
```
@y
```txt
.
└── content
    └── about
    |   └── index.md  // <- https://example.org/about/
    ├── posts
    |   ├── firstpost.md   // <- https://example.org/posts/firstpost/
    |   ├── happy
    |   |   └── ness.md  // <- https://example.org/posts/happy/ness/
    |   └── secondpost.md  // <- https://example.org/posts/secondpost/
    └── quote
        ├── first.md       // <- https://example.org/quote/first/
        └── second.md      // <- https://example.org/quote/second/
```
@z

@x
## Path breakdown in Hugo
@y
## Hugo によるパスの解釈 {#path-breakdown-in-hugo}
@z

@x
The following demonstrates the relationships between your content organization and the output URL structure for your Hugo website when it renders. These examples assume you are [using pretty URLs][pretty], which is the default behavior for Hugo. The examples also assume a key-value of `baseURL = "https://example.org"` in your [site's configuration file][config].
@y
これ以降に例示を行って、Hugo がウェブサイトをレンダリングする際のコンテント構成と出力 URL 構造との関連性を明らかにします。
例示にあたっては [プリティー URL][pretty] (pretty URL) を用いるものとします。
それが Hugo のデフォルト動作であるからです。
また [サイトに対する設定ファイル][config] では `baseURL = "https://example.org"` といったキーバリューによるペア形式での指定を示すものとします。
@z

@x
### Index pages: `_index.md`
@y
### インデックスページ `_index.md` {#index-pages-_indexmd}
@z

@x
`_index.md` has a special role in Hugo. It allows you to add front matter and content to your [list templates][lists]. These templates include those for [section templates], [taxonomy templates], [taxonomy terms templates], and your [homepage template].
@y
Hugo において `_index.md` には特別な役割があります。

It allows you to add front matter and content to your [list templates][lists]. These templates include those for [section templates], [taxonomy templates], [taxonomy terms templates], and your [homepage template].
@z

@x
{{% note %}}
**Tip:** You can get a reference to the content and metadata in `_index.md` using the [`.Site.GetPage` function](/methods/page/getpage).
{{% /note %}}
@y
{{% note %}}
**情報** 

`_index.md` 内の内容やメタデータは [`.Site.GetPage` 関数](/methods/page/getpage) を使って取得することができます。
{{% /note %}}
@z

@x
You can create one `_index.md` for your homepage and one in each of your content sections, taxonomies, and taxonomy terms. The following shows typical placement of an `_index.md` that would contain content and front matter for a `posts` section list page on a Hugo website:
@y
You can create one `_index.md` for your homepage and one in each of your content sections, taxonomies, and taxonomy terms. The following shows typical placement of an `_index.md` that would contain content and front matter for a `posts` section list page on a Hugo website:
@z

@x
```txt
.         url
.       ⊢--^-⊣
.        path    slug
.       ⊢--^-⊣⊢---^---⊣
.           file path
.       ⊢------^------⊣
content/posts/_index.md
```
@y
```txt
.         url
.       ⊢--^-⊣
.        path    slug
.       ⊢--^-⊣⊢---^---⊣
.           file path
.       ⊢------^------⊣
content/posts/_index.md
```
@z

@x
At build, this will output to the following destination with the associated values:
@y
At build, this will output to the following destination with the associated values:
@z

@x
```txt
@y
```txt
@z

@x
                     url ("/posts/")
                    ⊢-^-⊣
       baseurl      section ("posts")
⊢--------^---------⊣⊢-^-⊣
        permalink
⊢----------^-------------⊣
https://example.org/posts/index.html
```
@y
                     url ("/posts/")
                    ⊢-^-⊣
       baseurl      section ("posts")
⊢--------^---------⊣⊢-^-⊣
        permalink
⊢----------^-------------⊣
https://example.org/posts/index.html
```
@z

@x
The [sections] can be nested as deeply as you want. The important thing to understand is that to make the section tree fully navigational, at least the lower-most section must include a content file. (i.e. `_index.md`).
@y
The [sections] can be nested as deeply as you want. The important thing to understand is that to make the section tree fully navigational, at least the lower-most section must include a content file. (i.e. `_index.md`).
@z

@x
### Single pages in sections
@y
### Single pages in sections
@z

@x
Single content files in each of your sections will be rendered as [single page templates][singles]. Here is an example of a single `post` within `posts`:
@y
Single content files in each of your sections will be rendered as [single page templates][singles]. Here is an example of a single `post` within `posts`:
@z

@x
```txt
                   path ("posts/my-first-hugo-post.md")
.       ⊢-----------^------------⊣
.      section        slug
.       ⊢-^-⊣⊢--------^----------⊣
content/posts/my-first-hugo-post.md
```
@y
```txt
                   path ("posts/my-first-hugo-post.md")
.       ⊢-----------^------------⊣
.      section        slug
.       ⊢-^-⊣⊢--------^----------⊣
content/posts/my-first-hugo-post.md
```
@z

@x
When Hugo builds your site, the content will be output to the following destination:
@y
When Hugo builds your site, the content will be output to the following destination:
@z

@x
```txt
@y
```txt
@z

@x
                               url ("/posts/my-first-hugo-post/")
                   ⊢------------^----------⊣
       baseurl     section     slug
⊢--------^--------⊣⊢-^--⊣⊢-------^---------⊣
                 permalink
⊢--------------------^---------------------⊣
https://example.org/posts/my-first-hugo-post/index.html
```
@y
                               url ("/posts/my-first-hugo-post/")
                   ⊢------------^----------⊣
       baseurl     section     slug
⊢--------^--------⊣⊢-^--⊣⊢-------^---------⊣
                 permalink
⊢--------------------^---------------------⊣
https://example.org/posts/my-first-hugo-post/index.html
```
@z

@x
## Paths explained
@y
## Paths explained
@z

@x
The following concepts provide more insight into the relationship between your project's organization and the default Hugo behavior when building output for the website.
@y
The following concepts provide more insight into the relationship between your project's organization and the default Hugo behavior when building output for the website.
@z

@x
### `section`
@y
### `section`
@z

@x
A default content type is determined by the section in which a content item is stored. `section` is determined by the location within the project's `content` directory. `section` *cannot* be specified or overridden in front matter.
@y
A default content type is determined by the section in which a content item is stored. `section` is determined by the location within the project's `content` directory. `section` *cannot* be specified or overridden in front matter.
@z

@x
### `slug`
@y
### `slug`
@z

@x
The `slug` is the last segment of the URL path, defined by the file name and optionally overridden by a `slug` value in front matter. See [URL Management](/content-management/urls/#slug) for details.
@y
The `slug` is the last segment of the URL path, defined by the file name and optionally overridden by a `slug` value in front matter. See [URL Management](/content-management/urls/#slug) for details.
@z

@x
### `path`
@y
### `path`
@z

@x
A content's `path` is determined by the section's path to the file. The file `path`
@y
A content's `path` is determined by the section's path to the file. The file `path`
@z

@x
* is based on the path to the content's location AND
* does not include the slug
@y
* is based on the path to the content's location AND
* does not include the slug
@z

@x
### `url`
@y
### `url`
@z

@x
The `url` is the entire URL path, defined by the file path and optionally overridden by a `url` value in front matter. See [URL Management](/content-management/urls/#slug) for details.
@y
The `url` is the entire URL path, defined by the file path and optionally overridden by a `url` value in front matter. See [URL Management](/content-management/urls/#slug) for details.
@z

% snip URLs...
