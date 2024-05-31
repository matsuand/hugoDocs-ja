%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: safe.JSStr
description: Declares the given string as a safe JavaScript string.
categories: []
keywords: []
action:
  aliases: [safeJSStr]
  related:
    - functions/safe/CSS
    - functions/safe/HTML
    - functions/safe/HTMLAttr
    - functions/safe/JS
    - functions/safe/URL
  returnType: template.JSStr
  signatures: [safe.JSStr INPUT]
toc: true
aliases: [/functions/safejsstr]
---
@y
---
title: safe.JSStr
description: Declares the given string as a safe JavaScript string.
categories: []
keywords: []
action:
  aliases: [safeJSStr]
  related:
    - functions/safe/CSS
    - functions/safe/HTML
    - functions/safe/HTMLAttr
    - functions/safe/JS
    - functions/safe/URL
  returnType: template.JSStr
  signatures: [safe.JSStr INPUT]
toc: true
aliases: [/functions/safejsstr]
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
Use the `safe.JSStr` function to encapsulate a sequence of characters meant to be embedded between quotes in a JavaScript expression.
@y
Use the `safe.JSStr` function to encapsulate a sequence of characters meant to be embedded between quotes in a JavaScript expression.
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
[Go documentation]: https://pkg.go.dev/html/template#JSStr
@y
[Go documentation]: https://pkg.go.dev/html/template#JSStr
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
{{ $title := "Lilo & Stitch" }}
<script>
  const a = "Title: " + {{ $title }};
</script>
```
@y
```go-html-template
{{ $title := "Lilo & Stitch" }}
<script>
  const a = "Title: " + {{ $title }};
</script>
```
@z

@x
Hugo renders the above to:
@y
Hugo renders the above to:
@z

@x
```html
<script>
  const a = "Title: " + "Lilo \u0026 Stitch";
</script>
```
@y
```html
<script>
  const a = "Title: " + "Lilo \u0026 Stitch";
</script>
```
@z

@x
To declare the string as safe:
@y
To declare the string as safe:
@z

@x
```go-html-template
{{ $title := "Lilo & Stitch" }}
<script>
  const a = "Title: " + {{ $title | safeJSStr }};
</script>
```
@y
```go-html-template
{{ $title := "Lilo & Stitch" }}
<script>
  const a = "Title: " + {{ $title | safeJSStr }};
</script>
```
@z

@x
Hugo renders the above to:
@y
Hugo renders the above to:
@z

@x
```html
<script>
  const a = "Title: " + "Lilo & Stitch";
</script>
```
@y
```html
<script>
  const a = "Title: " + "Lilo & Stitch";
</script>
```
@z
