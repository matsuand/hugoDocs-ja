%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: RSS templates
description: Use the embedded RSS template, or create your own.
categories: [templates]
keywords: [rss,xml,templates]
menu:
  docs:
    parent: templates
    weight: 160
weight: 160
toc: true
---
@y
---
title: RSS テンプレート
description: Use the embedded RSS template, or create your own.
categories: [templates]
keywords: [rss,xml,templates]
menu:
  docs:
    parent: templates
    weight: 160
weight: 160
toc: true
---
@z

@x
## Configuration
@y
## Configuration
@z

@x
By default, when you build your site, Hugo generates RSS feeds for home, section, taxonomy, and term pages. Control feed generation in your site configuration. For example, to generate feeds for home and section pages, but not for taxonomy and term pages:
@y
By default, when you build your site, Hugo generates RSS feeds for home, section, taxonomy, and term pages. Control feed generation in your site configuration. For example, to generate feeds for home and section pages, but not for taxonomy and term pages:
@z

@x
{{< code-toggle file=hugo >}}
[outputs]
home = ['html', 'rss']
section = ['html', 'rss']
taxonomy = ['html']
term = ['html']
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[outputs]
home = ['html', 'rss']
section = ['html', 'rss']
taxonomy = ['html']
term = ['html']
{{< /code-toggle >}}
@z

@x
To disable feed generation for all [page kinds]:
@y
To disable feed generation for all [page kinds]:
@z

@x
[page kinds]: /getting-started/glossary/#page-kind
@y
[page kinds]: /getting-started/glossary/#page-kind
@z

@x
{{< code-toggle file=hugo >}}
disableKinds = ['rss']
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
disableKinds = ['rss']
{{< /code-toggle >}}
@z

@x
By default, the number of items in each feed is unlimited. Change this as needed in your site configuration:
@y
By default, the number of items in each feed is unlimited. Change this as needed in your site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[services.rss]
limit = 42
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[services.rss]
limit = 42
{{< /code-toggle >}}
@z

@x
Set `limit` to `-1` to generate an unlimited number of items per feed.
@y
Set `limit` to `-1` to generate an unlimited number of items per feed.
@z

@x
The built-in RSS template will render the following values, if present, from your site configuration:
@y
The built-in RSS template will render the following values, if present, from your site configuration:
@z

@x
{{< code-toggle file=hugo >}}
copyright = '© 2023 ABC Widgets, Inc.'
[params.author]
name = 'John Doe'
email = 'jdoe@example.org'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
copyright = '© 2023 ABC Widgets, Inc.'
[params.author]
name = 'John Doe'
email = 'jdoe@example.org'
{{< /code-toggle >}}
@z

@x
## Include feed reference
@y
## Include feed reference
@z

@x
To include a feed reference in the `head` element of your rendered pages, place this within the `head` element of your templates:
@y
To include a feed reference in the `head` element of your rendered pages, place this within the `head` element of your templates:
@z

@x
```go-html-template
{{ with .OutputFormats.Get "rss" -}}
  {{ printf `<link rel=%q type=%q href=%q title=%q>` .Rel .MediaType.Type .Permalink site.Title | safeHTML }}
{{ end }}
```
@y
```go-html-template
{{ with .OutputFormats.Get "rss" -}}
  {{ printf `<link rel=%q type=%q href=%q title=%q>` .Rel .MediaType.Type .Permalink site.Title | safeHTML }}
{{ end }}
```
@z

@x
Hugo will render this to:
@y
Hugo will render this to:
@z

@x
```html
<link rel="alternate" type="application/rss+xml" href="https://example.org/index.xml" title="ABC Widgets">
```
@y
```html
<link rel="alternate" type="application/rss+xml" href="https://example.org/index.xml" title="ABC Widgets">
```
@z

@x
## Custom templates
@y
## Custom templates
@z

@x
Override Hugo's [embedded RSS template] by creating one or more of your own, following the naming conventions as shown in the [template lookup order].
@y
Override Hugo's [embedded RSS template] by creating one or more of your own, following the naming conventions as shown in the [template lookup order].
@z

@x
[embedded RSS template]: {{% eturl rss %}}
[template lookup order] #template-lookup-order
@y
[embedded RSS template]: {{% eturl rss %}}
[template lookup order] #template-lookup-order
@z

@x
For example, to use different templates for home, section, taxonomy, and term pages:
@y
For example, to use different templates for home, section, taxonomy, and term pages:
@z

@x
```text
layouts/
└── _default/
    ├── home.rss.xml
    ├── section.rss.xml
    ├── taxonomy.rss.xml
    └── term.rss.xml
```
@y
```text
layouts/
└── _default/
    ├── home.rss.xml
    ├── section.rss.xml
    ├── taxonomy.rss.xml
    └── term.rss.xml
```
@z

@x
RSS templates receive the `.Page` and `.Site` objects in context.
@y
RSS templates receive the `.Page` and `.Site` objects in context.
@z

@x
## Template lookup order
@y
## Template lookup order
@z

@x
The table below shows the RSS template lookup order for the different page kinds. The first listing shows the lookup order when running with a theme (`demoTheme`).
@y
The table below shows the RSS template lookup order for the different page kinds. The first listing shows the lookup order when running with a theme (`demoTheme`).
@z

@x
{{< datatable-filtered "output" "layouts" "OutputFormat == rss" "Example" "OutputFormat" "Suffix" "Template Lookup Order" >}}
@y
{{< datatable-filtered "output" "layouts" "OutputFormat == rss" "Example" "OutputFormat" "Suffix" "Template Lookup Order" >}}
@z
