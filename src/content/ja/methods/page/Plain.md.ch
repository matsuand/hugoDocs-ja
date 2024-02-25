%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Plain
description: Returns the rendered content of the given page, removing all HTML tags.
categories: []
keywords: []
action:
  related:
    - methods/page/Content
    - methods/page/RawContent
    - methods/page/PlainWords
    - methods/page/RenderShortcodes
  returnType: string
  signatures: [PAGE.Plain]
---
@y
---
title: Plain
description: Returns the rendered content of the given page, removing all HTML tags.
categories: []
keywords: []
action:
  related:
    - methods/page/Content
    - methods/page/RawContent
    - methods/page/PlainWords
    - methods/page/RenderShortcodes
  returnType: string
  signatures: [PAGE.Plain]
---
@z

@x
The `Plain` method on a `Page` object renders Markdown and [shortcodes] to HTML, then strips the HTML [tags]. It does not strip HTML [entities]. The plain content does not include front matter.
@y
The `Plain` method on a `Page` object renders Markdown and [shortcodes] to HTML, then strips the HTML [tags]. It does not strip HTML [entities]. The plain content does not include front matter.
@z

@x
To prevent Go's [html/template] package from escaping HTML entities, pass the result through the [`htmlUnescape`] function.
@y
To prevent Go's [html/template] package from escaping HTML entities, pass the result through the [`htmlUnescape`] function.
@z

@x
```go-html-template
{{ .Plain | htmlUnescape }}
```
@y
```go-html-template
{{ .Plain | htmlUnescape }}
```
@z

@x
[shortcodes]: /getting-started/glossary/#shortcode
[html/template]: https://pkg.go.dev/html/template
[entities]: https://developer.mozilla.org/en-US/docs/Glossary/Entity
[tags]: https://developer.mozilla.org/en-US/docs/Glossary/Tag
[`htmlUnescape`]: /functions/transform/htmlunescape/
@y
[shortcodes]: /getting-started/glossary/#shortcode
[html/template]: https://pkg.go.dev/html/template
[entities]: https://developer.mozilla.org/en-US/docs/Glossary/Entity
[tags]: https://developer.mozilla.org/en-US/docs/Glossary/Tag
[`htmlUnescape`]: /functions/transform/htmlunescape/
@z
