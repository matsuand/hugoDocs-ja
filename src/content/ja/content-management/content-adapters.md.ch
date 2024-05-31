%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Content adapters
description: Create content adapters to dynamically add content when building your site.
categories: [content management]
keywords: []
menu:
  docs:
    parent: content-management
    weight: 280
weight: 280
toc: true
---
@y
---
title: Content adapters
description: Create content adapters to dynamically add content when building your site.
categories: [content management]
keywords: []
menu:
  docs:
    parent: content-management
    weight: 280
weight: 280
toc: true
---
@z

@x
{{< new-in 0.126.0 >}}
@y
{{< new-in 0.126.0 >}}
@z

@x
## Overview
@y
## Overview
@z

@x
A content adapter is a template that dynamically creates pages when building a site. For example, use a content adapter to create pages from a remote data source such as JSON, TOML, YAML, or XML.
@y
A content adapter is a template that dynamically creates pages when building a site. For example, use a content adapter to create pages from a remote data source such as JSON, TOML, YAML, or XML.
@z

@x
Unlike templates that reside in the layouts directory, content adapters reside in the content directory, no more than one per directory per language. When a content adapter creates a page, the page's [logical path] will be relative to the content adapter.
@y
Unlike templates that reside in the layouts directory, content adapters reside in the content directory, no more than one per directory per language. When a content adapter creates a page, the page's [logical path] will be relative to the content adapter.
@z

@x
```text
content/
├── articles/
│   ├── _index.md
│   ├── article-1.md
│   └── article-2.md
├── books/
│   ├── _content.gotmpl  <-- content adapter
│   └── _index.md
└── films/
    ├── _content.gotmpl  <-- content adapter
    └── _index.md
```
@y
```text
content/
├── articles/
│   ├── _index.md
│   ├── article-1.md
│   └── article-2.md
├── books/
│   ├── _content.gotmpl  <-- content adapter
│   └── _index.md
└── films/
    ├── _content.gotmpl  <-- content adapter
    └── _index.md
```
@z

@x
Each content adapter is named _content.gotmpl and uses the same [syntax] as templates in the layouts directory. You can use any of the [template functions] within a content adapter, as well as the methods described below.
@y
Each content adapter is named _content.gotmpl and uses the same [syntax] as templates in the layouts directory. You can use any of the [template functions] within a content adapter, as well as the methods described below.
@z

@x
## Methods
@y
## Methods
@z

@x
Use these methods within a content adapter.
@y
Use these methods within a content adapter.
@z

@x
###### AddPage
@y
###### AddPage
@z

@x
Adds a page to the site.
@y
Adds a page to the site.
@z

@x
{{< code file=content/books/_content.gotmpl >}}
{{ $content := dict
  "mediaType" "text/markdown"
  "value" "The _Hunchback of Notre Dame_ was written by Victor Hugo."
}}
{{ $page := dict
  "content" $content
  "kind" "page"
  "path" "the-hunchback-of-notre-dame"
  "title" "The Hunchback of Notre Dame"
}}
{{ .AddPage $page }}
{{< /code >}}
@y
{{< code file=content/books/_content.gotmpl >}}
{{ $content := dict
  "mediaType" "text/markdown"
  "value" "The _Hunchback of Notre Dame_ was written by Victor Hugo."
}}
{{ $page := dict
  "content" $content
  "kind" "page"
  "path" "the-hunchback-of-notre-dame"
  "title" "The Hunchback of Notre Dame"
}}
{{ .AddPage $page }}
{{< /code >}}
@z

@x
###### AddResource
@y
###### AddResource
@z

@x
Adds a page resource to the site.
@y
Adds a page resource to the site.
@z

@x
{{< code file=content/books/_content.gotmpl >}}
{{ with resources.Get "images/a.jpg" }}
  {{ $content := dict
    "mediaType" .MediaType.Type
    "value" .
  }}
  {{ $resource := dict
    "content" $content
    "path" "the-hunchback-of-notre-dame/cover.jpg"
  }}
  {{ $.AddResource $resource }}
{{ end }}
{{< /code >}}
@y
{{< code file=content/books/_content.gotmpl >}}
{{ with resources.Get "images/a.jpg" }}
  {{ $content := dict
    "mediaType" .MediaType.Type
    "value" .
  }}
  {{ $resource := dict
    "content" $content
    "path" "the-hunchback-of-notre-dame/cover.jpg"
  }}
  {{ $.AddResource $resource }}
{{ end }}
{{< /code >}}
@z

