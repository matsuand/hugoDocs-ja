%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: RenderString
description: Renders markup to HTML.
categories: []
keywords: []
action:
  related:
    - methods/page/RenderShortcodes
    - functions/transform/Markdownify
  returnType: template.HTML
  signatures: ['PAGE.RenderString [OPTIONS] MARKUP']
aliases: [/functions/renderstring]
---
@y
---
title: RenderString
description: Renders markup to HTML.
categories: []
keywords: []
action:
  related:
    - methods/page/RenderShortcodes
    - functions/transform/Markdownify
  returnType: template.HTML
  signatures: ['PAGE.RenderString [OPTIONS] MARKUP']
aliases: [/functions/renderstring]
---
@z

@x
```go-html-template
{{ $s := "An *emphasized* word" }}
{{ $s | .RenderString }} → An <em>emphasized</em> word
```
@y
```go-html-template
{{ $s := "An *emphasized* word" }}
{{ $s | .RenderString }} → An <em>emphasized</em> word
```
@z

@x
This method takes an optional map of options:
@y
This method takes an optional map of options:
@z

@x
display
: (`string`) Specify either `inline` or `block`. If `inline`, removes surrounding `p` tags from short snippets. Default is `inline`.
@y
display
: (`string`) Specify either `inline` or `block`. If `inline`, removes surrounding `p` tags from short snippets. Default is `inline`.
@z

@x
markup
: (`string`) Specify a [markup identifier] for the provided markup. Default is the `markup` front matter value, falling back to the value derived from the page's file extension.
@y
markup
: (`string`) Specify a [markup identifier] for the provided markup. Default is the `markup` front matter value, falling back to the value derived from the page's file extension.
@z

@x
Render with the default markup renderer:
@y
Render with the default markup renderer:
@z

@x
```go-html-template
{{ $s := "An *emphasized* word" }}
{{ $s | .RenderString }} → An <em>emphasized</em> word
@y
```go-html-template
{{ $s := "An *emphasized* word" }}
{{ $s | .RenderString }} → An <em>emphasized</em> word
@z

@x
{{ $opts := dict "display" "block" }}
{{ $s | .RenderString $opts }} → <p>An <em>emphasized</em> word</p>
```
@y
{{ $opts := dict "display" "block" }}
{{ $s | .RenderString $opts }} → <p>An <em>emphasized</em> word</p>
```
@z

@x
Render with [Pandoc]:
@y
Render with [Pandoc]:
@z

@x
```go-html-template
{{ $s := "H~2~O" }}
@y
```go-html-template
{{ $s := "H~2~O" }}
@z

@x
{{ $opts := dict "markup" "pandoc" }}
{{ $s | .RenderString $opts }} → H<sub>2</sub>O
@y
{{ $opts := dict "markup" "pandoc" }}
{{ $s | .RenderString $opts }} → H<sub>2</sub>O
@z

@x
{{ $opts := dict "display" "block" "markup" "pandoc" }}
{{ .RenderString $opts $s }} → <p>H<sub>2</sub>O</p>
```
@y
{{ $opts := dict "display" "block" "markup" "pandoc" }}
{{ .RenderString $opts $s }} → <p>H<sub>2</sub>O</p>
```
@z

@x
[markup identifier]: /content-management/formats/#list-of-content-formats
[pandoc]: https://www.pandoc.org/
@y
[markup identifier]: /content-management/formats/#list-of-content-formats
[pandoc]: https://www.pandoc.org/
@z
