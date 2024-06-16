%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: urls.AbsURL 
description: Returns an absolute URL.
categories: []
keywords: []
action:
  aliases: [absURL]
  related:
    - functions/urls/AbsLangURL
    - functions/urls/RelLangURL
    - functions/urls/RelURL
  returnType: string
  signatures: [urls.AbsURL INPUT]
aliases: [/functions/absurl]
---
@y
---
title: urls.AbsURL 
description: Returns an absolute URL.
categories: []
keywords: []
action:
  aliases: [absURL]
  related:
    - functions/urls/AbsLangURL
    - functions/urls/RelLangURL
    - functions/urls/RelURL
  returnType: string
  signatures: [urls.AbsURL INPUT]
aliases: [/functions/absurl]
---
@z

@x
With multilingual configurations, use the [`urls.AbsLangURL`] function instead. The URL returned by this function depends on:
@y
With multilingual configurations, use the [`urls.AbsLangURL`] function instead. The URL returned by this function depends on:
@z

@x
- Whether the input begins with a slash
- The `baseURL` in site configuration
@y
- Whether the input begins with a slash
- The `baseURL` in site configuration
@z

@x
### Input does not begin with a slash
@y
### Input does not begin with a slash
@z

@x
If the input does not begin with a slash, the path in the resulting URL will be relative to the `baseURL` in your site configuration.
@y
If the input does not begin with a slash, the path in the resulting URL will be relative to the `baseURL` in your site configuration.
@z

@x
With `baseURL = https://example.org/`
@y
With `baseURL = https://example.org/`
@z

@x
```go-html-template
{{ absURL "" }}          → https://example.org/
{{ absURL "articles" }}  → https://example.org/articles
{{ absURL "style.css" }} → https://example.org/style.css
```
@y
```go-html-template
{{ absURL "" }}          → https://example.org/
{{ absURL "articles" }}  → https://example.org/articles
{{ absURL "style.css" }} → https://example.org/style.css
```
@z

@x
With `baseURL = https://example.org/docs/`
@y
With `baseURL = https://example.org/docs/`
@z

@x
```go-html-template
{{ absURL "" }}          → https://example.org/docs/
{{ absURL "articles" }}  → https://example.org/docs/articles
{{ absURL "style.css" }} → https://example.org/docs/style.css
```
@y
```go-html-template
{{ absURL "" }}          → https://example.org/docs/
{{ absURL "articles" }}  → https://example.org/docs/articles
{{ absURL "style.css" }} → https://example.org/docs/style.css
```
@z

@x
#### Input begins with a slash
@y
#### Input begins with a slash
@z

@x
If the input begins with a slash, the path in the resulting URL will be relative to the protocol+host of the `baseURL` in your site configuration.
@y
If the input begins with a slash, the path in the resulting URL will be relative to the protocol+host of the `baseURL` in your site configuration.
@z

@x
With `baseURL = https://example.org/`
@y
With `baseURL = https://example.org/`
@z

@x
```go-html-template
{{ absURL "/" }}          → https://example.org/
{{ absURL "/articles" }}  → https://example.org/articles
{{ absURL "/style.css" }} → https://example.org/style.css
```
@y
```go-html-template
{{ absURL "/" }}          → https://example.org/
{{ absURL "/articles" }}  → https://example.org/articles
{{ absURL "/style.css" }} → https://example.org/style.css
```
@z

@x
With `baseURL = https://example.org/docs/`
@y
With `baseURL = https://example.org/docs/`
@z

@x
```go-html-template
{{ absURL "/" }}          → https://example.org/
{{ absURL "/articles" }}  → https://example.org/articles
{{ absURL "/style.css" }} → https://example.org/style.css
```
@y
```go-html-template
{{ absURL "/" }}          → https://example.org/
{{ absURL "/articles" }}  → https://example.org/articles
{{ absURL "/style.css" }} → https://example.org/style.css
```
@z

@x
[`urls.AbsLangURL`]: /functions/urls/abslangurl/
@y
[`urls.AbsLangURL`]: /functions/urls/abslangurl/
@z
