%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Heading render hooks
linkTitle: Headings
description: Create a heading render hook to override the rendering of Markdown headings to HTML.
categories: [render hooks]
keywords: []
menu:
  docs:
    parent: render-hooks
    weight: 40
weight: 40
toc: true
---
@y
---
title: Heading render hooks
linkTitle: Headings
description: Create a heading render hook to override the rendering of Markdown headings to HTML.
categories: [render hooks]
keywords: []
menu:
  docs:
    parent: render-hooks
    weight: 40
weight: 40
toc: true
---
@z

@x
## Context
@y
## Context
@z

@x
Heading render hook templates receive the following [context]:
@y
Heading render hook templates receive the following [context]:
@z

@x
[context]: /getting-started/glossary/#context
@y
[context]: /getting-started/glossary/#context
@z

@x
###### Anchor
@y
###### Anchor
@z

@x
(`string`) The `id` attribute of the heading element.
@y
(`string`) The `id` attribute of the heading element.
@z

@x
###### Attributes
@y
###### Attributes
@z

@x
(`map`) The Markdown attributes, available if you configure your site as follows:
@y
(`map`) The Markdown attributes, available if you configure your site as follows:
@z

@x
{{< code-toggle file=hugo >}}
[markup.goldmark.parser.attribute]
title = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup.goldmark.parser.attribute]
title = true
{{< /code-toggle >}}
@z

@x
###### Level
@y
###### Level
@z

@x
(`int`) The heading level, 1 through 6.
@y
(`int`) The heading level, 1 through 6.
@z

@x
###### Page
@y
###### Page
@z

@x
(`page`) A reference to the page containing the heading.
@y
(`page`) A reference to the page containing the heading.
@z

@x
###### PlainText
@y
###### PlainText
@z

@x
(`string`) The heading text as plain text.
@y
(`string`) The heading text as plain text.
@z

@x
###### Text
@y
###### Text
@z

@x
(`string`) The heading text.
@y
(`string`) The heading text.
@z

@x
## Examples
@y
## Examples
@z

@x
In its default configuration, Hugo renders Markdown headings according to the [CommonMark specification] with the addition of automatic `id` attributes. To create a render hook that does the same thing:
@y
In its default configuration, Hugo renders Markdown headings according to the [CommonMark specification] with the addition of automatic `id` attributes. To create a render hook that does the same thing:
@z

@x
[CommonMark specification]: https://spec.commonmark.org/current/
@y
[CommonMark specification]: https://spec.commonmark.org/current/
@z

@x
{{< code file=layouts/_default/_markup/render-heading.html copy=true >}}
<h{{ .Level }} id="{{ .Anchor }}">
  {{- .Text | safeHTML -}}
</h{{ .Level }}>
{{< /code >}}
@y
{{< code file=layouts/_default/_markup/render-heading.html copy=true >}}
<h{{ .Level }} id="{{ .Anchor }}">
  {{- .Text | safeHTML -}}
</h{{ .Level }}>
{{< /code >}}
@z

@x
To add an anchor link to the right of each heading:
@y
To add an anchor link to the right of each heading:
@z

@x
{{< code file=layouts/_default/_markup/render-heading.html copy=true >}}
<h{{ .Level }} id="{{ .Anchor }}">
  {{ .Text | safeHTML }}
  <a href="#{{ .Anchor }}">#</a>
</h{{ .Level }}>
{{< /code >}}
@y
{{< code file=layouts/_default/_markup/render-heading.html copy=true >}}
<h{{ .Level }} id="{{ .Anchor }}">
  {{ .Text | safeHTML }}
  <a href="#{{ .Anchor }}">#</a>
</h{{ .Level }}>
{{< /code >}}
@z
