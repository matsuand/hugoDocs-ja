%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: OutputFormats
description: Returns a slice of OutputFormat objects, each representing one of the output formats enabled for the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/AlternativeOutputFormats
  returnType: '[]OutputFormat'
  signatures: [PAGE.OutputFormats]
toc: true
---
@y
---
title: OutputFormats
description: Returns a slice of OutputFormat objects, each representing one of the output formats enabled for the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/AlternativeOutputFormats
  returnType: '[]OutputFormat'
  signatures: [PAGE.OutputFormats]
toc: true
---
@z

@x
{{% include "methods/page/_common/output-format-definition.md" %}}
@y
{{% include "methods/page/_common/output-format-definition.md" %}}
@z

@x
The `OutputFormats` method on a `Page` object returns a slice of `OutputFormat` objects, each representing one of the output formats enabled for the given page. See&nbsp;[details](/templates/output-formats/).
@y
The `OutputFormats` method on a `Page` object returns a slice of `OutputFormat` objects, each representing one of the output formats enabled for the given page. See&nbsp;[details](/templates/output-formats/).
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
To link to the RSS feed for the current page:
@y
To link to the RSS feed for the current page:
@z

@x
```go-html-template
{{ with .OutputFormats.Get "rss" -}}
  <a href="{{ .RelPermalink }}">RSS Feed</a>
{{ end }}
```
@y
```go-html-template
{{ with .OutputFormats.Get "rss" -}}
  <a href="{{ .RelPermalink }}">RSS Feed</a>
{{ end }}
```
@z

@x
On the site's home page, Hugo renders this to:
@y
On the site's home page, Hugo renders this to:
@z

@x
```html
<a href="/index.xml">RSS Feed</a>
```
@y
```html
<a href="/index.xml">RSS Feed</a>
```
@z

@x
Please see the [link to output formats] section to understand the importance of the construct above.
@y
Please see the [link to output formats] section to understand the importance of the construct above.
@z

@x
[link to output formats]: /templates/output-formats/#link-to-output-formats
@y
[link to output formats]: /templates/output-formats/#link-to-output-formats
@z
