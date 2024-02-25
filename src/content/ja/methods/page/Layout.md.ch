%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Layout
description: Returns the layout for the given page as defined in front matter.
categories: []
keywords: []
action:
  related:
    - methods/page/Type
  returnType: string
  signatures: [PAGE.Layout]
---
@y
---
title: Layout
description: Returns the layout for the given page as defined in front matter.
categories: []
keywords: []
action:
  related:
    - methods/page/Type
  returnType: string
  signatures: [PAGE.Layout]
---
@z

@x
Specify the `layout` field in front matter to target a particular template. See&nbsp;[details].
@y
Specify the `layout` field in front matter to target a particular template. See&nbsp;[details].
@z

@x
[details]: /templates/lookup-order/#target-a-template
@y
[details]: /templates/lookup-order/#target-a-template
@z

@x
{{< code-toggle file=content/contact.md >}}
title = 'Contact'
layout = 'contact'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/contact.md >}}
title = 'Contact'
layout = 'contact'
{{< /code-toggle >}}
@z

@x
Hugo will render the page using contact.html.
@y
Hugo will render the page using contact.html.
@z

@x
```text
layouts/
└── _default/
    ├── baseof.html
    ├── contact.html
    ├── home.html
    ├── list.html
    └── single.html
```
@y
```text
layouts/
└── _default/
    ├── baseof.html
    ├── contact.html
    ├── home.html
    ├── list.html
    └── single.html
```
@z

@x
Although rarely used within a template, you can access the value with:
@y
Although rarely used within a template, you can access the value with:
@z

@x
```go-html-template
{{ .Layout }}
```
@y
```go-html-template
{{ .Layout }}
```
@z

@x
The `Layout` method returns an empty string if the `layout` field in front matter is not defined.
@y
The `Layout` method returns an empty string if the `layout` field in front matter is not defined.
@z
