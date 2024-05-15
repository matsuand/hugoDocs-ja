%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Page resources
description: Page resources -- images, other pages, documents, etc. -- have page-relative URLs and their own metadata.
categories: [content management]
keywords: [bundle,content,resources]
@y
title: ページリソース
description: イメージ、別ページ、ドキュメントなどのページリソースには、ページへの相対的な URL があり、個別にメタデータを持ちます。
categories: [content management]
keywords: [bundle,content,resources]
@z

@x
Page resources are only accessible from [page bundles](/content-management/page-bundles), those directories with `index.md` or
`_index.md` files at their root. Page resources are only available to the
page with which they are bundled.
@y
ページリソース (page resource) は [ページバンドル](/content-management/page-bundles) (page bundle) からしかアクセスできません。
これを配置するディレクトリには、そのルートに `index.md` か `_index.md` を置きます。
ページリソースは、これをバンドルしているページでのみ利用可能です。
@z

@x
In this example, `first-post` is a page bundle with access to 10 page resources including audio, data, documents, images, and video. Although `second-post` is also a page bundle, it has no page resources and is unable to directly access the page resources associated with `first-post`.
@y
以下の例において `first-post` はページバンドルであり、10 個のページリソースにアクセスしています。
そのリソースとは具体的に、オーディオ、データ、ドキュメント、イメージ、ビデオです。
一方 `second-post` もページバンドルですが、ここにはページリソースがありません。
このバンドルから `first-post` に関連づけられたページリソースに直接アクセスすることはできません。
@z

@x within text
    │   ├── index.md (root of page bundle)
@y
    │   ├── index.md (ページバンドルのルート)
@z
@x
        └── index.md (root of page bundle)
@y
        └── index.md (ページバンドルのルート)
@z

@x
## Properties
@y
## プロパティ {#properties}
@z

@x
ResourceType
: The main type of the resource's [Media Type](/templates/output-formats/#media-types). For example, a file of MIME type `image/jpeg` has the ResourceType `image`. A `Page` will have `ResourceType` with value `page`.
@y
ResourceType
: The main type of the resource's [Media Type](/templates/output-formats/#media-types). For example, a file of MIME type `image/jpeg` has the ResourceType `image`. A `Page` will have `ResourceType` with value `page`.
@z

@x
Name
: Default value is the file name (relative to the owning page). Can be set in front matter.
@y
Name
: Default value is the file name (relative to the owning page). Can be set in front matter.
@z

@x
Title
: Default value is the same as `.Name`. Can be set in front matter.
@y
Title
: デフォルトは `.Name` と同じ。フロントマターで設定可。
@z

@x
Permalink
: The absolute URL to the resource. Resources of type `page` will have no value.
@y
Permalink
: リソースの絶対 URL。`page` タイプのリソースは値を持ちません。
@z

@x
RelPermalink
: The relative URL to the resource. Resources of type `page` will have no value.
@y
RelPermalink
: リソースの相対 URL。`page` タイプのリソースは値を持ちません。
@z

@x
Content
: The content of the resource itself. For most resources, this returns a string
with the contents of the file. Use this to create inline resources.
@y
Content
: リソースの内容そのもの。For most resources, this returns a string
with the contents of the file. Use this to create inline resources.
@z

@x
```go-html-template
{{ with .Resources.GetMatch "script.js" }}
  <script>{{ .Content | safeJS }}</script>
{{ end }}
@y
```go-html-template
{{ with .Resources.GetMatch "script.js" }}
  <script>{{ .Content | safeJS }}</script>
{{ end }}
@z

@x
{{ with .Resources.GetMatch "style.css" }}
  <style>{{ .Content | safeCSS }}</style>
{{ end }}
@y
{{ with .Resources.GetMatch "style.css" }}
  <style>{{ .Content | safeCSS }}</style>
{{ end }}
@z

@x
{{ with .Resources.GetMatch "img.png" }}
  <img src="data:{{ .MediaType.Type }};base64,{{ .Content | base64Encode }}">
{{ end }}
```
@y
{{ with .Resources.GetMatch "img.png" }}
  <img src="data:{{ .MediaType.Type }};base64,{{ .Content | base64Encode }}">
{{ end }}
```
@z

@x
MediaType.Type
: The media type (formerly known as a MIME type) of the resource (e.g., `image/jpeg`).
@y
MediaType.Type
: The media type (formerly known as a MIME type) of the resource (e.g., `image/jpeg`).
@z

@x
MediaType.MainType
: The main type of the resource's media type (e.g., `image`).
@y
MediaType.MainType
: The main type of the resource's media type (e.g., `image`).
@z

@x
MediaType.SubType
: The subtype of the resource's type (e.g., `jpeg`). This may or may not correspond to the file suffix.
@y
MediaType.SubType
: The subtype of the resource's type (e.g., `jpeg`). This may or may not correspond to the file suffix.
@z

