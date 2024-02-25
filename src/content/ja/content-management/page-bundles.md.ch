%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Page bundles
description: Content organization using Page Bundles
categories: [content management]
keywords: [page,bundle,leaf,branch]
@y
title: ページバンドル
description: ページバンドルを使ったコンテントの構成。
categories: [content management]
keywords: [page,bundle,leaf,branch]
@z

@x
Page Bundles are a way to group [Page Resources](/content-management/page-resources/).
@y
ページバンドル (page bundle) とは [ページリソース](/content-management/page-resources/) をグルーピングする方法のことです。
@z

@x
A Page Bundle can be one of:
@y
一つのページバンドルには以下を含めることができます。
@z

@x
- Leaf Bundle (leaf means it has no children)
- Branch Bundle (home page, section, taxonomy terms, taxonomy list)
@y
- リーフバンドル (leaf bundle) (リーフ＝葉は、子を持たないことを意味します。)
- ブランチハンドル (branch bundle) (ホームページ、セクション、分類語、分類リストを表します。)
@z

@x
|                                     | Leaf Bundle                                              | Branch Bundle                                                                                   |
|-------------------------------------|----------------------------------------------------------|-------------------------------------------------------------------------------------------------|
| Usage                               | Collection of content and attachments for single pages   | Collection of attachments for section pages (home page, section, taxonomy terms, taxonomy list) |
| Index file name                     | `index.md` [^fn:1]                                       | `_index.md` [^fn:1]                                                                             |
| Allowed Resources                   | Page and non-page (like images, PDF, etc.) types         | Only non-page (like images, PDF, etc.) types                                                    |
| Where can the Resources live?       | At any directory level within the leaf bundle directory. | At any directory level within the branch bundle directory.                                      |
| Layout type                         | [`single`](/templates/single-page-templates/)            | [`list`](/templates/lists)                                                                      |
| Nesting                             | Does not allow nesting of more bundles under it          | Allows nesting of leaf or branch bundles under it                                               |
| Example                             | `content/posts/my-post/index.md`                         | `content/posts/_index.md`                                                                       |
| Content from non-index page files...| Accessed only as page resources                          | Accessed only as regular pages                                                                  |
@y
|                                     | リーフバンドル                                           | ブランチバンドル                                                                                                                                                                                                   |
|-------------------------------------|----------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 利用方法                            | Collection of content and attachments for single pages   | Collection of attachments for section pages (home page, section, taxonomy terms, taxonomy list)                                                                                                                    |
| インデックスファイル名              | `index.md` [^fn:1]                                       | `_index.md` [^fn:1]                                                                                                                                                                                                |
| 含められるリソース                  | ページタイプおよび非ページタイプ (イメージ、PDF など)    | Only non-page (like images, PDF, etc.) types                                                                                                                                                                       |
| Where can the Resources live?       | At any directory level within the leaf bundle directory. | At any directory level within the branch bundle directory.                                      |
| レイアウトタイプ                    | [`single`](/templates/single-page-templates/)            | [`list`](/templates/lists)                                                                      |
| ネスト化                            | Does not allow nesting of more bundles under it          | Allows nesting of leaf or branch bundles under it                                               |
| 例                                  | `content/posts/my-post/index.md`                         | `content/posts/_index.md`                                                                       |
| Content from non-index page files...| Accessed only as page resources                          | Accessed only as regular pages                                                                  |
@z

@x
## Leaf bundles
@y
## リーフバンドル {#leaf-bundles}
@z

@x
A _Leaf Bundle_ is a directory at any hierarchy within the `content/`
directory, that contains an **`index.md`** file.
@y
*リーフバンドル* (leaf bundle) とは `content/` ディレクトリ配下の任意の階層にあるディレクトリのことです。
そこには **`index.md`** ファイルを含めます。
@z

@x
### Examples of leaf bundle organization {#examples-of-leaf-bundle-organization}
@y
### リーフバンドルの構成例 {#examples-of-leaf-bundle-organization}
@z

