%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Partial templates
description: Partials are smaller, context-aware components in your list and page templates that can be used economically to keep your templating DRY.
categories: [templates]
keywords: [lists,sections,partials]
menu:
  docs:
    parent: templates
    weight: 120
weight: 120
toc: true
aliases: [/templates/partial/,/layout/chrome/,/extras/analytics/]
---
@y
---
title: 部分テンプレート
description: Partials are smaller, context-aware components in your list and page templates that can be used economically to keep your templating DRY.
categories: [templates]
keywords: [lists,sections,partials]
menu:
  docs:
    parent: templates
    weight: 120
weight: 120
toc: true
aliases: [/templates/partial/,/layout/chrome/,/extras/analytics/]
---
@z

@x
{{< youtube pjS4pOLyB7c >}}
@y
{{< youtube pjS4pOLyB7c >}}
@z

@x
## Partial template lookup order
@y
## Partial template lookup order
@z

@x
Partial templates---like [single page templates][singletemps] and [list page templates][listtemps]---have a specific [lookup order]. However, partials are simpler in that Hugo will only check in two places:
@y
Partial templates---like [single page templates][singletemps] and [list page templates][listtemps]---have a specific [lookup order]. However, partials are simpler in that Hugo will only check in two places:
@z

@x
1. `layouts/partials/<PARTIALNAME>.html`
2. `themes/<THEME>/layouts/partials/<PARTIALNAME>.html`
@y
1. `layouts/partials/<PARTIALNAME>.html`
2. `themes/<THEME>/layouts/partials/<PARTIALNAME>.html`
@z

@x
This allows a theme's end user to copy a partial's contents into a file of the same name for [further customization][customize].
@y
This allows a theme's end user to copy a partial's contents into a file of the same name for [further customization][customize].
@z

@x
## Use partials in your templates
@y
## Use partials in your templates
@z

@x
All partials for your Hugo project are located in a single `layouts/partials` directory. For better organization, you can create multiple subdirectories within `partials` as well:
@y
All partials for your Hugo project are located in a single `layouts/partials` directory. For better organization, you can create multiple subdirectories within `partials` as well:
@z

@x
```txt
layouts/
└── partials/
    ├── footer/
    │   ├── scripts.html
    │   └── site-footer.html
    ├── head/
    │   ├── favicons.html
    │   ├── metadata.html
    │   ├── prerender.html
    │   └── twitter.html
    └── header/
        ├── site-header.html
        └── site-nav.html
```
@y
```txt
layouts/
└── partials/
    ├── footer/
    │   ├── scripts.html
    │   └── site-footer.html
    ├── head/
    │   ├── favicons.html
    │   ├── metadata.html
    │   ├── prerender.html
    │   └── twitter.html
    └── header/
        ├── site-header.html
        └── site-nav.html
```
@z

@x
All partials are called within your templates using the following pattern:
@y
All partials are called within your templates using the following pattern:
@z

@x
```go-html-template
{{ partial "<PATH>/<PARTIAL>.html" . }}
```
@y
```go-html-template
{{ partial "<PATH>/<PARTIAL>.html" . }}
```
@z

@x
{{% note %}}
One of the most common mistakes with new Hugo users is failing to pass a context to the partial call. In the pattern above, note how "the dot" (`.`) is required as the second argument to give the partial context. You can read more about "the dot" in the [Hugo templating introduction](/templates/introduction/).
{{% /note %}}
@y
{{% note %}}
One of the most common mistakes with new Hugo users is failing to pass a context to the partial call. In the pattern above, note how "the dot" (`.`) is required as the second argument to give the partial context. You can read more about "the dot" in the [Hugo templating introduction](/templates/introduction/).
{{% /note %}}
@z

