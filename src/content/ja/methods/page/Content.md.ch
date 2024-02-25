%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Content
description: Returns the rendered content of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/RawContent
    - methods/page/Plain
    - methods/page/PlainWords
    - methods/page/RenderShortcodes
  returnType: template.HTML
  signatures: [PAGE.Content]
---
@y
---
title: Content
description: Returns the rendered content of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/RawContent
    - methods/page/Plain
    - methods/page/PlainWords
    - methods/page/RenderShortcodes
  returnType: template.HTML
  signatures: [PAGE.Content]
---
@z

@x
The `Content` method on a `Page` object renders Markdown and shortcodes to HTML. The content does not include front matter.
@y
The `Content` method on a `Page` object renders Markdown and shortcodes to HTML. The content does not include front matter.
@z

@x
[shortcodes]: /getting-started/glossary/#shortcode
@y
[shortcodes]: /getting-started/glossary/#shortcode
@z

@x
```go-html-template
{{ .Content }}
```
@y
```go-html-template
{{ .Content }}
```
@z