@x
```text
content/
├── about
│   ├── index.md
├── posts
│   ├── my-post
│   │   ├── content1.md
│   │   ├── content2.md
│   │   ├── image1.jpg
│   │   ├── image2.png
│   │   └── index.md
│   └── my-other-post
│       └── index.md
│
└── another-section
    ├── ..
    └── not-a-leaf-bundle
        ├── ..
        └── another-leaf-bundle
            └── index.md
```
@y
```text
content/
├── about
│   ├── index.md
├── posts
│   ├── my-post
│   │   ├── content1.md
│   │   ├── content2.md
│   │   ├── image1.jpg
│   │   ├── image2.png
│   │   └── index.md
│   └── my-other-post
│       └── index.md
│
└── another-section              (別のセクション)
    ├── ..
    └── not-a-leaf-bundle        (リーフではないバンドル)
        ├── ..
        └── another-leaf-bundle  (別のリーフバンドル)
            └── index.md
```
@z

@x
In the above example `content/` directory, there are four leaf
bundles:
@y
上に示す例において `content/` ディレクトリには 4 つのリーフバンドルがあります。
@z

@x
about
: This leaf bundle is at the root level (directly under
    `content` directory) and has only the `index.md`.
@y
about
: このリーフバンドルはルートレベル (`content` ディレクトリの直下) にあり、`index.md` のみを持っています。
@z

@x
my-post
: This leaf bundle has the `index.md`, two other content
    Markdown files and two image files.
@y
my-post
: このリーフバンドルは `index.md` と別の 2 つのマークダウンファイル、そして 2 つのイメージファイルを持っています。
@z

@x
- image1, image2:
These images are page resources of `my-post`
    and only available in `my-post/index.md` resources.
@y
- image1, image2:
この 2 つのイメージは `my-post` に属するページリソースです。
そして `my-post/index.md` リソースからのみ利用可能なものです。
@z

@x
- content1, content2:
These content files are page resources of `my-post`
    and only available in `my-post/index.md` resources.
    They will **not** be rendered as individual pages.
@y
- content1, content2:
この 2 つのコンテントファイルは `my-post` に属するページリソースです。
そして `my-post/index.md` リソースからのみ利用可能なものです。
これは個別のページとしてレンダリングされるものでは *ありません*。
@z

@x
my-other-post
: This leaf bundle has only the `index.md`.
@y
my-other-post
: このリーフバンドルは `index.md` のみを持っています。
@z

@x
another-leaf-bundle
: This leaf bundle is nested under couple of
    directories. This bundle also has only the `index.md`.
@y
another-leaf-bundle
: このリーフバンドルは、数個のディレクトリ下にネスト化されています
  このバンドルも `index.md` のみを持っています。
@z

@x
{{% note %}}
The hierarchy depth at which a leaf bundle is created does not matter,
as long as it is not inside another **leaf** bundle.
{{% /note %}}
@y
{{% note %}}
リーフバンドルを作り出す階層は、それが他のリーフバンドルの配下に置かれるものでない限り、どれだけ深くなっても問題ありません。
{{% /note %}}
@z

@x
### Headless bundle
@y
### ヘッドレスバンドル {#headless-bundle}
@z

@x
A headless bundle is a bundle that is configured to not get published
anywhere:
@y
ヘッドレスバンドル (headless bundle) とは、どこにも公開しないものとして設定するバンドルです。
@z

@x
- It will have no `Permalink` and no rendered HTML in `public/`.
- It will not be part of `.Site.RegularPages`, etc.
@y
- `Permalink` を持ちません。また `public/` に HTML はレンダリングされません。
- `.Site.RegularPages` などの返り値に含まれません。
@z

@x
But you can get it by `.Site.GetPage`. Here is an example:
@y
ただし `.Site.GetPage` を使えば取得することができます。
以下がその例です。
@z

@x
```go-html-template
{{ $headless := .Site.GetPage "/some-headless-bundle" }}
{{ $reusablePages := $headless.Resources.Match "author*" }}
<h2>Authors</h2>
{{ range $reusablePages }}
    <h3>{{ .Title }}</h3>
    {{ .Content }}
{{ end }}
```
@y
```go-html-template
{{ $headless := .Site.GetPage "/some-headless-bundle" }}
{{ $reusablePages := $headless.Resources.Match "author*" }}
<h2>Authors</h2>
{{ range $reusablePages }}
    <h3>{{ .Title }}</h3>
    {{ .Content }}
{{ end }}
```
@z

