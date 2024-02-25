%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: IsPage
description: Reports whether the given page is a regular page.
categories: []
keywords: []
action:
  related:
    - methods/page/IsHome
    - methods/page/IsNode
    - methods/page/IsSection
  returnType: bool
  signatures: [PAGE.IsPage]
---
@y
---
title: IsPage
description: Reports whether the given page is a regular page.
categories: []
keywords: []
action:
  related:
    - methods/page/IsHome
    - methods/page/IsNode
    - methods/page/IsSection
  returnType: bool
  signatures: [PAGE.IsPage]
---
@z

@x
The `IsPage` method on a `Page` object returns `true` if the [page kind] is `page`.
@y
The `IsPage` method on a `Page` object returns `true` if the [page kind] is `page`.
@z

@x
```text
content/
├── books/
│   ├── book-1/
│   │   └── index.md  <-- kind = page
│   ├── book-2.md     <-- kind = page
│   └── _index.md     <-- kind = section
└── _index.md         <-- kind = home
```
@y
```text
content/
├── books/
│   ├── book-1/
│   │   └── index.md  <-- kind = page
│   ├── book-2.md     <-- kind = page
│   └── _index.md     <-- kind = section
└── _index.md         <-- kind = home
```
@z

@x
```go-html-template
{{ .IsPage }}
```
@y
```go-html-template
{{ .IsPage }}
```
@z

@x
[page kind]: /getting-started/glossary/#page-kind
@y
[page kind]: /getting-started/glossary/#page-kind
@z
