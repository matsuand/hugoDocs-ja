%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: ContentWithoutSummary
description: Returns the rendered content of the given page, excluding the content summary.
categories: []
keywords: []
action:
  related:
    - methods/page/Content
    - methods/page/Summary
    - methods/page/RawContent
    - methods/page/Plain
    - methods/page/PlainWords
    - methods/page/RenderShortcodes
  returnType: template.HTML
  signatures: [PAGE.ContentWithoutSummary]
---
@y
---
title: ContentWithoutSummary
description: Returns the rendered content of the given page, excluding the content summary.
categories: []
keywords: []
action:
  related:
    - methods/page/Content
    - methods/page/Summary
    - methods/page/RawContent
    - methods/page/Plain
    - methods/page/PlainWords
    - methods/page/RenderShortcodes
  returnType: template.HTML
  signatures: [PAGE.ContentWithoutSummary]
---
@z

@x
{{< new-in 0.134.0 >}}
@y
{{< new-in 0.134.0 >}}
@z

@x
Applicable when using manual or automatic [content summaries], the `ContentWithoutSummary` method on a `Page` object renders Markdown and shortcodes to HTML, excluding the content summary from the result.
@y
Applicable when using manual or automatic [content summaries], the `ContentWithoutSummary` method on a `Page` object renders Markdown and shortcodes to HTML, excluding the content summary from the result.
@z

@x
[content summaries]: /content-management/summaries/#manual-summary
@y
[content summaries]: /content-management/summaries/#manual-summary
@z

@x
```go-html-template
{{ .ContentWithoutSummary }}
```
@y
```go-html-template
{{ .ContentWithoutSummary }}
```
@z

@x
The `ContentWithoutSummary` method returns the same as `Content` if you define the content summary in front matter.
@y
The `ContentWithoutSummary` method returns the same as `Content` if you define the content summary in front matter.
@z
