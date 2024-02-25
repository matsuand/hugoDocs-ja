%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: range
description: Iterates over a non-empty collection, binds context (the dot) to successive elements, and executes the block.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/break
    - functions/go-template/continue
    - functions/go-template/else
    - functions/go-template/end
  returnType: 
  signatures: [range COLLECTION]
aliases: [/functions/range]
toc: true
---
@y
---
title: range
description: Iterates over a non-empty collection, binds context (the dot) to successive elements, and executes the block.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/break
    - functions/go-template/continue
    - functions/go-template/else
    - functions/go-template/end
  returnType: 
  signatures: [range COLLECTION]
aliases: [/functions/range]
toc: true
---
@z

@x
{{% include "functions/go-template/_common/truthy-falsy.md" %}}
@y
{{% include "functions/go-template/_common/truthy-falsy.md" %}}
@z

@x
```go-html-template
{{ $s := slice "foo" "bar" "baz" }}
{{ range $s }}
  {{ . }} → foo bar baz
{{ end }}
```
@y
```go-html-template
{{ $s := slice "foo" "bar" "baz" }}
{{ range $s }}
  {{ . }} → foo bar baz
{{ end }}
```
@z

@x
Use with the [`else`] statement:
@y
Use with the [`else`] statement:
@z

@x
```go-html-template
{{ $s := slice "foo" "bar" "baz" }}
{{ range $s }}
  <p>{{ . }}</p>
{{ else }}
  <p>The collection is empty</p>
{{ end }}
```
@y
```go-html-template
{{ $s := slice "foo" "bar" "baz" }}
{{ range $s }}
  <p>{{ . }}</p>
{{ else }}
  <p>The collection is empty</p>
{{ end }}
```
@z

@x
Within a range block:
@y
Within a range block:
@z

@x
- Use the [`continue`] statement to stop the innermost iteration and continue to the next iteration
- Use the [`break`] statement to stop the innermost iteration and bypass all remaining iterations
@y
- Use the [`continue`] statement to stop the innermost iteration and continue to the next iteration
- Use the [`break`] statement to stop the innermost iteration and bypass all remaining iterations
@z

@x
## Understanding context
@y
## Understanding context
@z

@x
At the top of a page template, the [context] (the dot) is a `Page` object. Within the `range` block, the context is bound to each successive element.
@y
At the top of a page template, the [context] (the dot) is a `Page` object. Within the `range` block, the context is bound to each successive element.
@z

@x
With this contrived example that uses the [`seq`] function to generate a slice of integers:
@y
With this contrived example that uses the [`seq`] function to generate a slice of integers:
@z

@x
```go-html-template
{{ range seq 3 }}
  {{ .Title }}
{{ end }}
```
@y
```go-html-template
{{ range seq 3 }}
  {{ .Title }}
{{ end }}
```
@z

@x
Hugo will throw an error:
@y
Hugo will throw an error:
@z

@x
    can't evaluate field Title in type int
@y
    can't evaluate field Title in type int
@z

@x
The error occurs because we are trying to use the `.Title` method on an integer instead of a `Page` object. Within the `range` block, if we want to render the page title, we need to get the context passed into the template.
@y
The error occurs because we are trying to use the `.Title` method on an integer instead of a `Page` object. Within the `range` block, if we want to render the page title, we need to get the context passed into the template.
@z

@x
{{% note %}}
Use the `$` to get the context passed into the template.
{{% /note %}}
@y
{{% note %}}
Use the `$` to get the context passed into the template.
{{% /note %}}
@z

@x
This template will render the page title three times:
@y
This template will render the page title three times:
@z

@x
```go-html-template
{{ range seq 3 }}
  {{ $.Title }}
{{ end }}
```
@y
```go-html-template
{{ range seq 3 }}
  {{ $.Title }}
{{ end }}
```
@z

@x
{{% note %}}
Gaining a thorough understanding of context is critical for anyone writing template code.
{{% /note %}}
@y
{{% note %}}
Gaining a thorough understanding of context is critical for anyone writing template code.
{{% /note %}}
@z

@x
[`seq`]: /functions/collections/seq/
[context]: /getting-started/glossary/#context
@y
[`seq`]: /functions/collections/seq/
[context]: /getting-started/glossary/#context
@z

@x
## Array or slice of scalars
@y
## Array or slice of scalars
@z

@x
This template code:
@y
This template code:
@z

@x
```go-html-template
{{ $s := slice "foo" "bar" "baz" }}
{{ range $s }}
  <p>{{ . }}</p>
{{ end }}
```
@y
```go-html-template
{{ $s := slice "foo" "bar" "baz" }}
{{ range $s }}
  <p>{{ . }}</p>
{{ end }}
```
@z

@x
Is rendered to:
@y
Is rendered to:
@z

