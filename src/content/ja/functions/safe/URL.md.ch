%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: safe.URL
description: Declares the given string as a safe URL or URL substring.
categories: []
keywords: []
action:
  aliases: [safeURL]
  related:
    - functions/safe/CSS
    - functions/safe/HTML
    - functions/safe/HTMLAttr
    - functions/safe/JS
    - functions/safe/JSStr
  returnType: template.URL
  signatures: [safe.URL INPUT]
toc: true
aliases: [/functions/safeurl]
---
@y
---
title: safe.URL
description: Declares the given string as a safe URL or URL substring.
categories: []
keywords: []
action:
  aliases: [safeURL]
  related:
    - functions/safe/CSS
    - functions/safe/HTML
    - functions/safe/HTMLAttr
    - functions/safe/JS
    - functions/safe/JSStr
  returnType: template.URL
  signatures: [safe.URL INPUT]
toc: true
aliases: [/functions/safeurl]
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
Use the `safe.URL` function to encapsulate a known safe URL or URL substring. Schemes other than the following are considered unsafe:
@y
Use the `safe.URL` function to encapsulate a known safe URL or URL substring. Schemes other than the following are considered unsafe:
@z

@x
- `http:`
- `https:`
- `mailto:`
@y
- `http:`
- `https:`
- `mailto:`
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
[Go documentation]: https://pkg.go.dev/html/template#URL
@y
[Go documentation]: https://pkg.go.dev/html/template#URL
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
{{ $href := "irc://irc.freenode.net/#golang" }}
<a href="{{ $href }}">IRC</a>
```
@y
```go-html-template
{{ $href := "irc://irc.freenode.net/#golang" }}
<a href="{{ $href }}">IRC</a>
```
@z

@x
Hugo renders the above to:
@y
Hugo renders the above to:
@z

@x
```html
<a href="#ZgotmplZ">IRC</a>
```
@y
```html
<a href="#ZgotmplZ">IRC</a>
```
@z

@x
{{% note %}}
`ZgotmplZ` is a special value that indicates that unsafe content reached a CSS or URL context at runtime.
{{% /note %}}
@y
{{% note %}}
`ZgotmplZ` is a special value that indicates that unsafe content reached a CSS or URL context at runtime.
{{% /note %}}
@z

@x
To declare the string as safe:
@y
To declare the string as safe:
@z

@x
```go-html-template
{{ $href := "irc://irc.freenode.net/#golang" }}
<a href="{{ $href | safeURL }}">IRC</a>
```
@y
```go-html-template
{{ $href := "irc://irc.freenode.net/#golang" }}
<a href="{{ $href | safeURL }}">IRC</a>
```
@z

@x
Hugo renders the above to:
@y
Hugo renders the above to:
@z

@x
```html
<a href="irc://irc.freenode.net/#golang">IRC</a>
```
@y
```html
<a href="irc://irc.freenode.net/#golang">IRC</a>
```
@z
