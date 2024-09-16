%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Page resources
description: Use page resources to logically associate assets with a page.
categories: [content management]
keywords: [bundle,content,resources]
@y
title: ページリソース
description: Use page resources to logically associate assets with a page.
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
## Examples
@y
## Examples
@z

@x
Use any of these methods on a `Page` object to capture page resources:
@y
Use any of these methods on a `Page` object to capture page resources:
@z

@x
 - [`Resources.ByType`]
 - [`Resources.Get`]
 - [`Resources.GetMatch`]
 - [`Resources.Match`]
@y
 - [`Resources.ByType`]
 - [`Resources.Get`]
 - [`Resources.GetMatch`]
 - [`Resources.Match`]
@z

@x
 Once you have captured a resource, use any of the applicable [`Resource`] methods to return a value or perform an action. 
@y
 Once you have captured a resource, use any of the applicable [`Resource`] methods to return a value or perform an action. 
@z

@x
[`Resource`]: /methods/resource
[`Resources.ByType`]: /methods/page/resources#bytype
[`Resources.GetMatch`]: /methods/page/resources#getmatch
[`Resources.Get`]: /methods/page/resources#get
[`Resources.Match`]: /methods/page/resources#match
@y
[`Resource`]: /methods/resource
[`Resources.ByType`]: /methods/page/resources#bytype
[`Resources.GetMatch`]: /methods/page/resources#getmatch
[`Resources.Get`]: /methods/page/resources#get
[`Resources.Match`]: /methods/page/resources#match
@z

@x
The following examples assume this content structure:
@y
The following examples assume this content structure:
@z

@x
```text
content/
└── example/
    ├── data/
    │  └── books.json   <-- page resource
    ├── images/
    │  ├── a.jpg        <-- page resource
    │  └── b.jpg        <-- page resource
    ├── snippets/
    │  └── text.md      <-- page resource
    └── index.md
```
@y
```text
content/
└── example/
    ├── data/
    │  └── books.json   <-- page resource
    ├── images/
    │  ├── a.jpg        <-- page resource
    │  └── b.jpg        <-- page resource
    ├── snippets/
    │  └── text.md      <-- page resource
    └── index.md
```
@z

@x
Render a single image, and throw an error if the file does not exist:
@y
Render a single image, and throw an error if the file does not exist:
@z

@x
```go-html-template
{{ $path := "images/a.jpg" }}
{{ with .Resources.Get $path }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ else }}
  {{ errorf "Unable to get page resource %q" $path }}
{{ end }}
```
@y
```go-html-template
{{ $path := "images/a.jpg" }}
{{ with .Resources.Get $path }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ else }}
  {{ errorf "Unable to get page resource %q" $path }}
{{ end }}
```
@z

@x
Render all images, resized to 300 px wide:
@y
Render all images, resized to 300 px wide:
@z

