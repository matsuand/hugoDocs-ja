%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: urls.RelLangURL
description: Returns a relative URL with a language prefix, if any.
categories: []
keywords: []
action:
  aliases: [relLangURL]
  related:
    - functions/urls/AbsLangURL
    - functions/urls/AbsURL 
    - functions/urls/RelURL
  returnType: string
  signatures: [urls.RelLangURL INPUT]
aliases: [/functions/rellangurl]
---
@y
---
title: urls.RelLangURL
description: Returns a relative URL with a language prefix, if any.
categories: []
keywords: []
action:
  aliases: [relLangURL]
  related:
    - functions/urls/AbsLangURL
    - functions/urls/AbsURL 
    - functions/urls/RelURL
  returnType: string
  signatures: [urls.RelLangURL INPUT]
aliases: [/functions/rellangurl]
---
@z

@x
Use this function with both monolingual and multilingual configurations. The URL returned by this function depends on:
@y
Use this function with both monolingual and multilingual configurations. The URL returned by this function depends on:
@z

@x
- Whether the input begins with a slash
- The `baseURL` in your site configuration
- The language prefix, if any
@y
- Whether the input begins with a slash
- The `baseURL` in your site configuration
- The language prefix, if any
@z

@x
In examples that follow, the project is multilingual with content in both English (`en`) and Spanish (`es`). The returned values are from the English site.
@y
In examples that follow, the project is multilingual with content in both English (`en`) and Spanish (`es`). The returned values are from the English site.
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
{{ relLangURL "" }}                        → /en/
{{ relLangURL "articles" }}                → /en/articles
{{ relLangURL "style.css" }}               → /en/style.css
{{ relLangURL "https://example.org/foo" }} → /en/foo
```
@y
```go-html-template
{{ relLangURL "" }}                        → /en/
{{ relLangURL "articles" }}                → /en/articles
{{ relLangURL "style.css" }}               → /en/style.css
{{ relLangURL "https://example.org/foo" }} → /en/foo
```
@z

@x
With `baseURL = https://example.org/docs/`
@y
With `baseURL = https://example.org/docs/`
@z

@x
```go-html-template
{{ relLangURL "" }}                             → /docs/en/
{{ relLangURL "articles" }}                     → /docs/en/articles
{{ relLangURL "style.css" }}                    → /docs/en/style.css
{{ relLangURL "https://example.org/docs/foo" }} → /docs/en/foo
```
@y
```go-html-template
{{ relLangURL "" }}                             → /docs/en/
{{ relLangURL "articles" }}                     → /docs/en/articles
{{ relLangURL "style.css" }}                    → /docs/en/style.css
{{ relLangURL "https://example.org/docs/foo" }} → /docs/en/foo
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
{{ relLangURL "/" }}          → /en/
{{ relLangURL "/articles" }}  → /en/articles
{{ relLangURL "/style.css" }} → /en/style.css
```
@y
```go-html-template
{{ relLangURL "/" }}          → /en/
{{ relLangURL "/articles" }}  → /en/articles
{{ relLangURL "/style.css" }} → /en/style.css
```
@z

@x
With `baseURL = https://example.org/docs/`
@y
With `baseURL = https://example.org/docs/`
@z

@x
```go-html-template
{{ relLangURL "/" }}          → /en/
{{ relLangURL "/articles" }}  → /en/articles
{{ relLangURL "/style.css" }} → /en/style.css
```
@y
```go-html-template
{{ relLangURL "/" }}          → /en/
{{ relLangURL "/articles" }}  → /en/articles
{{ relLangURL "/style.css" }} → /en/style.css
```
@z
