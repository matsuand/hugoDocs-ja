%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: RawContent
description: Returns the raw content of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Content
    - methods/page/Plain
    - methods/page/PlainWords
    - methods/page/RenderShortcodes
  returnType: string
  signatures: [PAGE.RawContent]
---
@y
---
title: RawContent
description: Returns the raw content of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Content
    - methods/page/Plain
    - methods/page/PlainWords
    - methods/page/RenderShortcodes
  returnType: string
  signatures: [PAGE.RawContent]
---
@z

@x
The `RawContent` method on a `Page` object returns the raw content. The raw content does not include front matter.
@y
The `RawContent` method on a `Page` object returns the raw content. The raw content does not include front matter.
@z

@x
```go-html-template
{{ .RawContent }}
```
@y
```go-html-template
{{ .RawContent }}
```
@z

@x
This is useful when rendering a page in a plain text [output format].
@y
This is useful when rendering a page in a plain text [output format].
@z

@x
{{% note %}}
[Shortcodes] within the content are not rendered. To get the raw content with shortcodes rendered, use the [`RenderShortcodes`] method on a `Page` object.
@y
{{% note %}}
[Shortcodes] within the content are not rendered. To get the raw content with shortcodes rendered, use the [`RenderShortcodes`] method on a `Page` object.
@z

@x
[shortcodes]: /getting-started/glossary/#shortcode
[`RenderShortcodes`]: /methods/page/rendershortcodes/
{{% /note %}}
@y
[shortcodes]: /getting-started/glossary/#shortcode
[`RenderShortcodes`]: /methods/page/rendershortcodes/
{{% /note %}}
@z

@x
[output format]: /templates/output-formats/
@y
[output format]: /templates/output-formats/
@z
