%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: urlquery
description: Returns the escaped value of the textual representation of its arguments in a form suitable for embedding in a URL query.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/collections/Querify
  returnType: string
  signatures: ['urlquery VALUE [VALUE...]']
aliases: [/functions/urlquery]
---
@y
---
title: urlquery
description: Returns the escaped value of the textual representation of its arguments in a form suitable for embedding in a URL query.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/collections/Querify
  returnType: string
  signatures: ['urlquery VALUE [VALUE...]']
aliases: [/functions/urlquery]
---
@z

@x
This template code:
@y
This template code:
@z

@x
```go-html-template
{{ $u := urlquery "https://" "example.com" | safeURL }}
<a href="https://example.org?url={{ $u }}">Link</a>
```
@y
```go-html-template
{{ $u := urlquery "https://" "example.com" | safeURL }}
<a href="https://example.org?url={{ $u }}">Link</a>
```
@z

@x
Is rendered to:
@y
Is rendered to:
@z

@x
```html
<a href="https://example.org?url=https%3A%2F%2Fexample.com">Link</a>
```
@y
```html
<a href="https://example.org?url=https%3A%2F%2Fexample.com">Link</a>
```
@z

@x
{{% include "functions/go-template/_common/text-template.md" %}}
@y
{{% include "functions/go-template/_common/text-template.md" %}}
@z