@x
```go-html-template
{{ range .Resources.ByType "image" }}
  {{ with .Resize "300x" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ range .Resources.ByType "image" }}
  {{ with .Resize "300x" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@z

@x
Render the markdown snippet:
@y
Render the markdown snippet:
@z

@x
```go-html-template
{{ with .Resources.Get "snippets/text.md" }}
  {{ .Content }}
{{ end }}
```
@y
```go-html-template
{{ with .Resources.Get "snippets/text.md" }}
  {{ .Content }}
{{ end }}
```
@z

@x
List the titles in the data file, and throw an error if the file does not exist.
@y
List the titles in the data file, and throw an error if the file does not exist.
@z

@x
```go-html-template
{{ $path := "data/books.json" }}
{{ with .Resources.Get $path }}
  {{ with . | transform.Unmarshal }}
    <p>Books:</p>
    <ul>
      {{ range . }}
        <li>{{ .title }}</li>
      {{ end }}
    </ul>
  {{ end }}
{{ else }}
  {{ errorf "Unable to get page resource %q" $path }}
{{ end }}
```
@y
```go-html-template
{{ $path := "data/books.json" }}
{{ with .Resources.Get $path }}
  {{ with . | transform.Unmarshal }}
    <p>Books:</p>
    <ul>
      {{ range . }}
        <li>{{ .title }}</li>
      {{ end }}
    </ul>
  {{ end }}
{{ else }}
  {{ errorf "Unable to get page resource %q" $path }}
{{ end }}
```
@z

@x
## Metadata
@y
## Metadata
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
: (`string`) Sets the value returned in `Name`.
@y
name
: (`string`) Sets the value returned in `Name`.
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
: (`string`) Sets the value returned in `Title`
@y
title
: (`string`) Sets the value returned in `Title`
@z

@x
params
: (`map`) A map of custom key-value pairs.
@y
params
: (`map`) A map of custom key-value pairs.
@z

@x
### Resources metadata example
@y
### Resources metadata example
@z

@x
{{< code-toggle file=content/example.md fm=true >}}
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
{{< code-toggle file=content/example.md fm=true >}}
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
The order matters; only the first set values of the `title`, `name` and `params` keys will be used. Consecutive parameters will be set only for the ones not already set. In the above example, `.Params.icon` is first set to `"photo"` in `src = "documents/photo_specs.pdf"`. So that would not get overridden to `"pdf"` by the later set `src = "**.pdf"` rule.
{{% /note %}}
@y
{{% note %}}
The order matters; only the first set values of the `title`, `name` and `params` keys will be used. Consecutive parameters will be set only for the ones not already set. In the above example, `.Params.icon` is first set to `"photo"` in `src = "documents/photo_specs.pdf"`. So that would not get overridden to `"pdf"` by the later set `src = "**.pdf"` rule.
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

@x
## Multilingual
@y
## Multilingual
@z

@x
{{< new-in 0.123.0 >}}
@y
{{< new-in 0.123.0 >}}
@z

@x
By default, with a multilingual single-host site, Hugo does not duplicate shared page resources when building the site.
@y
By default, with a multilingual single-host site, Hugo does not duplicate shared page resources when building the site.
@z

@x
{{% note %}}
This behavior is limited to Markdown content. Shared page resources for other [content formats] are copied into each language bundle.
@y
{{% note %}}
This behavior is limited to Markdown content. Shared page resources for other [content formats] are copied into each language bundle.
@z

@x
[content formats]: /content-management/formats/
{{% /note %}}
@y
[content formats]: /content-management/formats/
{{% /note %}}
@z

@x
Consider this site configuration:
@y
Consider this site configuration:
@z

@x
{{< code-toggle file=hugo >}}
defaultContentLanguage = 'de'
defaultContentLanguageInSubdir = true
@y
{{< code-toggle file=hugo >}}
defaultContentLanguage = 'de'
defaultContentLanguageInSubdir = true
@z

@x
[languages.de]
languageCode = 'de-DE'
languageName = 'Deutsch'
weight = 1
@y
[languages.de]
languageCode = 'de-DE'
languageName = 'Deutsch'
weight = 1
@z

@x
[languages.en]
languageCode = 'en-US'
languageName = 'English'
weight = 2
{{< /code-toggle >}}
@y
[languages.en]
languageCode = 'en-US'
languageName = 'English'
weight = 2
{{< /code-toggle >}}
@z

@x
And this content:
@y
And this content:
@z

@x
```text
content/
└── my-bundle/
    ├── a.jpg     <-- shared page resource
    ├── b.jpg     <-- shared page resource
    ├── c.de.jpg
    ├── c.en.jpg
    ├── index.de.md
    └── index.en.md
```
@y
```text
content/
└── my-bundle/
    ├── a.jpg     <-- shared page resource
    ├── b.jpg     <-- shared page resource
    ├── c.de.jpg
    ├── c.en.jpg
    ├── index.de.md
    └── index.en.md
