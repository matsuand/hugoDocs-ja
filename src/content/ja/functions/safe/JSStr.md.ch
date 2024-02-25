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
aliases: [/functions/safejsstr]
---
@z

@x
Encapsulates a sequence of characters meant to be embedded between quotes in a JavaScript expression. Use of this type presents a security risk: the encapsulated content should come from a trusted source, as it will be included verbatim in the template output.
@y
Encapsulates a sequence of characters meant to be embedded between quotes in a JavaScript expression. Use of this type presents a security risk: the encapsulated content should come from a trusted source, as it will be included verbatim in the template output.
@z

@x
Without declaring a variable to be a safe JavaScript string:
@y
Without declaring a variable to be a safe JavaScript string:
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
Rendered:
@y
Rendered:
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
To avoid escaping by Go's [html/template] package:
@y
To avoid escaping by Go's [html/template] package:
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
Rendered:
@y
Rendered:
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

@x
[html/template]: https://pkg.go.dev/html/template
@y
[html/template]: https://pkg.go.dev/html/template
@z
