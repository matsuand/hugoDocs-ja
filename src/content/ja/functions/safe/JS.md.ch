%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: safe.JS
description: Declares the given string as a safe JavaScript expression.
categories: []
keywords: []
action:
  aliases: [safeJS]
  related:
    - functions/safe/CSS
    - functions/safe/HTML
    - functions/safe/HTMLAttr
    - functions/safe/JSStr
    - functions/safe/URL
  returnType: template.JS
  signatures: [safe.JS INPUT]
toc: true
aliases: [/functions/safejs]
---
@y
---
title: safe.JS
description: Declares the given string as a safe JavaScript expression.
categories: []
keywords: []
action:
  aliases: [safeJS]
  related:
    - functions/safe/CSS
    - functions/safe/HTML
    - functions/safe/HTMLAttr
    - functions/safe/JSStr
    - functions/safe/URL
  returnType: template.JS
  signatures: [safe.JS INPUT]
toc: true
aliases: [/functions/safejs]
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
Use the `safe.JS` function to encapsulate a known safe EcmaScript5 Expression.
@y
Use the `safe.JS` function to encapsulate a known safe EcmaScript5 Expression.
@z

@x
Template authors are responsible for ensuring that typed expressions do not break the intended precedence and that there is no statement/expression ambiguity as when passing an expression like `{ foo: bar() }\n['foo']()`, which is both a valid Expression and a valid Program with a very different meaning.
@y
Template authors are responsible for ensuring that typed expressions do not break the intended precedence and that there is no statement/expression ambiguity as when passing an expression like `{ foo: bar() }\n['foo']()`, which is both a valid Expression and a valid Program with a very different meaning.
@z

@x
Use of this type presents a security risk: the encapsulated content should come from a trusted source, as it will be included verbatim in the template output.
@y
Use of this type presents a security risk: the encapsulated content should come from a trusted source, as it will be included verbatim in the template output.
@z

@x
Using the `safe.JS` function to include valid but untrusted JSON is not safe. A safe alternative is to parse the JSON with the [`transform.Unmarshal`] function and then pass the resultant object into the template, where it will be converted to sanitized JSON when presented in a JavaScript context.
@y
Using the `safe.JS` function to include valid but untrusted JSON is not safe. A safe alternative is to parse the JSON with the [`transform.Unmarshal`] function and then pass the resultant object into the template, where it will be converted to sanitized JSON when presented in a JavaScript context.
@z

@x
[`transform.Unmarshal`]: /functions/transform/unmarshal/
@y
[`transform.Unmarshal`]: /functions/transform/unmarshal/
@z

@x
See the [Go documentation] for details.
@y
See the [Go documentation] for details.
@z

@x
[Go documentation]: https://pkg.go.dev/html/template#JS
@y
[Go documentation]: https://pkg.go.dev/html/template#JS
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
{{ $js := "x + y" }}
<script>const a = {{ $js }}</script>
```
@y
```go-html-template
{{ $js := "x + y" }}
<script>const a = {{ $js }}</script>
```
@z

@x
Hugo renders the above to:
@y
Hugo renders the above to:
@z

@x
```html
<script>const a = "x + y"</script>
```
@y
```html
<script>const a = "x + y"</script>
```
@z

@x
To declare the string as safe:
@y
To declare the string as safe:
@z

@x
```go-html-template
{{ $js := "x + y" }}
<script>const a = {{ $js | safeJS }}</script>
```
@y
```go-html-template
{{ $js := "x + y" }}
<script>const a = {{ $js | safeJS }}</script>
```
@z

@x
Hugo renders the above to:
@y
Hugo renders the above to:
@z

@x
```html
<script>const a = x + y</script>
```
@y
```html
<script>const a = x + y</script>
```
@z
