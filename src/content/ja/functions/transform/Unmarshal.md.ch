%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: transform.Unmarshal
description: Parses serialized data and returns a map or an array. Supports CSV, JSON, TOML, YAML, and XML.
categories: []
keywords: []
action:
  aliases: [unmarshal]
  related:
    - functions/transform/Remarshal
    - functions/resources/Get
    - functions/resources/GetRemote
    - functions/encoding/Jsonify
  returnType: any
  signatures: ['transform.Unmarshal [OPTIONS] INPUT']
toc: true
aliases: [/functions/transform.unmarshal]
---
@y
---
title: transform.Unmarshal
description: Parses serialized data and returns a map or an array. Supports CSV, JSON, TOML, YAML, and XML.
categories: []
keywords: []
action:
  aliases: [unmarshal]
  related:
    - functions/transform/Remarshal
    - functions/resources/Get
    - functions/resources/GetRemote
    - functions/encoding/Jsonify
  returnType: any
  signatures: ['transform.Unmarshal [OPTIONS] INPUT']
toc: true
aliases: [/functions/transform.unmarshal]
---
@z

@x
The input can be a string or a [resource].
@y
The input can be a string or a [resource].
@z

@x
## Unmarshal a string
@y
## Unmarshal a string
@z

@x
```go-html-template
{{ $string := `
title: Les Misérables
author: Victor Hugo
`}}
@y
```go-html-template
{{ $string := `
title: Les Misérables
author: Victor Hugo
`}}
@z

@x
{{ $book := unmarshal $string }}
{{ $book.title }} → Les Misérables
{{ $book.author }} → Victor Hugo
```
@y
{{ $book := unmarshal $string }}
{{ $book.title }} → Les Misérables
{{ $book.author }} → Victor Hugo
```
@z

@x
## Unmarshal a resource
@y
## Unmarshal a resource
@z

@x
Use the `transform.Unmarshal` function with global, page, and remote resources.
@y
Use the `transform.Unmarshal` function with global, page, and remote resources.
@z

@x
### Global resource
@y
### Global resource
@z

@x
A global resource is a file within the assets directory, or within any directory mounted to the assets directory.
@y
A global resource is a file within the assets directory, or within any directory mounted to the assets directory.
@z

@x
```text
assets/
└── data/
    └── books.json
```
@y
```text
assets/
└── data/
    └── books.json
```
@z

