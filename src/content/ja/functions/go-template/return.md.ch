%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: return
description: Used within partial templates, terminates template execution and returns the given value, if any.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/partials/Include
    - functions/partials/IncludeCached
  returnType: any
  signatures: ['return [VALUE]']
toc: true
---
@y
---
title: return
description: Used within partial templates, terminates template execution and returns the given value, if any.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/partials/Include
    - functions/partials/IncludeCached
  returnType: any
  signatures: ['return [VALUE]']
toc: true
---
@z

@x
The `return` statement is a custom addition to Go's [text/template] package. Used within partial templates, the `return` statement terminates template execution and returns the given value, if any.
@y
The `return` statement is a custom addition to Go's [text/template] package. Used within partial templates, the `return` statement terminates template execution and returns the given value, if any.
@z

@x
The returned value may be of any data type including, but not limited to, [`bool`], [`float`], [`int`], [`map`], [`resource`], [`slice`], and [`string`].
@y
The returned value may be of any data type including, but not limited to, [`bool`], [`float`], [`int`], [`map`], [`resource`], [`slice`], and [`string`].
@z

@x
A `return` statement without a value returns an empty string of type `template.HTML`.
@y
A `return` statement without a value returns an empty string of type `template.HTML`.
@z

@x
[`bool`]: /getting-started/glossary/#bool
[`float`]: /getting-started/glossary/#float
[`int`]: /getting-started/glossary/#int
[`map`]: /getting-started/glossary/#map
[`resource`]: /getting-started/glossary/#resource
[`slice`]: /getting-started/glossary/#slice
[`string`]: /getting-started/glossary/#string
[text/template]: https://pkg.go.dev/text/template
@y
[`bool`]: /getting-started/glossary/#bool
[`float`]: /getting-started/glossary/#float
[`int`]: /getting-started/glossary/#int
[`map`]: /getting-started/glossary/#map
[`resource`]: /getting-started/glossary/#resource
[`slice`]: /getting-started/glossary/#slice
[`string`]: /getting-started/glossary/#string
[text/template]: https://pkg.go.dev/text/template
@z

@x
{{% note %}}
Unlike `return` statements in other languages, Hugo executes the first occurrence of the `return` statement regardless of its position within logical blocks. See [usage](#usage) notes below.
{{% /note %}}
@y
{{% note %}}
Unlike `return` statements in other languages, Hugo executes the first occurrence of the `return` statement regardless of its position within logical blocks. See [usage](#usage) notes below.
{{% /note %}}
@z

@x
## Example
@y
## Example
@z

@x
By way of example, let's create a partial template that _renders_ HTML, describing whether the given number is odd or even:
@y
By way of example, let's create a partial template that _renders_ HTML, describing whether the given number is odd or even:
@z

@x
{{< code file="layouts/partials/odd-or-even.html" >}}
{{ if math.ModBool . 2 }}
  <p>{{ . }} is even</p>
{{ else }}
  <p>{{ . }} is odd</p>
{{ end }}
{{< /code >}}
@y
{{< code file="layouts/partials/odd-or-even.html" >}}
{{ if math.ModBool . 2 }}
  <p>{{ . }} is even</p>
{{ else }}
  <p>{{ . }} is odd</p>
{{ end }}
{{< /code >}}
@z

@x
When called, the partial renders HTML:
@y
When called, the partial renders HTML:
@z

@x
```go-html-template
{{ partial "odd-or-even.html" 42 }} → <p>42 is even</p>
```
@y
```go-html-template
{{ partial "odd-or-even.html" 42 }} → <p>42 is even</p>
```
@z

@x
Instead of rendering HTML, let's create a partial that _returns_ a boolean value, reporting whether the given number is even:
@y
Instead of rendering HTML, let's create a partial that _returns_ a boolean value, reporting whether the given number is even:
@z

@x
{{< code file="layouts/partials/is-even.html" >}}
{{ return math.ModBool . 2 }}
{{< /code >}}
@y
{{< code file="layouts/partials/is-even.html" >}}
{{ return math.ModBool . 2 }}
{{< /code >}}
@z

@x
With this template:
@y
With this template:
@z

@x
```go-html-template
{{ $number := 42 }}
{{ if partial "is-even.html" $number }}
  <p>{{ $number }} is even</p>
{{ else }}
  <p>{{ $number }} is odd</p>
{{ end }}
```
@y
```go-html-template
{{ $number := 42 }}
{{ if partial "is-even.html" $number }}
  <p>{{ $number }} is even</p>
{{ else }}
  <p>{{ $number }} is odd</p>
{{ end }}
```
@z

@x
Hugo renders:
@y
Hugo renders:
@z

@x
```html
<p>42 is even</p>
```
@y
```html
<p>42 is even</p>
```
@z

@x
See additional examples in the [partial templates] section.
@y
See additional examples in the [partial templates] section.
@z

@x
[partial templates]: /templates/partials/#returning-a-value-from-a-partial
@y
[partial templates]: /templates/partials/#returning-a-value-from-a-partial
@z

@x
## Usage
@y
## Usage
@z

@x
{{% note %}}
Unlike `return` statements in other languages, Hugo executes the first occurrence of the `return` statement regardless of its position within logical blocks.
{{% /note %}}
@y
{{% note %}}
Unlike `return` statements in other languages, Hugo executes the first occurrence of the `return` statement regardless of its position within logical blocks.
{{% /note %}}
@z

@x
A partial that returns a value must contain only one `return` statement, placed at the end of the template.
@y
A partial that returns a value must contain only one `return` statement, placed at the end of the template.
@z

@x
For example:
@y
For example:
@z

@x
{{< code file="layouts/partials/is-even.html" >}}
{{ $result := false }}
{{ if math.ModBool . 2 }}
  {{ $result = "even" }}
{{ else }}
  {{ $result = "odd" }}
{{ end }}
{{ return $result }}
{{< /code >}}
@y
{{< code file="layouts/partials/is-even.html" >}}
{{ $result := false }}
{{ if math.ModBool . 2 }}
  {{ $result = "even" }}
{{ else }}
  {{ $result = "odd" }}
{{ end }}
{{ return $result }}
{{< /code >}}
@z

@x
{{% note %}}
The construct below is incorrect; it contains more than one `return` statement.
{{% /note %}}
@y
{{% note %}}
The construct below is incorrect; it contains more than one `return` statement.
{{% /note %}}
@z

@x
{{< code file="layouts/partials/do-not-do-this.html" >}}
{{ if math.ModBool . 2 }}
  {{ return "even" }}
{{ else }}
  {{ return "odd" }}
{{ end }}
{{< /code >}}
@y
{{< code file="layouts/partials/do-not-do-this.html" >}}
{{ if math.ModBool . 2 }}
  {{ return "even" }}
{{ else }}
  {{ return "odd" }}
{{ end }}
{{< /code >}}
@z
