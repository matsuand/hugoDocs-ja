%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Slug
description: Returns the URL slug of the given page as defined in front matter.
categories: []
keywords: []
action:
  related: []
  returnType: string
  signatures: [PAGE.Slug]
---
@y
---
title: Slug
description: Returns the URL slug of the given page as defined in front matter.
categories: []
keywords: []
action:
  related: []
  returnType: string
  signatures: [PAGE.Slug]
---
@z

@x
{{< code-toggle file=content/recipes/spicy-tuna-hand-rolls.md fm=true >}}
title = 'How to make spicy tuna hand rolls'
slug = 'sushi'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/recipes/spicy-tuna-hand-rolls.md fm=true >}}
title = 'How to make spicy tuna hand rolls'
slug = 'sushi'
{{< /code-toggle >}}
@z

@x
This page will be served from:
@y
This page will be served from:
@z

@x
    https://example.org/recipes/sushi
@y
    https://example.org/recipes/sushi
@z

@x
To get the slug value within a template:
@y
To get the slug value within a template:
@z

@x
```go-html-template
{{ .Slug }} → sushi
```
@y
```go-html-template
{{ .Slug }} → sushi
```
@z