@x
```go-html-template
{{ $data := "" }}
{{ $path := "data/books.json" }}
{{ with resources.Get $path }}
  {{ with unmarshal .Content }}
    {{ $data = . }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get global resource %q" $path }}
{{ end }}
@y
```go-html-template
{{ $data := "" }}
{{ $path := "data/books.json" }}
{{ with resources.Get $path }}
  {{ with unmarshal .Content }}
    {{ $data = . }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get global resource %q" $path }}
{{ end }}
@z

@x
{{ range where $data "author" "Victor Hugo" }}
  {{ .title }} → Les Misérables
{{ end }}
```
@y
{{ range where $data "author" "Victor Hugo" }}
  {{ .title }} → Les Misérables
{{ end }}
```
@z

@x
### Page resource
@y
### Page resource
@z

@x
A page resource is a file within a [page bundle].
@y
A page resource is a file within a [page bundle].
@z

@x
```text
content/
├── post/
│   └── book-reviews/
│       ├── books.json
│       └── index.md
└── _index.md
```
@y
```text
content/
├── post/
│   └── book-reviews/
│       ├── books.json
│       └── index.md
└── _index.md
```
@z

@x
```go-html-template
{{ $data := "" }}
{{ $path := "books.json" }}
{{ with .Resources.Get $path }}
  {{ with unmarshal .Content }}
    {{ $data = . }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get page resource %q" $path }}
{{ end }}
@y
```go-html-template
{{ $data := "" }}
{{ $path := "books.json" }}
{{ with .Resources.Get $path }}
  {{ with unmarshal .Content }}
    {{ $data = . }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get page resource %q" $path }}
{{ end }}
@z

@x
{{ range where $data "author" "Victor Hugo" }}
  {{ .title }} → Les Misérables
{{ end }}
```
@y
{{ range where $data "author" "Victor Hugo" }}
  {{ .title }} → Les Misérables
{{ end }}
```
@z

@x
### Remote resource
@y
### Remote resource
@z

@x
A remote resource is a file on a remote server, accessible via HTTP or HTTPS.
@y
A remote resource is a file on a remote server, accessible via HTTP or HTTPS.
@z

@x
```go-html-template
{{ $data := "" }}
{{ $url := "https://example.org/books.json" }}
{{ with resources.GetRemote $url }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    {{ $data = .Content | transform.Unmarshal }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $url }}
{{ end }}
@y
```go-html-template
{{ $data := "" }}
{{ $url := "https://example.org/books.json" }}
{{ with resources.GetRemote $url }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    {{ $data = .Content | transform.Unmarshal }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $url }}
{{ end }}
@z

@x
{{ range where $data "author" "Victor Hugo" }}
  {{ .title }} → Les Misérables
{{ end }}
```
@y
{{ range where $data "author" "Victor Hugo" }}
  {{ .title }} → Les Misérables
{{ end }}
```
@z

@x
[resource]: /getting-started/glossary/#resource
[page bundle]: /content-management/page-bundles/
@y
[resource]: /getting-started/glossary/#resource
[page bundle]: /content-management/page-bundles/
@z

@x
## Options
@y
## Options
@z

@x
When unmarshaling a CSV file, provide an optional map of options.
@y
When unmarshaling a CSV file, provide an optional map of options.
@z

@x
delimiter
: (`string`) The delimiter used, default is `,`.
@y
delimiter
: (`string`) The delimiter used, default is `,`.
@z

@x
comment
: (`string`) The comment character used in the CSV. If set, lines beginning with the comment character without preceding whitespace are ignored.
@y
comment
: (`string`) The comment character used in the CSV. If set, lines beginning with the comment character without preceding whitespace are ignored.
@z

@x
lazyQuotes {{< new-in 0.122.0 >}}
: (`bool`) If true, a quote may appear in an unquoted field and a non-doubled quote may appear in a quoted field. Default is `false`.
@y
lazyQuotes {{< new-in 0.122.0 >}}
: (`bool`) If true, a quote may appear in an unquoted field and a non-doubled quote may appear in a quoted field. Default is `false`.
@z

@x
```go-html-template
{{ $csv := "a;b;c" | transform.Unmarshal (dict "delimiter" ";") }}
```
@y
```go-html-template
{{ $csv := "a;b;c" | transform.Unmarshal (dict "delimiter" ";") }}
```
@z

@x
## Working with XML
@y
## Working with XML
@z

@x
When unmarshaling an XML file, do not include the root node when accessing data. For example, after unmarshaling the RSS feed below, access the feed title with `$data.channel.title`.
@y
When unmarshaling an XML file, do not include the root node when accessing data. For example, after unmarshaling the RSS feed below, access the feed title with `$data.channel.title`.
@z

@x
```xml
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <channel>
    <title>Books on Example Site</title>
    <link>https://example.org/books/</link>
    <description>Recent content in Books on Example Site</description>
    <language>en-US</language>
    <atom:link href="https://example.org/books/index.xml" rel="self" type="application/rss+xml" />
    <item>
      <title>The Hunchback of Notre Dame</title>
      <description>Written by Victor Hugo</description>
      <link>https://example.org/books/the-hunchback-of-notre-dame/</link>
      <pubDate>Mon, 09 Oct 2023 09:27:12 -0700</pubDate>
      <guid>https://example.org/books/the-hunchback-of-notre-dame/</guid>
    </item>
    <item>
      <title>Les Misérables</title>
      <description>Written by Victor Hugo</description>
      <link>https://example.org/books/les-miserables/</link>
      <pubDate>Mon, 09 Oct 2023 09:27:11 -0700</pubDate>
      <guid>https://example.org/books/les-miserables/</guid>
    </item>
  </channel>
</rss>
```
@y
```xml
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <channel>
    <title>Books on Example Site</title>
    <link>https://example.org/books/</link>
    <description>Recent content in Books on Example Site</description>
    <language>en-US</language>
    <atom:link href="https://example.org/books/index.xml" rel="self" type="application/rss+xml" />
    <item>
      <title>The Hunchback of Notre Dame</title>
      <description>Written by Victor Hugo</description>
      <link>https://example.org/books/the-hunchback-of-notre-dame/</link>
      <pubDate>Mon, 09 Oct 2023 09:27:12 -0700</pubDate>
      <guid>https://example.org/books/the-hunchback-of-notre-dame/</guid>
    </item>
    <item>
      <title>Les Misérables</title>
      <description>Written by Victor Hugo</description>
      <link>https://example.org/books/les-miserables/</link>
      <pubDate>Mon, 09 Oct 2023 09:27:11 -0700</pubDate>
      <guid>https://example.org/books/les-miserables/</guid>
    </item>
  </channel>
</rss>
```
@z

@x
Get the remote data:
@y
Get the remote data:
@z

@x
```go-html-template
{{ $data := "" }}
{{ $url := "https://example.org/books/index.xml" }}
{{ with resources.GetRemote $url }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    {{ $data = .Content | transform.Unmarshal }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $url }}
{{ end }}
```
@y
```go-html-template
{{ $data := "" }}
{{ $url := "https://example.org/books/index.xml" }}
{{ with resources.GetRemote $url }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    {{ $data = .Content | transform.Unmarshal }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $url }}
{{ end }}
```
@z

@x
Inspect the data structure:
@y
Inspect the data structure:
@z

@x
```go-html-template
<pre>{{ jsonify (dict "indent" "  ") $data }}</pre>
```
@y
```go-html-template
<pre>{{ jsonify (dict "indent" "  ") $data }}</pre>
```
@z

@x
List the book titles:
@y
List the book titles:
@z

@x
```go-html-template
{{ with $data.channel.item }}
  <ul>
    {{ range . }}
      <li>{{ .title }}</li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ with $data.channel.item }}
  <ul>
    {{ range . }}
      <li>{{ .title }}</li>
    {{ end }}
  </ul>
{{ end }}
```
@z

@x
Hugo renders this to:
@y
Hugo renders this to:
@z

@x
```html
<ul>
  <li>The Hunchback of Notre Dame</li>
  <li>Les Misérables</li>
</ul>
```
@y
```html
<ul>
  <li>The Hunchback of Notre Dame</li>
  <li>Les Misérables</li>
</ul>
```
@z

@x
### XML attributes and namespaces
@y
### XML attributes and namespaces
@z

@x
Let's add a `lang` attribute to the `title` nodes of our RSS feed, and a namespaced node for the ISBN number:
@y
Let's add a `lang` attribute to the `title` nodes of our RSS feed, and a namespaced node for the ISBN number:
@z

@x
```xml
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<rss version="2.0"
  xmlns:atom="http://www.w3.org/2005/Atom"
  xmlns:isbn="http://schemas.isbn.org/ns/1999/basic.dtd"
>
  <channel>
    <title>Books on Example Site</title>
    <link>https://example.org/books/</link>
    <description>Recent content in Books on Example Site</description>
    <language>en-US</language>
    <atom:link href="https://example.org/books/index.xml" rel="self" type="application/rss+xml" />
    <item>
      <title lang="fr">The Hunchback of Notre Dame</title>
      <description>Written by Victor Hugo</description>
      <isbn:number>9780140443530</isbn:number>
      <link>https://example.org/books/the-hunchback-of-notre-dame/</link>
      <pubDate>Mon, 09 Oct 2023 09:27:12 -0700</pubDate>
      <guid>https://example.org/books/the-hunchback-of-notre-dame/</guid>
    </item>
    <item>
      <title lang="en">Les Misérables</title>
      <description>Written by Victor Hugo</description>
      <isbn:number>9780451419439</isbn:number>
      <link>https://example.org/books/les-miserables/</link>
      <pubDate>Mon, 09 Oct 2023 09:27:11 -0700</pubDate>
      <guid>https://example.org/books/les-miserables/</guid>
    </item>
  </channel>
</rss>
```
@y
```xml
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<rss version="2.0"
  xmlns:atom="http://www.w3.org/2005/Atom"
  xmlns:isbn="http://schemas.isbn.org/ns/1999/basic.dtd"
>
  <channel>
    <title>Books on Example Site</title>
    <link>https://example.org/books/</link>
    <description>Recent content in Books on Example Site</description>
    <language>en-US</language>
    <atom:link href="https://example.org/books/index.xml" rel="self" type="application/rss+xml" />
    <item>
      <title lang="fr">The Hunchback of Notre Dame</title>
      <description>Written by Victor Hugo</description>
      <isbn:number>9780140443530</isbn:number>
      <link>https://example.org/books/the-hunchback-of-notre-dame/</link>
      <pubDate>Mon, 09 Oct 2023 09:27:12 -0700</pubDate>
      <guid>https://example.org/books/the-hunchback-of-notre-dame/</guid>
    </item>
    <item>
      <title lang="en">Les Misérables</title>
      <description>Written by Victor Hugo</description>
      <isbn:number>9780451419439</isbn:number>
      <link>https://example.org/books/les-miserables/</link>
      <pubDate>Mon, 09 Oct 2023 09:27:11 -0700</pubDate>
      <guid>https://example.org/books/les-miserables/</guid>
    </item>
  </channel>
</rss>
```
@z

@x
After retrieving the remote data, inspect the data structure:
@y
After retrieving the remote data, inspect the data structure:
@z

@x
```go-html-template
<pre>{{ jsonify (dict "indent" "  ") $data }}</pre>
```
@y
```go-html-template
<pre>{{ jsonify (dict "indent" "  ") $data }}</pre>
```
@z

@x
Each item node looks like this:
@y
Each item node looks like this:
@z

@x
```json
{
  "description": "Written by Victor Hugo",
  "guid": "https://example.org/books/the-hunchback-of-notre-dame/",
  "link": "https://example.org/books/the-hunchback-of-notre-dame/",
  "number": "9780140443530",
  "pubDate": "Mon, 09 Oct 2023 09:27:12 -0700",
  "title": {
    "#text": "The Hunchback of Notre Dame",
    "-lang": "fr"
  }
}
```
@y
```json
{
  "description": "Written by Victor Hugo",
  "guid": "https://example.org/books/the-hunchback-of-notre-dame/",
  "link": "https://example.org/books/the-hunchback-of-notre-dame/",
  "number": "9780140443530",
  "pubDate": "Mon, 09 Oct 2023 09:27:12 -0700",
  "title": {
    "#text": "The Hunchback of Notre Dame",
    "-lang": "fr"
  }
}
```
@z

@x
The title keys do not begin with an underscore or a letter---they are not valid [identifiers]. Use the [`index`] function to access the values:
@y
The title keys do not begin with an underscore or a letter---they are not valid [identifiers]. Use the [`index`] function to access the values:
@z

@x
```go-html-template
{{ with $data.channel.item }}
  <ul>
    {{ range . }}
      {{ $title := index .title "#text" }}
      {{ $lang := index .title "-lang" }}
      {{ $ISBN := .number }}
      <li>{{ $title }} ({{ $lang }}) {{ $ISBN }}</li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ with $data.channel.item }}
  <ul>
    {{ range . }}
      {{ $title := index .title "#text" }}
      {{ $lang := index .title "-lang" }}
      {{ $ISBN := .number }}
      <li>{{ $title }} ({{ $lang }}) {{ $ISBN }}</li>
    {{ end }}
  </ul>
{{ end }}
```
@z

@x
Hugo renders this to:
@y
Hugo renders this to:
@z

@x
```html
<ul>
  <li>The Hunchback of Notre Dame (fr) 9780140443530</li>
  <li>Les Misérables (en) 9780451419439</li>
</ul>
```
@y
```html
<ul>
  <li>The Hunchback of Notre Dame (fr) 9780140443530</li>
  <li>Les Misérables (en) 9780451419439</li>
</ul>
```
@z

@x
[`index`]: /functions/collections/indexfunction/
[identifiers]: https://go.dev/ref/spec#Identifiers
@y
[`index`]: /functions/collections/indexfunction/
[identifiers]: https://go.dev/ref/spec#Identifiers
@z
