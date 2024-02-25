%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: partials.IncludeCached
description: Executes the given template and caches the result, optionally passing context. If the partial template contains a return statement, returns the given value, else returns the rendered output.
categories: []
keywords: []
action:
  aliases: [partialCached]
  related:
    - functions/go-template/return
    - functions/partials/Include
    - functions/go-template/template
    - methods/page/Render
  returnType: any
  signatures: ['partials.IncludeCached LAYOUT CONTEXT [VARIANT...]']
signatures: 
  - partials.IncludeCached NAME CONTEXT [VARIANT...]
  - partialCached NAME CONTEXT [VARIANT...]
aliases: [/functions/partialcached]
---
@y
---
title: partials.IncludeCached
description: Executes the given template and caches the result, optionally passing context. If the partial template contains a return statement, returns the given value, else returns the rendered output.
categories: []
keywords: []
action:
  aliases: [partialCached]
  related:
    - functions/go-template/return
    - functions/partials/Include
    - functions/go-template/template
    - methods/page/Render
  returnType: any
  signatures: ['partials.IncludeCached LAYOUT CONTEXT [VARIANT...]']
signatures: 
  - partials.IncludeCached NAME CONTEXT [VARIANT...]
  - partialCached NAME CONTEXT [VARIANT...]
aliases: [/functions/partialcached]
---
@z

@x
Without a [`return`] statement, the `partialCached` function returns a string of type `template.HTML`. With a `return` statement, the `partialCached` function can return any data type.
@y
Without a [`return`] statement, the `partialCached` function returns a string of type `template.HTML`. With a `return` statement, the `partialCached` function can return any data type.
@z

@x
The `partialCached` function can offer significant performance gains for complex templates that don't need to be re-rendered on every invocation.
@y
The `partialCached` function can offer significant performance gains for complex templates that don't need to be re-rendered on every invocation.
@z

@x
{{% note %}}
Each Site (or language) has its own `partialCached` cache, so each site will execute a partial once.
@y
{{% note %}}
Each Site (or language) has its own `partialCached` cache, so each site will execute a partial once.
@z

@x
Hugo renders pages in parallel, and will render the partial more than once with concurrent calls to the `partialCached` function. After Hugo caches the rendered partial, new pages entering the build pipeline will use the cached result.
{{% /note %}}
@y
Hugo renders pages in parallel, and will render the partial more than once with concurrent calls to the `partialCached` function. After Hugo caches the rendered partial, new pages entering the build pipeline will use the cached result.
{{% /note %}}
@z

@x
Here is the simplest usage:
@y
Here is the simplest usage:
@z

@x
```go-html-template
{{ partialCached "footer.html" . }}
```
@y
```go-html-template
{{ partialCached "footer.html" . }}
```
@z

@x
Pass additional arguments to `partialCached` to create variants of the cached partial. For example, if you have a complex partial that should be identical when rendered for pages within the same section, use a variant based on section so that the partial is only rendered once per section:
@y
Pass additional arguments to `partialCached` to create variants of the cached partial. For example, if you have a complex partial that should be identical when rendered for pages within the same section, use a variant based on section so that the partial is only rendered once per section:
@z

@x
{{< code file=partial-cached-example.html >}}
{{ partialCached "footer.html" . .Section }}
{{< /code >}}
@y
{{< code file=partial-cached-example.html >}}
{{ partialCached "footer.html" . .Section }}
{{< /code >}}
@z

@x
Pass additional arguments, of any data type, as needed to create unique variants:
@y
Pass additional arguments, of any data type, as needed to create unique variants:
@z

@x
```go-html-template
{{ partialCached "footer.html" . .Params.country .Params.province }}
```
@y
```go-html-template
{{ partialCached "footer.html" . .Params.country .Params.province }}
```
@z

@x
The variant arguments are not available to the underlying partial template; they are only used to create unique cache keys. 
@y
The variant arguments are not available to the underlying partial template; they are only used to create unique cache keys. 
@z

@x
To return a value from a partial template, it must contain only one `return` statement, placed at the end of the template:
@y
To return a value from a partial template, it must contain only one `return` statement, placed at the end of the template:
@z

@x
```go-html-template
{{ $result := "" }}
{{ if math.ModBool . 2 }}
  {{ $result = "even" }}
{{ else }}
  {{ $result = "odd" }}
{{ end }}
{{ return $result }}
```
@y
```go-html-template
{{ $result := "" }}
{{ if math.ModBool . 2 }}
  {{ $result = "even" }}
{{ else }}
  {{ $result = "odd" }}
{{ end }}
{{ return $result }}
```
@z

@x
See&nbsp;[details][`return`].
@y
See&nbsp;[details][`return`].
@z

@x
[`return`]: /functions/go-template/return/
@y
[`return`]: /functions/go-template/return/
@z
