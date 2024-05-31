%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: safe.HTML
description: Declares the given string as a safeHTML string.
categories: []
keywords: []
action:
  aliases: [safeHTML]
  related:
    - functions/safe/CSS
    - functions/safe/HTMLAttr
    - functions/safe/JS
    - functions/safe/JSStr
    - functions/safe/URL
  returnType: template.HTML
  signatures: [safe.HTML INPUT]
toc: true
aliases: [/functions/safehtml]
---
@y
---
title: safe.HTML
description: Declares the given string as a safeHTML string.
categories: []
keywords: []
action:
  aliases: [safeHTML]
  related:
    - functions/safe/CSS
    - functions/safe/HTMLAttr
    - functions/safe/JS
    - functions/safe/JSStr
    - functions/safe/URL
  returnType: template.HTML
  signatures: [safe.HTML INPUT]
toc: true
aliases: [/functions/safehtml]
---
@z

@x
## Introduction
@y
## Introduction
@z

@x
{{% include "functions/_common/go-html-template-package.md" %}}
@y
{{% include "functions/_common/go-html-template-package.md" %}}
@z

@x
## Usage
@y
## Usage
@z

@x
Use the `safe.HTML` function to encapsulate a known safe HTML document fragment. It should not be used for HTML from a third-party, or HTML with unclosed tags or comments.
@y
Use the `safe.HTML` function to encapsulate a known safe HTML document fragment. It should not be used for HTML from a third-party, or HTML with unclosed tags or comments.
@z

@x
Use of this type presents a security risk: the encapsulated content should come from a trusted source, as it will be included verbatim in the template output.
@y
Use of this type presents a security risk: the encapsulated content should come from a trusted source, as it will be included verbatim in the template output.
@z

@x
See the [Go documentation] for details.
@y
See the [Go documentation] for details.
@z

@x
[Go documentation]: https://pkg.go.dev/html/template#HTML
@y
[Go documentation]: https://pkg.go.dev/html/template#HTML
@z

@x
## Example
@y
## Example
@z

@x
Without a safe declaration:
@y
Without a safe declaration:
@z

@x
```go-html-template
{{ $html := "<em>emphasized</em>" }}
{{ $html }}
```
@y
```go-html-template
{{ $html := "<em>emphasized</em>" }}
{{ $html }}
```
@z

@x
Hugo renders the above to:
@y
Hugo renders the above to:
@z

@x
```html
&lt;em&gt;emphasized&lt;/em&gt;
```
@y
```html
&lt;em&gt;emphasized&lt;/em&gt;
```
@z

@x
To declare the string as safe:
@y
To declare the string as safe:
@z

@x
```go-html-template
{{ $html := "<em>emphasized</em>" }}
{{ $html | safeHTML }}
```
@y
```go-html-template
{{ $html := "<em>emphasized</em>" }}
{{ $html | safeHTML }}
```
@z

@x
Hugo renders the above to:
@y
Hugo renders the above to:
@z

@x
```html
<em>emphasized</em>
```
@y
```html
<em>emphasized</em>
```
@z