@x
_In this example, we are assuming the `some-headless-bundle` to be a headless
   bundle containing one or more **page** resources whose `.Name` matches
   `"author*"`._
@y
_In this example, we are assuming the `some-headless-bundle` to be a headless
   bundle containing one or more **page** resources whose `.Name` matches
   `"author*"`._
@z

@x
Explanation of the above example:
@y
上記例についての説明
@z

@x
1. Get the `some-headless-bundle` Page "object".
2. Collect a _slice_ of resources in this _Page Bundle_ that matches
   `"author*"` using `.Resources.Match`.
3. Loop through that _slice_ of nested pages, and output their `.Title` and
   `.Content`.
@y
1. Get the `some-headless-bundle` Page "object".
2. Collect a _slice_ of resources in this _Page Bundle_ that matches
   `"author*"` using `.Resources.Match`.
3. Loop through that _slice_ of nested pages, and output their `.Title` and
   `.Content`.
@z

@x
---
@y
---
@z

@x
A leaf bundle can be made headless by adding below in the front matter
(in the `index.md`):
@y
A leaf bundle can be made headless by adding below in the front matter
(in the `index.md`):
@z

@x
{{< code-toggle file=content/headless/index.md fm=true >}}
headless = true
{{< /code-toggle >}}
@y
{{< code-toggle file=content/headless/index.md fm=true >}}
headless = true
{{< /code-toggle >}}
@z

@x
There are many use cases of such headless page bundles:
@y
There are many use cases of such headless page bundles:
@z

@x
- Shared media galleries
- Reusable page content "snippets"
@y
- Shared media galleries
- Reusable page content "snippets"
@z

@x
## Branch bundles
@y
## ブランチバンドル {#branch-bundles}
@z

@x
A _Branch Bundle_ is any directory at any hierarchy within the
`content/` directory, that contains at least an **`_index.md`** file.
@y
A _Branch Bundle_ is any directory at any hierarchy within the
`content/` directory, that contains at least an **`_index.md`** file.
@z

@x
This `_index.md` can also be directly under the `content/` directory.
@y
This `_index.md` can also be directly under the `content/` directory.
@z

@x
{{% note %}}
Here `md` (Markdown) is used just as an example. You can use any file
type as a content resource as long as it is a content type recognized by Hugo.
{{% /note %}}
@y
{{% note %}}
Here `md` (Markdown) is used just as an example. You can use any file
type as a content resource as long as it is a content type recognized by Hugo.
{{% /note %}}
@z

@x
### Examples of branch bundle organization
@y
### Examples of branch bundle organization
@z

@x
```text
content/
├── branch-bundle-1
│   ├── branch-content1.md
│   ├── branch-content2.md
│   ├── image1.jpg
│   ├── image2.png
│   └── _index.md
└── branch-bundle-2
    ├── _index.md
    └── a-leaf-bundle
        └── index.md
```
@y
```text
content/
├── branch-bundle-1
│   ├── branch-content1.md
│   ├── branch-content2.md
│   ├── image1.jpg
│   ├── image2.png
│   └── _index.md
└── branch-bundle-2
    ├── _index.md
    └── a-leaf-bundle
        └── index.md
```
@z

@x
In the above example `content/` directory, there are two branch
bundles (and a leaf bundle):
@y
In the above example `content/` directory, there are two branch
bundles (and a leaf bundle):
@z

@x
branch-bundle-1
: This branch bundle has the `_index.md`, two
    other content Markdown files and two image files.
@y
branch-bundle-1
: This branch bundle has the `_index.md`, two
    other content Markdown files and two image files.
@z

@x
branch-bundle-2
: This branch bundle has the `_index.md` and a
    nested leaf bundle.
@y
branch-bundle-2
: This branch bundle has the `_index.md` and a
    nested leaf bundle.
@z

@x
{{% note %}}
The hierarchy depth at which a branch bundle is created does not
matter.
{{% /note %}}
@y
{{% note %}}
The hierarchy depth at which a branch bundle is created does not
matter.
{{% /note %}}
@z

@x
[^fn:1]: The `.md` extension is just an example. The extension can be `.html`, `.json` or any valid MIME type.
@y
[^fn:1]: The `.md` extension is just an example. The extension can be `.html`, `.json` or any valid MIME type.
@z
