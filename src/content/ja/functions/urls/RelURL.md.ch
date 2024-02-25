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
With multilingual configurations, use the [`relLangURL`] function instead. The URL returned by this function depends on:
@y
With multilingual configurations, use the [`relLangURL`] function instead. The URL returned by this function depends on:
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
If the input does not begin with a slash, the resulting URL will be correct regardless of the `baseURL`.
@y
If the input does not begin with a slash, the resulting URL will be correct regardless of the `baseURL`.
@z

@x
With `baseURL = https://example.org/`
@y
With `baseURL = https://example.org/`
@z

@x
```go-html-template
{{ relURL "" }}           →   /
{{ relURL "articles" }}   →   /articles
{{ relURL "style.css" }}  →   /style.css
```
@y
```go-html-template
{{ relURL "" }}           →   /
{{ relURL "articles" }}   →   /articles
{{ relURL "style.css" }}  →   /style.css
```
@z

@x
With `baseURL = https://example.org/docs/`
@y
With `baseURL = https://example.org/docs/`
@z

@x
```go-html-template
{{ relURL "" }}           →   /docs/
{{ relURL "articles" }}   →   /docs/articles
{{ relURL "style.css" }}  →   /docs/style.css
```
@y
```go-html-template
{{ relURL "" }}           →   /docs/
{{ relURL "articles" }}   →   /docs/articles
{{ relURL "style.css" }}  →   /docs/style.css
```
@z

@x
#### Input begins with a slash
@y
#### Input begins with a slash
@z

@x
If the input begins with a slash, the resulting URL will be incorrect when the `baseURL` includes a subdirectory. With a leading slash, the function returns a URL relative to the protocol+host section of the `baseURL`.
@y
If the input begins with a slash, the resulting URL will be incorrect when the `baseURL` includes a subdirectory. With a leading slash, the function returns a URL relative to the protocol+host section of the `baseURL`.
@z

@x
With `baseURL = https://example.org/`
@y
With `baseURL = https://example.org/`
@z

@x
```go-html-template
{{ relURL "/" }}          →   /
{{ relURL "/articles" }}  →   /articles
{{ relURL "style.css" }}  →   /style.css
```
@y
```go-html-template
{{ relURL "/" }}          →   /
{{ relURL "/articles" }}  →   /articles
{{ relURL "style.css" }}  →   /style.css
```
@z

@x
With `baseURL = https://example.org/docs/`
@y
With `baseURL = https://example.org/docs/`
@z

@x
```go-html-template
{{ relURL "/" }}          →   /
{{ relURL "/articles" }}  →   /articles
{{ relURL "/style.css" }} →   /style.css
```
@y
```go-html-template
{{ relURL "/" }}          →   /
{{ relURL "/articles" }}  →   /articles
{{ relURL "/style.css" }} →   /style.css
```
@z

@x
{{% note %}}
The last three examples are not desirable in most situations. As a best practice, never include a leading slash when using this function.
{{% /note %}}
@y
{{% note %}}
The last three examples are not desirable in most situations. As a best practice, never include a leading slash when using this function.
{{% /note %}}
@z

@x
[`relLangURL`]: /functions/urls/rellangurl/
@y
[`relLangURL`]: /functions/urls/rellangurl/
@z