@x
MediaType.Suffixes
: A slice of possible file suffixes for the resource's media type (e.g., `[jpg jpeg jpe jif jfif]`).
@y
MediaType.Suffixes
: A slice of possible file suffixes for the resource's media type (e.g., `[jpg jpeg jpe jif jfif]`).
@z

@x
## Methods
@y
## メソッド {#methods}
@z

@x
ByType
: Returns the page resources of the given type.
@y
ByType
: 指定されたタイプのページリソースを返します。
@z

% snip code...

@x
Match
: Returns all the page resources (as a slice) whose `Name` matches the given Glob pattern ([examples](https://github.com/gobwas/glob/blob/master/readme.md)). The matching is case-insensitive.
@y
Match
: Returns all the page resources (as a slice) whose `Name` matches the given Glob pattern ([examples](https://github.com/gobwas/glob/blob/master/readme.md)). The matching is case-insensitive.
@z

% snip code...

@x
GetMatch
: Same as `Match` but will return the first match.
@y
GetMatch
: Same as `Match` but will return the first match.
@z

@x
### Pattern matching
@y
### パターンマッチング {#pattern-matching}
@z

@x
```go
// Using Match/GetMatch to find this images/sunset.jpg ?
.Resources.Match "images/sun*" ✅
.Resources.Match "**/sunset.jpg" ✅
.Resources.Match "images/*.jpg" ✅
.Resources.Match "**.jpg" ✅
.Resources.Match "*" 🚫
.Resources.Match "sunset.jpg" 🚫
.Resources.Match "*sunset.jpg" 🚫
```
@y
```go
// Using Match/GetMatch to find this images/sunset.jpg ?
.Resources.Match "images/sun*" ✅
.Resources.Match "**/sunset.jpg" ✅
.Resources.Match "images/*.jpg" ✅
.Resources.Match "**.jpg" ✅
.Resources.Match "*" 🚫
.Resources.Match "sunset.jpg" 🚫
.Resources.Match "*sunset.jpg" 🚫
```
@z

@x
## Metadata
@y
## メタデータ {#metadata}
@z

@x
The page resources' metadata is managed from the corresponding page's front matter with an array/table parameter named `resources`. You can batch assign values using [wildcards](https://tldp.org/LDP/GNU-Linux-Tools-Summary/html/x11655.htm).
@y
The page resources' metadata is managed from the corresponding page's front matter with an array/table parameter named `resources`. You can batch assign values using [wildcards](https://tldp.org/LDP/GNU-Linux-Tools-Summary/html/x11655.htm).
@z

@x
{{% note %}}
Resources of type `page` get `Title` etc. from their own front matter.
{{% /note %}}
@y
{{% note %}}
Resources of type `page` get `Title` etc. from their own front matter.
{{% /note %}}
@z

@x
name
: Sets the value returned in `Name`.
@y
name
: Sets the value returned in `Name`.
@z

@x
{{% note %}}
The methods `Match`, `Get` and `GetMatch` use `Name` to match the resources.
{{% /note %}}
@y
{{% note %}}
The methods `Match`, `Get` and `GetMatch` use `Name` to match the resources.
{{% /note %}}
@z

@x
title
: Sets the value returned in `Title`
@y
title
: Sets the value returned in `Title`
@z

@x
params
: A map of custom key-value pairs.
@y
params
: A map of custom key-value pairs.
@z

@x
### Resources metadata example
@y
### リソースのメタデータ例 {#resources-metadata-example}
@z

@x
{{< code-toggle >}}
title: Application
date : 2018-01-25
resources :
- src : "images/sunset.jpg"
  name : "header"
- src : "documents/photo_specs.pdf"
  title : "Photo Specifications"
  params:
    icon : "photo"
- src : "documents/guide.pdf"
  title : "Instruction Guide"
- src : "documents/checklist.pdf"
  title : "Document Checklist"
- src : "documents/payment.docx"
  title : "Proof of Payment"
- src : "**.pdf"
  name : "pdf-file-:counter"
  params :
    icon : "pdf"
- src : "**.docx"
  params :
    icon : "word"
{{</ code-toggle >}}
@y
{{< code-toggle >}}
title: Application
date : 2018-01-25
resources :
- src : "images/sunset.jpg"
  name : "header"
- src : "documents/photo_specs.pdf"
  title : "Photo Specifications"
  params:
    icon : "photo"
- src : "documents/guide.pdf"
  title : "Instruction Guide"
- src : "documents/checklist.pdf"
  title : "Document Checklist"
- src : "documents/payment.docx"
  title : "Proof of Payment"
- src : "**.pdf"
  name : "pdf-file-:counter"
  params :
    icon : "pdf"
- src : "**.docx"
  params :
    icon : "word"
{{</ code-toggle >}}
@z

@x
From the example above:
@y
From the example above:
@z

@x
- `sunset.jpg` will receive a new `Name` and can now be found with `.GetMatch "header"`.
- `documents/photo_specs.pdf` will get the `photo` icon.
- `documents/checklist.pdf`, `documents/guide.pdf` and `documents/payment.docx` will get `Title` as set by `title`.
- Every `PDF` in the bundle except `documents/photo_specs.pdf` will get the `pdf` icon.
- All `PDF` files will get a new `Name`. The `name` parameter contains a special placeholder [`:counter`](#the-counter-placeholder-in-name-and-title), so the `Name` will be `pdf-file-1`, `pdf-file-2`, `pdf-file-3`.
- Every docx in the bundle will receive the `word` icon.
@y
- `sunset.jpg` will receive a new `Name` and can now be found with `.GetMatch "header"`.
- `documents/photo_specs.pdf` will get the `photo` icon.
- `documents/checklist.pdf`, `documents/guide.pdf` and `documents/payment.docx` will get `Title` as set by `title`.
- Every `PDF` in the bundle except `documents/photo_specs.pdf` will get the `pdf` icon.
- All `PDF` files will get a new `Name`. The `name` parameter contains a special placeholder [`:counter`](#the-counter-placeholder-in-name-and-title), so the `Name` will be `pdf-file-1`, `pdf-file-2`, `pdf-file-3`.
- Every docx in the bundle will receive the `word` icon.
@z

@x
{{% note %}}
The __order matters__ --- Only the **first set** values of the `title`, `name` and `params`-**keys** will be used. Consecutive parameters will be set only for the ones not already set. In the above example, `.Params.icon` is first set to `"photo"` in `src = "documents/photo_specs.pdf"`. So that would not get overridden to `"pdf"` by the later set `src = "**.pdf"` rule.
{{% /note %}}
@y
{{% note %}}
The __order matters__ --- Only the **first set** values of the `title`, `name` and `params`-**keys** will be used. Consecutive parameters will be set only for the ones not already set. In the above example, `.Params.icon` is first set to `"photo"` in `src = "documents/photo_specs.pdf"`. So that would not get overridden to `"pdf"` by the later set `src = "**.pdf"` rule.
{{% /note %}}
@z

@x
### The `:counter` placeholder in `name` and `title`
@y
### The `:counter` placeholder in `name` and `title`
@z

@x
The `:counter` is a special placeholder recognized in `name` and `title` parameters `resources`.
@y
The `:counter` is a special placeholder recognized in `name` and `title` parameters `resources`.
@z

@x
The counter starts at 1 the first time they are used in either `name` or `title`.
@y
The counter starts at 1 the first time they are used in either `name` or `title`.
@z

@x
For example, if a bundle has the resources `photo_specs.pdf`, `other_specs.pdf`, `guide.pdf` and `checklist.pdf`, and the front matter has specified the `resources` as:
@y
For example, if a bundle has the resources `photo_specs.pdf`, `other_specs.pdf`, `guide.pdf` and `checklist.pdf`, and the front matter has specified the `resources` as:
@z

@x
{{< code-toggle file=content/inspections/engine/index.md fm=true >}}
title = 'Engine inspections'
[[resources]]
  src = "*specs.pdf"
  title = "Specification #:counter"
[[resources]]
  src = "**.pdf"
  name = "pdf-file-:counter"
{{</ code-toggle >}}
@y
{{< code-toggle file=content/inspections/engine/index.md fm=true >}}
title = 'Engine inspections'
[[resources]]
  src = "*specs.pdf"
  title = "Specification #:counter"
[[resources]]
  src = "**.pdf"
  name = "pdf-file-:counter"
{{</ code-toggle >}}
@z

@x
the `Name` and `Title` will be assigned to the resource files as follows:
@y
the `Name` and `Title` will be assigned to the resource files as follows:
@z

@x
| Resource file     | `Name`            | `Title`               |
|-------------------|-------------------|-----------------------|
| checklist.pdf     | `"pdf-file-1.pdf` | `"checklist.pdf"`     |
| guide.pdf         | `"pdf-file-2.pdf` | `"guide.pdf"`         |
| other\_specs.pdf  | `"pdf-file-3.pdf` | `"Specification #1"` |
| photo\_specs.pdf  | `"pdf-file-4.pdf` | `"Specification #2"` |
@y
| Resource file     | `Name`            | `Title`               |
|-------------------|-------------------|-----------------------|
| checklist.pdf     | `"pdf-file-1.pdf` | `"checklist.pdf"`     |
| guide.pdf         | `"pdf-file-2.pdf` | `"guide.pdf"`         |
| other\_specs.pdf  | `"pdf-file-3.pdf` | `"Specification #1"` |
| photo\_specs.pdf  | `"pdf-file-4.pdf` | `"Specification #2"` |
@z