@x
Then retrieve the new page resource with something like:
@y
Then retrieve the new page resource with something like:
@z

@x
{{< code file=layouts/_default/single.html >}}
{{ with .Resources.Get "cover.jpg" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/single.html >}}
{{ with .Resources.Get "cover.jpg" }}
  <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
{{ end }}
{{< /code >}}
@z

@x
###### Site
@y
###### Site
@z

@x
Returns the `Site` to which the pages will be added.
@y
Returns the `Site` to which the pages will be added.
@z

@x
{{< code file=content/books/_content.gotmpl >}}
{{ .Site.Title }}
{{< /code >}}
@y
{{< code file=content/books/_content.gotmpl >}}
{{ .Site.Title }}
{{< /code >}}
@z

@x
###### Store
@y
###### Store
@z

@x
Returns a persistent “scratch pad” to store and manipulate data. The main use case for this is to transfer values between executions when [EnableAllLanguages](#enablealllanguages) is set. See [examples](/methods/page/store/).
@y
Returns a persistent “scratch pad” to store and manipulate data. The main use case for this is to transfer values between executions when [EnableAllLanguages](#enablealllanguages) is set. See [examples](/methods/page/store/).
@z

@x
{{< code file=content/books/_content.gotmpl >}}
{{ .Store.Set "key" "value" }}
{{ .Store.Get "key" }}
{{< /code >}}
@y
{{< code file=content/books/_content.gotmpl >}}
{{ .Store.Set "key" "value" }}
{{ .Store.Get "key" }}
{{< /code >}}
@z

@x
###### EnableAllLanguages
@y
###### EnableAllLanguages
@z

@x
By default, Hugo executes the content adapter for the language defined by the _content.gotmpl file . Use this method to activate the content adapter for all languages.
@y
By default, Hugo executes the content adapter for the language defined by the _content.gotmpl file . Use this method to activate the content adapter for all languages.
@z

@x
{{< code file=content/books/_content.gotmpl >}}
{{ .EnableAllLanguages }}
{{ $content := dict
  "mediaType" "text/markdown"
  "value" "The _Hunchback of Notre Dame_ was written by Victor Hugo."
}}
{{ $page := dict
  "content" $content
  "kind" "page"
  "path" "the-hunchback-of-notre-dame"
  "title" "The Hunchback of Notre Dame"
}}
{{ .AddPage $page }}
{{< /code >}}
@y
{{< code file=content/books/_content.gotmpl >}}
{{ .EnableAllLanguages }}
{{ $content := dict
  "mediaType" "text/markdown"
  "value" "The _Hunchback of Notre Dame_ was written by Victor Hugo."
}}
{{ $page := dict
  "content" $content
  "kind" "page"
  "path" "the-hunchback-of-notre-dame"
  "title" "The Hunchback of Notre Dame"
}}
{{ .AddPage $page }}
{{< /code >}}
@z

@x
## Page map
@y
## Page map
@z

@x
Set any [front matter field] in the map passed to the [`AddPage`](#addpage) method, excluding `markup`. Instead of setting the `markup` field, specify the `content.mediaType` as described below.
@y
Set any [front matter field] in the map passed to the [`AddPage`](#addpage) method, excluding `markup`. Instead of setting the `markup` field, specify the `content.mediaType` as described below.
@z

@x
This table describes the fields most commonly passed to the `AddPage` method.
@y
This table describes the fields most commonly passed to the `AddPage` method.
@z

@x
Key|Descripion|Required
:--|:--|:-:
`content.mediaType`|The content [media type]. Default is `text/markdown`. See [content formats] for examples.|&nbsp;
`content.value`|The content value as a string.|&nbsp;
`dates.date`|The page creation date as a `time.Time` value.|&nbsp;
`dates.expiryDate`|The page expiry date as a `time.Time` value.|&nbsp;
`dates.lastmod`|The page last modification date as a `time.Time` value.|&nbsp;
`dates.publishDate`|The page publication date as a `time.Time` value.|&nbsp;
`kind`|The [page kind]. Default is `page`.|&nbsp;
`params`|A map of page parameters.|&nbsp;
`path`|The page's [logical path] relative to the content adapter. Do not include a leading slash or file extension.|:heavy_check_mark:
`title`|The page title.|&nbsp;
@y
Key|Descripion|Required
:--|:--|:-:
`content.mediaType`|The content [media type]. Default is `text/markdown`. See [content formats] for examples.|&nbsp;
`content.value`|The content value as a string.|&nbsp;
`dates.date`|The page creation date as a `time.Time` value.|&nbsp;
`dates.expiryDate`|The page expiry date as a `time.Time` value.|&nbsp;
`dates.lastmod`|The page last modification date as a `time.Time` value.|&nbsp;
`dates.publishDate`|The page publication date as a `time.Time` value.|&nbsp;
`kind`|The [page kind]. Default is `page`.|&nbsp;
`params`|A map of page parameters.|&nbsp;
`path`|The page's [logical path] relative to the content adapter. Do not include a leading slash or file extension.|:heavy_check_mark:
`title`|The page title.|&nbsp;
@z

@x
{{% note %}}
While `path` is the only required field, we recommend setting `title` as well.
@y
{{% note %}}
While `path` is the only required field, we recommend setting `title` as well.
@z

@x
When setting the `path`, Hugo transforms the given string to a logical path. For example, setting `path` to `A B C` produces a logical path of `/section/a-b-c`.
{{% /note %}}
@y
When setting the `path`, Hugo transforms the given string to a logical path. For example, setting `path` to `A B C` produces a logical path of `/section/a-b-c`.
{{% /note %}}
@z

@x
## Resource map
@y
## Resource map
@z

@x
Construct the map passed to the [`AddResource`](#addresource) method using the fields below.
@y
Construct the map passed to the [`AddResource`](#addresource) method using the fields below.
@z

@x
Key|Descripion|Required
:--|:--|:-:
`content.mediaType`|The content [media type].|:heavy_check_mark:
`content.value`|The content value as a string or resource.|:heavy_check_mark:
`name`|The resource name.|&nbsp;
`params`|A map of resource parameters.|&nbsp;
`path`|The resources's [logical path] relative to the content adapter. Do not include a leading slash.|:heavy_check_mark:
`title`|The resource title.|&nbsp;
@y
Key|Descripion|Required
:--|:--|:-:
`content.mediaType`|The content [media type].|:heavy_check_mark:
`content.value`|The content value as a string or resource.|:heavy_check_mark:
`name`|The resource name.|&nbsp;
`params`|A map of resource parameters.|&nbsp;
`path`|The resources's [logical path] relative to the content adapter. Do not include a leading slash.|:heavy_check_mark:
`title`|The resource title.|&nbsp;
@z

@x
{{% note %}}
If the `content.value` is a string Hugo creates a new resource. If the `content.value` is a resource, Hugo obtains the value from the existing resource.
@y
{{% note %}}
If the `content.value` is a string Hugo creates a new resource. If the `content.value` is a resource, Hugo obtains the value from the existing resource.
@z

@x
When setting the `path`, Hugo transforms the given string to a logical path. For example, setting `path` to `A B C/cover.jpg` produces a logical path of `/section/a-b-c/cover.jpg`.
{{% /note %}}
@y
When setting the `path`, Hugo transforms the given string to a logical path. For example, setting `path` to `A B C/cover.jpg` produces a logical path of `/section/a-b-c/cover.jpg`.
{{% /note %}}
@z

@x
## Example
@y
## Example
@z

@x
Create pages from remote data, where each page represents a book review.
@y
Create pages from remote data, where each page represents a book review.
@z

@x
Step 1
: Create the content structure.
@y
Step 1
: Create the content structure.
@z

@x
```text
content/
└── books/
    ├── _content.gotmpl  <-- content adapter
    └── _index.md
```
@y
```text
content/
└── books/
    ├── _content.gotmpl  <-- content adapter
    └── _index.md
```
@z

@x
Step 2
: Inspect the remote data to determine how to map key-value pairs to front matter fields.
@y
Step 2
: Inspect the remote data to determine how to map key-value pairs to front matter fields.
@z

@x
: <https://gohugo.io/shared/examples/data/books.json>
@y
: <https://gohugo.io/shared/examples/data/books.json>
@z

@x
Step 3
: Create the content adapter.
@y
Step 3
: Create the content adapter.
@z

@x
{{< code file=content/books/_content.gotmpl copy=true >}}
{{/* Get remote data. */}}
{{ $data := dict }}
{{ $url := "https://gohugo.io/shared/examples/data/books.json" }}
{{ with resources.GetRemote $url }}
  {{ with .Err }}
    {{ errorf "Unable to get remote resource %s: %s" $url . }}
  {{ else }}
    {{ $data = . | transform.Unmarshal }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %s" $url }}
{{ end }}
@y
{{< code file=content/books/_content.gotmpl copy=true >}}
{{/* Get remote data. */}}
{{ $data := dict }}
{{ $url := "https://gohugo.io/shared/examples/data/books.json" }}
{{ with resources.GetRemote $url }}
  {{ with .Err }}
    {{ errorf "Unable to get remote resource %s: %s" $url . }}
  {{ else }}
    {{ $data = . | transform.Unmarshal }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %s" $url }}
{{ end }}
@z

@x
{{/* Add pages and page resources. */}}
{{ range $data }}
@y
{{/* Add pages and page resources. */}}
{{ range $data }}
@z

@x
  {{/* Add page. */}}
  {{ $content := dict "mediaType" "text/markdown" "value" .summary }}
  {{ $dates := dict "date" (time.AsTime .date) }}
  {{ $params := dict "author" .author "isbn" .isbn "rating" .rating "tags" .tags }}
  {{ $page := dict
    "content" $content
    "dates" $dates
    "kind" "page"
    "params" $params
    "path" .title
    "title" .title
  }}
  {{ $.AddPage $page }}
@y
  {{/* Add page. */}}
  {{ $content := dict "mediaType" "text/markdown" "value" .summary }}
  {{ $dates := dict "date" (time.AsTime .date) }}
  {{ $params := dict "author" .author "isbn" .isbn "rating" .rating "tags" .tags }}
  {{ $page := dict
    "content" $content
    "dates" $dates
    "kind" "page"
    "params" $params
    "path" .title
    "title" .title
  }}
  {{ $.AddPage $page }}
@z

@x
  {{/* Add page resource. */}}
  {{ $item := . }}
  {{ with $url := $item.cover }}
    {{ with resources.GetRemote $url }}
      {{ with .Err }}
        {{ errorf "Unable to get remote resource %s: %s" $url . }}
      {{ else }}
        {{ $content := dict "mediaType" .MediaType.Type "value" .Content }}
        {{ $params := dict "alt" $item.title }}
        {{ $resource := dict
          "content" $content
          "params" $params
          "path" (printf "%s/cover.%s" $item.title .MediaType.SubType)
        }}
        {{ $.AddResource $resource }}
      {{ end }}
    {{ else }}
      {{ errorf "Unable to get remote resource %s" $url }}
    {{ end }}
  {{ end }}
@y
  {{/* Add page resource. */}}
  {{ $item := . }}
  {{ with $url := $item.cover }}
    {{ with resources.GetRemote $url }}
      {{ with .Err }}
        {{ errorf "Unable to get remote resource %s: %s" $url . }}
      {{ else }}
        {{ $content := dict "mediaType" .MediaType.Type "value" .Content }}
        {{ $params := dict "alt" $item.title }}
        {{ $resource := dict
          "content" $content
          "params" $params
          "path" (printf "%s/cover.%s" $item.title .MediaType.SubType)
        }}
        {{ $.AddResource $resource }}
      {{ end }}
    {{ else }}
      {{ errorf "Unable to get remote resource %s" $url }}
    {{ end }}
  {{ end }}
@z

@x
{{ end }}
{{< /code >}}
@y
{{ end }}
{{< /code >}}
@z

@x
Step 4
: Create a single page template to render each book review.
@y
Step 4
: Create a single page template to render each book review.
@z

@x
{{< code file=layouts/books/single.html copy=true >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
@y
{{< code file=layouts/books/single.html copy=true >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
@z

@x
  {{ with .Resources.GetMatch "cover.*" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="{{ .Params.alt }}">
  {{ end }}
@y
  {{ with .Resources.GetMatch "cover.*" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="{{ .Params.alt }}">
  {{ end }}
@z

@x
  <p>Author: {{ .Params.author }}</p>
@y
  <p>Author: {{ .Params.author }}</p>
@z

@x
  <p>
    ISBN: {{ .Params.isbn }}<br>
    Rating: {{ .Params.rating }}<br>
    Review date: {{ .Date | time.Format ":date_long" }}
  </p>
@y
  <p>
    ISBN: {{ .Params.isbn }}<br>
    Rating: {{ .Params.rating }}<br>
    Review date: {{ .Date | time.Format ":date_long" }}
  </p>
@z

@x
  {{ with .GetTerms "tags" }}
    <p>Tags:</p>
    <ul>
      {{ range . }}
        <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
      {{ end }}
    </ul>
  {{ end }}
@y
  {{ with .GetTerms "tags" }}
    <p>Tags:</p>
    <ul>
      {{ range . }}
        <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
      {{ end }}
    </ul>
  {{ end }}
@z

@x
  {{ .Content }}
{{ end }}
{{< /code >}}
@y
  {{ .Content }}
{{ end }}
{{< /code >}}
@z

@x
## Multilingual sites
@y
## Multilingual sites
@z

@x
With multilingual sites you can:
@y
With multilingual sites you can:
@z

@x
1. Create one content adapter for all languages using the [`EnableAllLanguages`](#enablealllanguages) method as described above.
2. Create content adapters unique to each language. See the examples below.
@y
1. Create one content adapter for all languages using the [`EnableAllLanguages`](#enablealllanguages) method as described above.
2. Create content adapters unique to each language. See the examples below.
@z

@x
### Translations by file name
@y
### Translations by file name
@z

@x
With this site configuration:
@y
With this site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[languages.en]
weight = 1
@y
{{< code-toggle file=hugo >}}
[languages.en]
weight = 1
@z

@x
[languages.de]
weight = 2
{{< /code-toggle >}}
@y
[languages.de]
weight = 2
{{< /code-toggle >}}
@z

@x
Include a language designator in the content adapter's file name.
@y
Include a language designator in the content adapter's file name.
@z

@x
```text
content/
└── books/
    ├── _content.de.gotmpl
    ├── _content.en.gotmpl
    ├── _index.de.md
    └── _index.en.md
```
@y
```text
content/
└── books/
    ├── _content.de.gotmpl
    ├── _content.en.gotmpl
    ├── _index.de.md
    └── _index.en.md
```
@z

@x
### Translations by content directory
@y
### Translations by content directory
@z

@x
With this site configuration:
@y
With this site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[languages.en]
contentDir = 'content/en'
weight = 1
@y
{{< code-toggle file=hugo >}}
[languages.en]
contentDir = 'content/en'
weight = 1
@z

@x
[languages.de]
contentDir = 'content/de'
weight = 2
{{< /code-toggle >}}
@y
[languages.de]
contentDir = 'content/de'
weight = 2
{{< /code-toggle >}}
@z

@x
Create a single content adapter in each directory:
@y
Create a single content adapter in each directory:
@z

@x
```text
content/
├── de/
│   └── books/
│       ├── _content.gotmpl
│       └── _index.md
└── en/
    └── books/
        ├── _content.gotmpl
        └── _index.md
```
@y
```text
content/
├── de/
│   └── books/
│       ├── _content.gotmpl
│       └── _index.md
└── en/
    └── books/
        ├── _content.gotmpl
        └── _index.md
```
@z

@x
## Page collisions
@y
## Page collisions
@z

@x
Two or more pages collide when they have the same publication path. Due to concurrency, the content of the published page is indeterminate. Consider this example:
@y
Two or more pages collide when they have the same publication path. Due to concurrency, the content of the published page is indeterminate. Consider this example:
@z

@x
```text
content/
└── books/
    ├── _content.gotmpl  <-- content adapter
    ├── _index.md
    └── the-hunchback-of-notre-dame.md
```
@y
```text
content/
└── books/
    ├── _content.gotmpl  <-- content adapter
    ├── _index.md
    └── the-hunchback-of-notre-dame.md
```
@z

@x
If the content adapter also creates books/the-hunchback-of-notre-dame, the content of the published page is indeterminate. You can not define the processing order.
@y
If the content adapter also creates books/the-hunchback-of-notre-dame, the content of the published page is indeterminate. You can not define the processing order.
@z

@x
To detect page collisions, use the `--printPathWarnings` flag when building your site.
@y
To detect page collisions, use the `--printPathWarnings` flag when building your site.
@z

@x
[content formats]: /content-management/formats/#classification
[front matter field]: /content-management/front-matter/#fields
[logical path]: /getting-started/glossary/#logical-path
[media type]: https://en.wikipedia.org/wiki/Media_type
[page kind]: /getting-started/glossary/#page-kind
[syntax]: /templates/introduction/
[template functions]: /functions/
@y
[content formats]: /content-management/formats/#classification
[front matter field]: /content-management/front-matter/#fields
[logical path]: /getting-started/glossary/#logical-path
[media type]: https://en.wikipedia.org/wiki/Media_type
[page kind]: /getting-started/glossary/#page-kind
[syntax]: /templates/introduction/
[template functions]: /functions/
@z