@x
{{% note %}}
`<PARTIAL>` including `baseof` is reserved. ([#5373](https://github.com/gohugoio/hugo/issues/5373))
{{% /note %}}
@y
{{% note %}}
`<PARTIAL>` including `baseof` is reserved. ([#5373](https://github.com/gohugoio/hugo/issues/5373))
{{% /note %}}
@z

@x
As shown in the above example directory structure, you can nest your directories within `partials` for better source organization. You only need to call the nested partial's path relative to the `partials` directory:
@y
As shown in the above example directory structure, you can nest your directories within `partials` for better source organization. You only need to call the nested partial's path relative to the `partials` directory:
@z

@x
```go-html-template
{{ partial "header/site-header.html" . }}
{{ partial "footer/scripts.html" . }}
```
@y
```go-html-template
{{ partial "header/site-header.html" . }}
{{ partial "footer/scripts.html" . }}
```
@z

@x
### Variable scoping
@y
### Variable scoping
@z

@x
The second argument in a partial call is the variable being passed down. The above examples are passing the `.`, which tells the template receiving the partial to apply the current [context][context].
@y
The second argument in a partial call is the variable being passed down. The above examples are passing the `.`, which tells the template receiving the partial to apply the current [context][context].
@z

@x
This means the partial will *only* be able to access those variables. The partial is isolated and *has no access to the outer scope*. From within the partial, `$.Var` is equivalent to `.Var`.
@y
This means the partial will *only* be able to access those variables. The partial is isolated and *has no access to the outer scope*. From within the partial, `$.Var` is equivalent to `.Var`.
@z

@x
## Returning a value from a partial
@y
## Returning a value from a partial
@z

@x
In addition to outputting markup, partials can be used to return a value of any type. In order to return a value, a partial must include a lone `return` statement *at the end of the partial*.
@y
In addition to outputting markup, partials can be used to return a value of any type. In order to return a value, a partial must include a lone `return` statement *at the end of the partial*.
@z

@x
### Example GetFeatured
@y
### Example GetFeatured
@z

@x
```go-html-template
{{/* layouts/partials/GetFeatured.html */}}
{{ return first . (where site.RegularPages "Params.featured" true) }}
```
@y
```go-html-template
{{/* layouts/partials/GetFeatured.html */}}
{{ return first . (where site.RegularPages "Params.featured" true) }}
```
@z

@x
```go-html-template
{{/* layouts/index.html */}}
{{ range partial "GetFeatured.html" 5 }}
  [...]
{{ end }}
```
@y
```go-html-template
{{/* layouts/index.html */}}
{{ range partial "GetFeatured.html" 5 }}
  [...]
{{ end }}
```
@z

@x
### Example GetImage
@y
### Example GetImage
@z

@x
```go-html-template
{{/* layouts/partials/GetImage.html */}}
{{ $image := false }}
{{ with .Params.gallery }}
  {{ $image = index . 0 }}
{{ end }}
{{ with .Params.image }}
  {{ $image = . }}
{{ end }}
{{ return $image }}
```
@y
```go-html-template
{{/* layouts/partials/GetImage.html */}}
{{ $image := false }}
{{ with .Params.gallery }}
  {{ $image = index . 0 }}
{{ end }}
{{ with .Params.image }}
  {{ $image = . }}
{{ end }}
{{ return $image }}
```
@z

@x
```go-html-template
{{/* layouts/_default/single.html */}}
{{ with partial "GetImage.html" . }}
  [...]
{{ end }}
```
@y
```go-html-template
{{/* layouts/_default/single.html */}}
{{ with partial "GetImage.html" . }}
  [...]
{{ end }}
```
@z

@x
{{% note %}}
Only one `return` statement is allowed per partial file.
{{% /note %}}
@y
{{% note %}}
Only one `return` statement is allowed per partial file.
{{% /note %}}
@z

@x
## Inline partials
@y
## Inline partials
@z

@x
You can also define partials inline in the template. But remember that template namespace is global, so you need to make sure that the names are unique to avoid conflicts.
@y
You can also define partials inline in the template. But remember that template namespace is global, so you need to make sure that the names are unique to avoid conflicts.
@z

@x
```go-html-template
Value: {{ partial "my-inline-partial.html" . }}
@y
```go-html-template
Value: {{ partial "my-inline-partial.html" . }}
@z

@x
{{ define "partials/my-inline-partial.html" }}
{{ $value := 32 }}
{{ return $value }}
{{ end }}
```
@y
{{ define "partials/my-inline-partial.html" }}
{{ $value := 32 }}
{{ return $value }}
{{ end }}
```
@z

@x
## Cached partials
@y
## Cached partials
@z

@x
The `partialCached` template function provides significant performance gains for complex templates that don't need to be re-rendered on every invocation. See&nbsp;[details][partialcached].
@y
The `partialCached` template function provides significant performance gains for complex templates that don't need to be re-rendered on every invocation. See&nbsp;[details][partialcached].
@z

@x
## Examples
@y
## Examples
@z

@x
### `header.html`
@y
### `header.html`
@z

@x
The following `header.html` partial template is used for [spf13.com](https://spf13.com/):
@y
The following `header.html` partial template is used for [spf13.com](https://spf13.com/):
@z

@x
{{< code file=layouts/partials/header.html >}}
<!DOCTYPE html>
<html class="no-js" lang="en-US" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#">
<head>
    <meta charset="utf-8">
@y
{{< code file=layouts/partials/header.html >}}
<!DOCTYPE html>
<html class="no-js" lang="en-US" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#">
<head>
    <meta charset="utf-8">
@z

@x
    {{ partial "meta.html" . }}
@y
    {{ partial "meta.html" . }}
@z

@x
    <base href="{{ .Site.BaseURL }}">
    <title> {{ .Title }} : spf13.com </title>
    <link rel="canonical" href="{{ .Permalink }}">
    {{ if .RSSLink }}<link href="{{ .RSSLink }}" rel="alternate" type="application/rss+xml" title="{{ .Title }}" />{{ end }}
@y
    <base href="{{ .Site.BaseURL }}">
    <title> {{ .Title }} : spf13.com </title>
    <link rel="canonical" href="{{ .Permalink }}">
    {{ if .RSSLink }}<link href="{{ .RSSLink }}" rel="alternate" type="application/rss+xml" title="{{ .Title }}" />{{ end }}
@z

@x
    {{ partial "head_includes.html" . }}
</head>
{{< /code >}}
@y
    {{ partial "head_includes.html" . }}
</head>
{{< /code >}}
@z

@x
{{% note %}}
The `header.html` example partial was built before the introduction of block templates to Hugo. Read more on [base templates and blocks](/templates/base/) for defining the outer chrome or shell of your master templates (i.e., your site's head, header, and footer). You can even combine blocks and partials for added flexibility.
{{% /note %}}
@y
{{% note %}}
The `header.html` example partial was built before the introduction of block templates to Hugo. Read more on [base templates and blocks](/templates/base/) for defining the outer chrome or shell of your master templates (i.e., your site's head, header, and footer). You can even combine blocks and partials for added flexibility.
{{% /note %}}
@z

@x
### `footer.html`
@y
### `footer.html`
@z

@x
The following `footer.html` partial template is used for [spf13.com](https://spf13.com/):
@y
The following `footer.html` partial template is used for [spf13.com](https://spf13.com/):
@z

@x
{{< code file=layouts/partials/footer.html >}}
<footer>
  <div>
    <p>
    &copy; 2013-14 Steve Francia.
    <a href="https://creativecommons.org/licenses/by/3.0/" title="Creative Commons Attribution">Some rights reserved</a>;
    please attribute properly and link back.
    </p>
  </div>
</footer>
{{< /code >}}
@y
{{< code file=layouts/partials/footer.html >}}
<footer>
  <div>
    <p>
    &copy; 2013-14 Steve Francia.
    <a href="https://creativecommons.org/licenses/by/3.0/" title="Creative Commons Attribution">Some rights reserved</a>;
    please attribute properly and link back.
    </p>
  </div>
</footer>
{{< /code >}}
@z

@x
[context]: /templates/introduction/
[customize]: /hugo-modules/theme-components/
[listtemps]: /templates/lists/
[lookup order]: /templates/lookup-order/
[partialcached]: /functions/partials/includecached/
[singletemps]: /templates/single-page-templates/
[themes]: /themes/
@y
[context]: /templates/introduction/
[customize]: /hugo-modules/theme-components/
[listtemps]: /templates/lists/
[lookup order]: /templates/lookup-order/
[partialcached]: /functions/partials/includecached/
[singletemps]: /templates/single-page-templates/
[themes]: /themes/
@z