```
@z

@x
With v0.122.0 and earlier, Hugo duplicated the shared page resources, creating copies for each language:
@y
With v0.122.0 and earlier, Hugo duplicated the shared page resources, creating copies for each language:
@z

@x
```text
public/
├── de/
│   ├── my-bundle/
│   │   ├── a.jpg     <-- shared page resource
│   │   ├── b.jpg     <-- shared page resource
│   │   ├── c.de.jpg
│   │   └── index.html
│   └── index.html
├── en/
│   ├── my-bundle/
│   │   ├── a.jpg     <-- shared page resource (duplicate)
│   │   ├── b.jpg     <-- shared page resource (duplicate)
│   │   ├── c.en.jpg
│   │   └── index.html
│   └── index.html
└── index.html
@y
```text
public/
├── de/
│   ├── my-bundle/
│   │   ├── a.jpg     <-- shared page resource
│   │   ├── b.jpg     <-- shared page resource
│   │   ├── c.de.jpg
│   │   └── index.html
│   └── index.html
├── en/
│   ├── my-bundle/
│   │   ├── a.jpg     <-- shared page resource (duplicate)
│   │   ├── b.jpg     <-- shared page resource (duplicate)
│   │   ├── c.en.jpg
│   │   └── index.html
│   └── index.html
└── index.html
@z

@x
```
@y
```
@z

@x
With v0.123.0 and later, Hugo places the shared resources in the page bundle for the default content language:
@y
With v0.123.0 and later, Hugo places the shared resources in the page bundle for the default content language:
@z

@x
```text
public/
├── de/
│   ├── my-bundle/
│   │   ├── a.jpg     <-- shared page resource
│   │   ├── b.jpg     <-- shared page resource
│   │   ├── c.de.jpg
│   │   └── index.html
│   └── index.html
├── en/
│   ├── my-bundle/
│   │   ├── c.en.jpg
│   │   └── index.html
│   └── index.html
└── index.html
```
@y
```text
public/
├── de/
│   ├── my-bundle/
│   │   ├── a.jpg     <-- shared page resource
│   │   ├── b.jpg     <-- shared page resource
│   │   ├── c.de.jpg
│   │   └── index.html
│   └── index.html
├── en/
│   ├── my-bundle/
│   │   ├── c.en.jpg
│   │   └── index.html
│   └── index.html
└── index.html
```
@z

@x
This approach reduces build times, storage requirements, bandwidth consumption, and deployment times, ultimately reducing cost.
@y
This approach reduces build times, storage requirements, bandwidth consumption, and deployment times, ultimately reducing cost.
@z

@x
{{% note %}}
To resolve Markdown link and image destinations to the correct location, you must use link and image render hooks that capture the page resource with the [`Resources.Get`] method, and then invoke its [`RelPermalink`] method.
@y
{{% note %}}
To resolve Markdown link and image destinations to the correct location, you must use link and image render hooks that capture the page resource with the [`Resources.Get`] method, and then invoke its [`RelPermalink`] method.
@z

@x
By default, with multilingual single-host sites, Hugo enables its [embedded link render hook] and [embedded image render hook] to resolve Markdown link and image destinations.
@y
By default, with multilingual single-host sites, Hugo enables its [embedded link render hook] and [embedded image render hook] to resolve Markdown link and image destinations.
@z

@x
You may override the embedded render hooks as needed, provided they capture the resource as described above.
@y
You may override the embedded render hooks as needed, provided they capture the resource as described above.
@z

@x
[embedded link render hook]: /render-hooks/links/#default
[embedded image render hook]: /render-hooks/images/#default
[`Resources.Get`]: /methods/page/resources/#get
[`RelPermalink`]: /methods/resource/relpermalink/
{{% /note %}}
@y
[embedded link render hook]: /render-hooks/links/#default
[embedded image render hook]: /render-hooks/images/#default
[`Resources.Get`]: /methods/page/resources/#get
[`RelPermalink`]: /methods/resource/relpermalink/
{{% /note %}}
@z

@x
Although duplicating shared page resources is inefficient, you can enable this feature in your site configuration if desired:
@y
Although duplicating shared page resources is inefficient, you can enable this feature in your site configuration if desired:
@z

@x
{{< code-toggle file=hugo >}}
[markup.goldmark]
duplicateResourceFiles = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup.goldmark]
duplicateResourceFiles = true
{{< /code-toggle >}}
@z
