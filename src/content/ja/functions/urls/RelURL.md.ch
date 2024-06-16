%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: urls.RelURL
description: Returns a relative URL.
categories: []
keywords: []
action:
  aliases: [relURL]
  related:
    - functions/urls/AbsLangURL
    - functions/urls/AbsURL 
    - functions/urls/RelLangURL
  returnType: string
  signatures: [urls.RelURL INPUT]
aliases: [/functions/relurl]
---
@y
---
title: urls.RelURL
description: Returns a relative URL.
categories: []
keywords: []
action:
  aliases: [relURL]
  related:
    - functions/urls/AbsLangURL
    - functions/urls/AbsURL 
    - functions/urls/RelLangURL
  returnType: string
  signatures: [urls.RelURL INPUT]
aliases: [/functions/relurl]
---
@z

@x
With multilingual configurations, use the [`urls.RelLangURL`] function instead. The URL returned by this function depends on:
@y
With multilingual configurations, use the [`urls.RelLangURL`] function instead. The URL returned by this function depends on:
@z

@x
- Whether the input begins with a slash
- The `baseURL` in your site configuration
@y
- Whether the input begins with a slash
- The `baseURL` in your site configuration
@z

@x
### Input does not begin with a slash
@y
### Input does not begin with a slash
@z

@x
If the input does not begin with a slash, the resulting URL will be relative to the `baseURL` in your site configuration.
@y
If the input does not begin with a slash, the resulting URL will be relative to the `baseURL` in your site configuration.
@z

@x
With `baseURL = https://example.org/`
@y
With `baseURL = https://example.org/`
@z

@x
```go-html-template
{{ relURL "" }}                        → /
{{ relURL "articles" }}                → /articles
{{ relURL "style.css" }}               → /style.css
{{ relURL "https://example.org/foo" }} → /foo
```
@y
```go-html-template
{{ relURL "" }}                        → /
{{ relURL "articles" }}                → /articles
{{ relURL "style.css" }}               → /style.css
{{ relURL "https://example.org/foo" }} → /foo
```
@z

@x
With `baseURL = https://example.org/docs/`
@y
With `baseURL = https://example.org/docs/`
@z

@x
```go-html-template
{{ relURL "" }}                             → /docs/
{{ relURL "articles" }}                     → /docs/articles
{{ relURL "style.css" }}                    → /docs/style.css
{{ relURL "https://example.org/docs/foo" }} → /docs/foo
```
@y
```go-html-template
{{ relURL "" }}                             → /docs/
{{ relURL "articles" }}                     → /docs/articles
{{ relURL "style.css" }}                    → /docs/style.css
{{ relURL "https://example.org/docs/foo" }} → /docs/foo
```
@z

@x
#### Input begins with a slash
@y
#### Input begins with a slash
@z

@x
If the input begins with a slash, the resulting URL will be relative to the protocol+host of the `baseURL` in your site configuration.
@y
If the input begins with a slash, the resulting URL will be relative to the protocol+host of the `baseURL` in your site configuration.
@z

@x
With `baseURL = https://example.org/`
@y
With `baseURL = https://example.org/`
@z

@x
```go-html-template
{{ relURL "/" }}          → /
{{ relURL "/articles" }}  → /articles
{{ relURL "/style.css" }} → /style.css
```
@y
```go-html-template
{{ relURL "/" }}          → /
{{ relURL "/articles" }}  → /articles
{{ relURL "/style.css" }} → /style.css
```
@z

@x
With `baseURL = https://example.org/docs/`
@y
With `baseURL = https://example.org/docs/`
@z

@x
```go-html-template
{{ relURL "/" }}          → /
{{ relURL "/articles" }}  → /articles
{{ relURL "/style.css" }} → /style.css
```
@y
```go-html-template
{{ relURL "/" }}          → /
{{ relURL "/articles" }}  → /articles
{{ relURL "/style.css" }} → /style.css
```
@z

@x
[`urls.RelLangURL`]: /functions/urls/rellangurl/
@y
[`urls.RelLangURL`]: /functions/urls/rellangurl/
@z
