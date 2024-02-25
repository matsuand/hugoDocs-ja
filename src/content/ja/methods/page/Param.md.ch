%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Param
description: Returns a page parameter with the given key, falling back to a site parameter if present.
categories: []
keywords: []
action:
  related: []
  returnType: any
  signatures: [PAGE.Param KEY]
aliases: [/functions/param]
---
@y
---
title: Param
description: Returns a page parameter with the given key, falling back to a site parameter if present.
categories: []
keywords: []
action:
  related: []
  returnType: any
  signatures: [PAGE.Param KEY]
aliases: [/functions/param]
---
@z

@x
The `Param` method on a `Page` object looks for the given `KEY` in page parameters, and returns the corresponding value. If it cannot find the `KEY` in page parameters, it looks for the `KEY` in site parameters. If it cannot find the `KEY` in either location, the `Param` method returns `nil`.
@y
The `Param` method on a `Page` object looks for the given `KEY` in page parameters, and returns the corresponding value. If it cannot find the `KEY` in page parameters, it looks for the `KEY` in site parameters. If it cannot find the `KEY` in either location, the `Param` method returns `nil`.
@z

@x
Site and theme developers commonly set parameters at the site level, allowing content authors to override those parameters at the page level.
@y
Site and theme developers commonly set parameters at the site level, allowing content authors to override those parameters at the page level.
@z

@x
For example, to show a table of contents on every page, but allow authors to hide the table of contents as needed:
@y
For example, to show a table of contents on every page, but allow authors to hide the table of contents as needed:
@z

@x
Configuration:
@y
Configuration:
@z

@x
{{< code-toggle file=hugo >}}
[params]
display_toc = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[params]
display_toc = true
{{< /code-toggle >}}
@z

@x
Content:
@y
Content:
@z

@x
{{< code-toggle file=content/example.md fm=true >}}
title = 'Example'
date = 2023-01-01
draft = false
[params]
display_toc = false
{{< /code-toggle >}}
@y
{{< code-toggle file=content/example.md fm=true >}}
title = 'Example'
date = 2023-01-01
draft = false
[params]
display_toc = false
{{< /code-toggle >}}
@z

@x
Template:
@y
Template:
@z

@x
```go-html-template
{{ if .Param "display_toc" }}
  {{ .TableOfContents }}
{{ end }}
```
@y
```go-html-template
{{ if .Param "display_toc" }}
  {{ .TableOfContents }}
{{ end }}
```
@z

@x
The `Param` method returns the value associated with the given `KEY`, regardless of whether the value is truthy or falsy. If you need to ignore falsy values, use this construct instead:
@y
The `Param` method returns the value associated with the given `KEY`, regardless of whether the value is truthy or falsy. If you need to ignore falsy values, use this construct instead:
@z

@x
```go-html-template
{{ or .Params.foo site.Params.foo }}
```
@y
```go-html-template
{{ or .Params.foo site.Params.foo }}
```
@z
