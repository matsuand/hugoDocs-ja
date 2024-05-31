%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: safe.CSS
description: Declares the given string as a safe CSS string.
categories: []
keywords: []
action:
  aliases: [safeCSS]
  related:
    - functions/safe/HTML
    - functions/safe/HTMLAttr
    - functions/safe/JS
    - functions/safe/JSStr
    - functions/safe/URL
  returnType: template.CSS
  signatures: [safe.CSS INPUT]
toc: true
aliases: [/functions/safecss]
---
@y
---
title: safe.CSS
description: Declares the given string as a safe CSS string.
categories: []
keywords: []
action:
  aliases: [safeCSS]
  related:
    - functions/safe/HTML
    - functions/safe/HTMLAttr
    - functions/safe/JS
    - functions/safe/JSStr
    - functions/safe/URL
  returnType: template.CSS
  signatures: [safe.CSS INPUT]
toc: true
aliases: [/functions/safecss]
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
Use the `safe.CSS` function to encapsulate known safe content that matches any of:
@y
Use the `safe.CSS` function to encapsulate known safe content that matches any of:
@z

@x
1. The CSS3 stylesheet production, such as `p { color: purple }`.
2. The CSS3 rule production, such as `a[href=~"https:"].foo#bar`.
3. CSS3 declaration productions, such as `color: red; margin: 2px`.
4. The CSS3 value production, such as `rgba(0, 0, 255, 127)`.
@y
1. The CSS3 stylesheet production, such as `p { color: purple }`.
2. The CSS3 rule production, such as `a[href=~"https:"].foo#bar`.
3. CSS3 declaration productions, such as `color: red; margin: 2px`.
4. The CSS3 value production, such as `rgba(0, 0, 255, 127)`.
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
[Go documentation]: https://pkg.go.dev/html/template#CSS
@y
[Go documentation]: https://pkg.go.dev/html/template#CSS
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
{{ $style := "color: red;" }}
<p style="{{ $style }}">foo</p>
```
@y
```go-html-template
{{ $style := "color: red;" }}
<p style="{{ $style }}">foo</p>
```
@z

@x
Hugo renders the above to:
@y
Hugo renders the above to:
@z

@x
```html
<p style="ZgotmplZ">foo</p>
```
@y
```html
<p style="ZgotmplZ">foo</p>
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
{{ $style := "color: red;" }}
<p style="{{ $style | safeCSS }}">foo</p>
```
@y
```go-html-template
{{ $style := "color: red;" }}
<p style="{{ $style | safeCSS }}">foo</p>
```
@z

@x
Hugo renders the above to:
@y
Hugo renders the above to:
@z

@x
```html
<p style="color: red;">foo</p>
```
@y
```html
<p style="color: red;">foo</p>
```
@z
