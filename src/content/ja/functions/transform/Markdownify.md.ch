%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: transform.Markdownify
description: Renders Markdown to HTML.
categories: []
keywords: []
action:
  aliases: [markdownify]
  related:
    - methods/page/RenderString
    - methods/page/RenderShortcodes
  returnType: template.HTML
  signatures: [transform.Markdownify INPUT]
aliases: [/functions/markdownify]
---
@y
---
title: transform.Markdownify
description: Renders Markdown to HTML.
categories: []
keywords: []
action:
  aliases: [markdownify]
  related:
    - methods/page/RenderString
    - methods/page/RenderShortcodes
  returnType: template.HTML
  signatures: [transform.Markdownify INPUT]
aliases: [/functions/markdownify]
---
@z

@x
```go-html-template
<h2>{{ .Title | markdownify }}</h2>
```
@y
```go-html-template
<h2>{{ .Title | markdownify }}</h2>
```
@z

@x
If the resulting HTML is a single paragraph, Hugo removes the wrapping `p` tags to produce inline HTML as required per the example above.
@y
If the resulting HTML is a single paragraph, Hugo removes the wrapping `p` tags to produce inline HTML as required per the example above.
@z

@x
To keep the wrapping `p` tags for a single paragraph, use the [`RenderString`] method on the `Page` object, setting the `display` option to `block`.
@y
To keep the wrapping `p` tags for a single paragraph, use the [`RenderString`] method on the `Page` object, setting the `display` option to `block`.
@z

@x
[`RenderString`]: /methods/page/renderstring/
@y
[`RenderString`]: /methods/page/renderstring/
@z

@x
{{% note %}}
Although the `markdownify` function honors [Markdown render hooks] when rendering Markdown to HTML, use the `RenderString` method instead of `markdownify` if a render hook accesses `.Page` context. See issue [#9692] for details.
@y
{{% note %}}
Although the `markdownify` function honors [Markdown render hooks] when rendering Markdown to HTML, use the `RenderString` method instead of `markdownify` if a render hook accesses `.Page` context. See issue [#9692] for details.
@z

@x
[Markdown render hooks]: /render-hooks/
[#9692]: https://github.com/gohugoio/hugo/issues/9692
{{% /note %}}
@y
[Markdown render hooks]: /render-hooks/
[#9692]: https://github.com/gohugoio/hugo/issues/9692
{{% /note %}}
@z
