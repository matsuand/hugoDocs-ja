%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Passthrough render hooks
linkTitle: Passthrough
description: Create a passthrough render hook to override the rendering of text snippets captured by the Goldmark passthrough extension.
categories: [render hooks]
keywords: []
menu:
  docs:
    parent: render-hooks
    weight: 80
weight: 80
toc: true
---
@y
---
title: Passthrough render hooks
linkTitle: Passthrough
description: Create a passthrough render hook to override the rendering of text snippets captured by the Goldmark passthrough extension.
categories: [render hooks]
keywords: []
menu:
  docs:
    parent: render-hooks
    weight: 80
weight: 80
toc: true
---
@z

@x
{{< new-in 0.132.0 >}}
@y
{{< new-in 0.132.0 >}}
@z

@x
## Overview
@y
## Overview
@z

@x
Hugo uses [Goldmark] to render Markdown to HTML. Goldmark supports custom extensions to extend its core functionality. The Goldmark [passthrough extension] captures and preserves raw Markdown within delimited snippets of text, including the delimiters themselves. These are known as _passthrough elements_.
@y
Hugo uses [Goldmark] to render Markdown to HTML. Goldmark supports custom extensions to extend its core functionality. The Goldmark [passthrough extension] captures and preserves raw Markdown within delimited snippets of text, including the delimiters themselves. These are known as _passthrough elements_.
@z

@x
[Goldmark]: https://github.com/yuin/goldmark
[passthrough extension]: /getting-started/configuration-markup/#passthrough
@y
[Goldmark]: https://github.com/yuin/goldmark
[passthrough extension]: /getting-started/configuration-markup/#passthrough
@z

@x
Depending on your choice of delimiters, Hugo will classify a passthrough element as either _block_ or _inline_. Consider this contrived example:
@y
Depending on your choice of delimiters, Hugo will classify a passthrough element as either _block_ or _inline_. Consider this contrived example:
@z

@x
{{< code file=content/sample.md >}}
This is a
@y
{{< code file=content/sample.md >}}
This is a
@z

@x
\[block\]
@y
\[block\]
@z

@x
passthrough element with opening and closing block delimiters.
@y
passthrough element with opening and closing block delimiters.
@z

@x
This is an \(inline\) passthrough element with opening and closing inline delimiters.
{{< /code >}}
@y
This is an \(inline\) passthrough element with opening and closing inline delimiters.
{{< /code >}}
@z

@x
Update your site configuration to enable the passthrough extension and define  opening and closing delimiters for each passthrough element type, either `block` or `inline`. For example:
@y
Update your site configuration to enable the passthrough extension and define  opening and closing delimiters for each passthrough element type, either `block` or `inline`. For example:
@z

@x
{{< code-toggle file=hugo >}}
[markup.goldmark.extensions.passthrough]
enable = true
[markup.goldmark.extensions.passthrough.delimiters]
block = [['\[', '\]'], ['$$', '$$']]
inline = [['\(', '\)']]
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup.goldmark.extensions.passthrough]
enable = true
[markup.goldmark.extensions.passthrough.delimiters]
block = [['\[', '\]'], ['$$', '$$']]
inline = [['\(', '\)']]
{{< /code-toggle >}}
@z

@x
In the example above there are two sets of `block` delimiters. You may use either one in your Markdown.
@y
In the example above there are two sets of `block` delimiters. You may use either one in your Markdown.
@z

@x
The Goldmark passthrough extension is often used in conjunction with the MathJax or KaTeX display engine to render [mathematical expressions] written in [LaTeX] or [Tex].
@y
The Goldmark passthrough extension is often used in conjunction with the MathJax or KaTeX display engine to render [mathematical expressions] written in [LaTeX] or [Tex].
@z

@x
[mathematical expressions]: /content-management/mathematics/
[LaTeX]: https://www.latex-project.org/
[Tex]: https://en.wikipedia.org/wiki/TeX
@y
[mathematical expressions]: /content-management/mathematics/
[LaTeX]: https://www.latex-project.org/
[Tex]: https://en.wikipedia.org/wiki/TeX
@z

@x
To enable custom rendering of passthrough elements, create a render hook.
@y
To enable custom rendering of passthrough elements, create a render hook.
@z

