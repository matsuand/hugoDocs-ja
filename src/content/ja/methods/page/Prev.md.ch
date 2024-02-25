%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Prev
description: Returns the previous page in a global page collection, relative to the given page. 
categories: []
keywords: []
action:
  related:
    - methods/page/Next
    - methods/page/PrevInSection
    - methods/page/NextInSection
    - methods/pages/Prev
    - methods/pages/Next
  returnType: page.Page
  signatures: [PAGE.Prev]
toc: true
---
@y
---
title: Prev
description: Returns the previous page in a global page collection, relative to the given page. 
categories: []
keywords: []
action:
  related:
    - methods/page/Next
    - methods/page/PrevInSection
    - methods/page/NextInSection
    - methods/pages/Prev
    - methods/pages/Next
  returnType: page.Page
  signatures: [PAGE.Prev]
toc: true
---
@z

@x
The behavior of the `Prev` and `Next` methods on a `Page` object is probably the reverse of what you expect.
@y
The behavior of the `Prev` and `Next` methods on a `Page` object is probably the reverse of what you expect.
@z

@x
With this content structure:
@y
With this content structure:
@z

@x
```text
content/
├── pages/
│   ├── _index.md
│   ├── page-1.md   <-- front matter: weight = 10
│   ├── page-2.md   <-- front matter: weight = 20
│   └── page-3.md   <-- front matter: weight = 30
└── _index.md
```
@y
```text
content/
├── pages/
│   ├── _index.md
│   ├── page-1.md   <-- front matter: weight = 10
│   ├── page-2.md   <-- front matter: weight = 20
│   └── page-3.md   <-- front matter: weight = 30
└── _index.md
```
@z

@x
When you visit page-2:
@y
When you visit page-2:
@z

@x
- The `Prev` method points to page-3
- The `Next` method points to page-1
@y
- The `Prev` method points to page-3
- The `Next` method points to page-1
@z

@x
{{% note %}}
Use the opposite label in your navigation links as shown in the example below.
{{% /note %}}
@y
{{% note %}}
Use the opposite label in your navigation links as shown in the example below.
{{% /note %}}
@z

@x
```go-html-template
{{ with .Next }}
  <a href="{{ .RelPermalink }}">Prev</a>
{{ end }}
@y
```go-html-template
{{ with .Next }}
  <a href="{{ .RelPermalink }}">Prev</a>
{{ end }}
@z

@x
{{ with .Prev }}
  <a href="{{ .RelPermalink }}">Next</a>
{{ end }}
```
@y
{{ with .Prev }}
  <a href="{{ .RelPermalink }}">Next</a>
{{ end }}
```
@z

@x
## Compare to Pages methods
@y
## Compare to Pages methods
@z

@x
{{% include "methods/_common/next-prev-on-page-vs-next-prev-on-pages.md" %}}
@y
{{% include "methods/_common/next-prev-on-page-vs-next-prev-on-pages.md" %}}
@z
