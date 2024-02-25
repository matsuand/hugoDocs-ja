%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: IsSection
description: Reports whether the given page is a section page.
categories: []
keywords: []
action:
  related:
    - methods/page/IsHome
    - methods/page/IsNode
    - methods/page/IsPage
  returnType: bool
  signatures: [PAGE.IsSection]
---
@y
---
title: IsSection
description: Reports whether the given page is a section page.
categories: []
keywords: []
action:
  related:
    - methods/page/IsHome
    - methods/page/IsNode
    - methods/page/IsPage
  returnType: bool
  signatures: [PAGE.IsSection]
---
@z

@x
The `IsSection` method on a `Page` object returns `true` if the [page kind] is `section`.
@y
The `IsSection` method on a `Page` object returns `true` if the [page kind] is `section`.
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
{{ .IsSection }}
```
@y
```go-html-template
{{ .IsSection }}
```
@z

@x
[page kind]: /getting-started/glossary/#page-kind
@y
[page kind]: /getting-started/glossary/#page-kind
@z