@x
## Context
@y
## Context
@z

@x
Passthrough render hook templates receive the following [context]:
@y
Passthrough render hook templates receive the following [context]:
@z

@x
[context]: /getting-started/glossary/#context
@y
[context]: /getting-started/glossary/#context
@z

@x
###### Attributes
@y
###### Attributes
@z

@x
(`map`) The [Markdown attributes], available if you configure your site as follows:
@y
(`map`) The [Markdown attributes], available if you configure your site as follows:
@z

@x
[Markdown attributes]: /content-management/markdown-attributes/
@y
[Markdown attributes]: /content-management/markdown-attributes/
@z

@x
{{< code-toggle file=hugo >}}
[markup.goldmark.parser.attribute]
block = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup.goldmark.parser.attribute]
block = true
{{< /code-toggle >}}
@z

@x
Hugo populates the `Attributes` map for _block_ passthrough elements. Markdown attributes are not applicable to _inline_ elements.
@y
Hugo populates the `Attributes` map for _block_ passthrough elements. Markdown attributes are not applicable to _inline_ elements.
@z

@x
###### Inner
(`string`) The inner content of the passthrough element, excluding the delimiters.
@y
###### Inner
(`string`) The inner content of the passthrough element, excluding the delimiters.
@z

@x
###### Ordinal
@y
###### Ordinal
@z

@x
(`int`) The zero-based ordinal of the passthrough element on the page.
@y
(`int`) The zero-based ordinal of the passthrough element on the page.
@z

@x
###### Page
@y
###### Page
@z

@x
(`page`) A reference to the current page.
@y
(`page`) A reference to the current page.
@z

@x
###### PageInner
@y
###### PageInner
@z

@x
(`page`) A reference to a page nested via the [`RenderShortcodes`] method. [See details](#pageinner-details).
@y
(`page`) A reference to a page nested via the [`RenderShortcodes`] method. [See details](#pageinner-details).
@z

@x
[`RenderShortcodes`]: /methods/page/rendershortcodes
@y
[`RenderShortcodes`]: /methods/page/rendershortcodes
@z

@x
###### Position
@y
###### Position
@z

@x
(`string`) The position of the passthrough element within the page content.
@y
(`string`) The position of the passthrough element within the page content.
@z

@x
###### Type
@y
###### Type
@z

@x
(`bool`) The passthrough element type, either `block` or `inline`.
@y
(`bool`) The passthrough element type, either `block` or `inline`.
@z

@x
## Example
@y
## Example
@z

@x
As an alternative to rendering mathematical expressions with the MathJax or KaTeX display engine, create a passthrough render hook which calls the [`transform.ToMath`] function:
@y
As an alternative to rendering mathematical expressions with the MathJax or KaTeX display engine, create a passthrough render hook which calls the [`transform.ToMath`] function:
@z

@x
[`transform.ToMath`]: /functions/transform/tomath/
@y
[`transform.ToMath`]: /functions/transform/tomath/
@z

@x
{{< code file=layouts/_default/_markup/render-passthrough.html copy=true >}}
{{ if eq .Type "block" }}
  {{ $opts := dict "displayMode" true }}
  {{ transform.ToMath .Inner $opts }}
{{ else }}
  {{ transform.ToMath .Inner }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/_markup/render-passthrough.html copy=true >}}
{{ if eq .Type "block" }}
  {{ $opts := dict "displayMode" true }}
  {{ transform.ToMath .Inner $opts }}
{{ else }}
  {{ transform.ToMath .Inner }}
{{ end }}
{{< /code >}}
@z

@x
Although you can use one template with conditional logic as shown above, you can also create separate templates for each [`Type`](#type) of passthrough element:
@y
Although you can use one template with conditional logic as shown above, you can also create separate templates for each [`Type`](#type) of passthrough element:
@z

@x
```text
layouts/
└── _default/
    └── _markup/
        ├── render-passthrough-block.html
        └── render-passthrough-inline.html
```
@y
```text
layouts/
└── _default/
    └── _markup/
        ├── render-passthrough-block.html
        └── render-passthrough-inline.html
```
@z

@x
{{% include "/render-hooks/_common/pageinner.md" %}}
@y
{{% include "/render-hooks/_common/pageinner.md" %}}
@z