@x
```html
<p>foo</p>
<p>bar</p>
<p>baz</p>
```
@y
```html
<p>foo</p>
<p>bar</p>
<p>baz</p>
```
@z

@x
This template code:
@y
This template code:
@z

@x
```go-html-template
{{ $s := slice "foo" "bar" "baz" }}
{{ range $v := $s }}
  <p>{{ $v }}</p>
{{ end }}
```
@y
```go-html-template
{{ $s := slice "foo" "bar" "baz" }}
{{ range $v := $s }}
  <p>{{ $v }}</p>
{{ end }}
```
@z

@x
Is rendered to:
@y
Is rendered to:
@z

@x
```html
<p>foo</p>
<p>bar</p>
<p>baz</p>
```
@y
```html
<p>foo</p>
<p>bar</p>
<p>baz</p>
```
@z

@x
This template code:
@y
This template code:
@z

@x
```go-html-template
{{ $s := slice "foo" "bar" "baz" }}
{{ range $k, $v := $s }}
  <p>{{ $k }}: {{ $v }}</p>
{{ end }}
```
@y
```go-html-template
{{ $s := slice "foo" "bar" "baz" }}
{{ range $k, $v := $s }}
  <p>{{ $k }}: {{ $v }}</p>
{{ end }}
```
@z

@x
Is rendered to:
@y
Is rendered to:
@z

@x
```html
<p>0: foo</p>
<p>1: bar</p>
<p>2: baz</p>
```
@y
```html
<p>0: foo</p>
<p>1: bar</p>
<p>2: baz</p>
```
@z

@x
## Array or slice of maps
@y
## Array or slice of maps
@z

@x
This template code:
@y
This template code:
@z

@x
```go-html-template
{{ $m := slice
  (dict "name" "John" "age" 30)
  (dict "name" "Will" "age" 28)
  (dict "name" "Joey" "age" 24)
}}
{{ range $m }}
  <p>{{ .name }} is {{ .age }}</p>
{{ end }}
```
@y
```go-html-template
{{ $m := slice
  (dict "name" "John" "age" 30)
  (dict "name" "Will" "age" 28)
  (dict "name" "Joey" "age" 24)
}}
{{ range $m }}
  <p>{{ .name }} is {{ .age }}</p>
{{ end }}
```
@z

@x
Is rendered to:
@y
Is rendered to:
@z

@x
```html
<p>John is 30</p>
<p>Will is 28</p>
<p>Joey is 24</p>
```
@y
```html
<p>John is 30</p>
<p>Will is 28</p>
<p>Joey is 24</p>
```
@z

@x
## Array or slice of pages
@y
## Array or slice of pages
@z

@x
This template code:
@y
This template code:
@z

@x
```go-html-template
{{ range where site.RegularPages "Type" "articles" }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range where site.RegularPages "Type" "articles" }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z

@x
Is rendered to:
@y
Is rendered to:
@z

@x
```html
<h2><a href="/articles/article-3/">Article 3</a></h2>
<h2><a href="/articles/article-2/">Article 2</a></h2>
<h2><a href="/articles/article-1/">Article 1</a></h2>
```
@y
```html
<h2><a href="/articles/article-3/">Article 3</a></h2>
<h2><a href="/articles/article-2/">Article 2</a></h2>
<h2><a href="/articles/article-1/">Article 1</a></h2>
```
@z

@x
## Maps
@y
## Maps
@z

@x
This template code:
@y
This template code:
@z

@x
```go-html-template
{{ $m :=  dict "name" "John" "age" 30 }}
{{ range $k, $v := $m }}
  <p>key = {{ $k }} value = {{ $v }}</p>
{{ end }}
```
@y
```go-html-template
{{ $m :=  dict "name" "John" "age" 30 }}
{{ range $k, $v := $m }}
  <p>key = {{ $k }} value = {{ $v }}</p>
{{ end }}
```
@z

@x
Is rendered to:
@y
Is rendered to:
@z

@x
```go-html-template
<p>key = age value = 30</p>
<p>key = name value = John</p>
```
@y
```go-html-template
<p>key = age value = 30</p>
<p>key = name value = John</p>
```
@z

@x
Unlike ranging over an array or slice, Hugo sorts by key when ranging over a map.
@y
Unlike ranging over an array or slice, Hugo sorts by key when ranging over a map.
@z

@x
{{% include "functions/go-template/_common/text-template.md" %}}
@y
{{% include "functions/go-template/_common/text-template.md" %}}
@z

@x
[`else`]: /functions/go-template/else/
[`break`]: /functions/go-template/break/
[`continue`]: /functions/go-template/continue/
@y
[`else`]: /functions/go-template/else/
[`break`]: /functions/go-template/break/
[`continue`]: /functions/go-template/continue/
@z
