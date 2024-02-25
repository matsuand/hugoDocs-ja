%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: urls.AbsLangURL
description: Returns an absolute URL with a language prefix, if any.
categories: []
keywords: []
action:
  aliases: [absLangURL]
  related:
    - functions/urls/AbsURL 
    - functions/urls/RelLangURL
    - functions/urls/RelURL
  returnType: string
  signatures: [urls.AbsLangURL INPUT]
aliases: [/functions/abslangurl]
---
@y
---
title: urls.AbsLangURL
description: Returns an absolute URL with a language prefix, if any.
categories: []
keywords: []
action:
  aliases: [absLangURL]
  related:
    - functions/urls/AbsURL 
    - functions/urls/RelLangURL
    - functions/urls/RelURL
  returnType: string
  signatures: [urls.AbsLangURL INPUT]
aliases: [/functions/abslangurl]
---
@z

@x
Use this function with both monolingual and multilingual configurations. The URL returned by this function depends on:
@y
Use this function with both monolingual and multilingual configurations. The URL returned by this function depends on:
@z

@x
- Whether the input begins with a slash
- The `baseURL` in site configuration
- The language prefix, if any
@y
- Whether the input begins with a slash
- The `baseURL` in site configuration
- The language prefix, if any
@z

@x
In examples that follow, the project is multilingual with content in both Español (`es`) and English (`en`). The default language is Español. The returned values are from the English site.
@y
In examples that follow, the project is multilingual with content in both Español (`es`) and English (`en`). The default language is Español. The returned values are from the English site.
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
{{ absLangURL "" }}           →   https://example.org/en/
{{ absLangURL "articles" }}   →   https://example.org/en/articles
{{ absLangURL "style.css" }}  →   https://example.org/en/style.css
```
@y
```go-html-template
{{ absLangURL "" }}           →   https://example.org/en/
{{ absLangURL "articles" }}   →   https://example.org/en/articles
{{ absLangURL "style.css" }}  →   https://example.org/en/style.css
```
@z

@x
With `baseURL = https://example.org/docs/`
@y
With `baseURL = https://example.org/docs/`
@z

@x
```go-html-template
{{ absLangURL "" }}           →   https://example.org/docs/en/
{{ absLangURL "articles" }}   →   https://example.org/docs/en/articles
{{ absLangURL "style.css" }}  →   https://example.org/docs/en/style.css
```
@y
```go-html-template
{{ absLangURL "" }}           →   https://example.org/docs/en/
{{ absLangURL "articles" }}   →   https://example.org/docs/en/articles
{{ absLangURL "style.css" }}  →   https://example.org/docs/en/style.css
```
@z

@x
### Input begins with a slash
@y
### Input begins with a slash
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
{{ absLangURL "/" }}          →   https://example.org/en/
{{ absLangURL "/articles" }}  →   https://example.org/en/articles
{{ absLangURL "/style.css" }} →   https://example.org/en/style.css
```
@y
```go-html-template
{{ absLangURL "/" }}          →   https://example.org/en/
{{ absLangURL "/articles" }}  →   https://example.org/en/articles
{{ absLangURL "/style.css" }} →   https://example.org/en/style.css
```
@z

@x
With `baseURL = https://example.org/docs/`
@y
With `baseURL = https://example.org/docs/`
@z

@x
```go-html-template
{{ absLangURL "/" }}          →   https://example.org/en/
{{ absLangURL "/articles" }}  →   https://example.org/en/articles
{{ absLangURL "/style.css" }} →   https://example.org/en/style.css
```
@y
```go-html-template
{{ absLangURL "/" }}          →   https://example.org/en/
{{ absLangURL "/articles" }}  →   https://example.org/en/articles
{{ absLangURL "/style.css" }} →   https://example.org/en/style.css
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
