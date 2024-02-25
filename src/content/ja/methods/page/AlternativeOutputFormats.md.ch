%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: AlternativeOutputFormats
description: Returns a slice of OutputFormat objects, excluding the current output format, each representing one of the output formats enabled for the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/OutputFormats
  returnType: page.OutputFormats
  signatures: [PAGE.AlternativeOutputFormats]
---
@y
---
title: AlternativeOutputFormats
description: Returns a slice of OutputFormat objects, excluding the current output format, each representing one of the output formats enabled for the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/OutputFormats
  returnType: page.OutputFormats
  signatures: [PAGE.AlternativeOutputFormats]
---
@z

@x
{{% include "methods/page/_common/output-format-definition.md" %}}
@y
{{% include "methods/page/_common/output-format-definition.md" %}}
@z

@x
The `AlternativeOutputFormats` method on a `Page` object returns a slice of `OutputFormat` objects, excluding the current output format, each representing one of the output formats enabled for the given page.. See&nbsp;[details](/templates/output-formats/).
@y
The `AlternativeOutputFormats` method on a `Page` object returns a slice of `OutputFormat` objects, excluding the current output format, each representing one of the output formats enabled for the given page.. See&nbsp;[details](/templates/output-formats/).
@z

@x
## Methods
@y
## Methods
@z

@x
{{% include "methods/page/_common/output-format-methods.md" %}}
@y
{{% include "methods/page/_common/output-format-methods.md" %}}
@z

@x
## Example
@y
## Example
@z

@x
Generate a `link` element in the `<head>` of each page for each of the alternative output formats:
@y
Generate a `link` element in the `<head>` of each page for each of the alternative output formats:
@z

@x
```go-html-template
<head>
  ...
  {{ $title := printf "%s | %s" .Title site.Title }}
  {{ if .IsHome }}
    {{ $title = site.Title }}
  {{ end }}
  {{ range .AlternativeOutputFormats -}}
    {{ printf `<link rel=%q type=%q href=%q title=%q>` .Rel .MediaType.Type .Permalink $title | safeHTML }}
  {{ end }}
  ...
</head>
```
@y
```go-html-template
<head>
  ...
  {{ $title := printf "%s | %s" .Title site.Title }}
  {{ if .IsHome }}
    {{ $title = site.Title }}
  {{ end }}
  {{ range .AlternativeOutputFormats -}}
    {{ printf `<link rel=%q type=%q href=%q title=%q>` .Rel .MediaType.Type .Permalink $title | safeHTML }}
  {{ end }}
  ...
</head>
```
@z

@x
On the site's home page, Hugo renders this to:
@y
On the site's home page, Hugo renders this to:
@z

@x
```html
<link rel="alternate" type="application/rss+xml" href="https://example.org/index.xml" title="ABC Widgets, Inc.">
```
@y
```html
<link rel="alternate" type="application/rss+xml" href="https://example.org/index.xml" title="ABC Widgets, Inc.">
```
@z
