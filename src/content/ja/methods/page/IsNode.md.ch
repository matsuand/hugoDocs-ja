%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: IsNode
description: Reports whether the given page is a node.
categories: []
keywords: []
action:
  related:
    - methods/page/IsHome
    - methods/page/IsPage
    - methods/page/IsSection
  returnType: bool
  signatures: [PAGE.IsNode]
---
@y
---
title: IsNode
description: Reports whether the given page is a node.
categories: []
keywords: []
action:
  related:
    - methods/page/IsHome
    - methods/page/IsPage
    - methods/page/IsSection
  returnType: bool
  signatures: [PAGE.IsNode]
---
@z

@x
The `IsNode` method on a `Page` object returns `true` if the [page kind] is `home`, `section`, `taxonomy`, or `term`.
@y
The `IsNode` method on a `Page` object returns `true` if the [page kind] is `home`, `section`, `taxonomy`, or `term`.
@z

@x
It returns `false` is the page kind is `page`.
@y
It returns `false` is the page kind is `page`.
@z

@x
```text
content/
├── books/
│   ├── book-1/
│   │   └── index.md    <-- kind = page, node = false
│   ├── book-2.md       <-- kind = page, node = false
│   └── _index.md       <-- kind = section, node = true
├── tags/
│   ├── fiction/
│   │   └── _index.md   <-- kind = term, node = true
│   └── _index.md       <-- kind = taxonomy, node = true
└── _index.md           <-- kind = home, node = true
```
@y
```text
content/
├── books/
│   ├── book-1/
│   │   └── index.md    <-- kind = page, node = false
│   ├── book-2.md       <-- kind = page, node = false
│   └── _index.md       <-- kind = section, node = true
├── tags/
│   ├── fiction/
│   │   └── _index.md   <-- kind = term, node = true
│   └── _index.md       <-- kind = taxonomy, node = true
└── _index.md           <-- kind = home, node = true
```
@z

@x
```go-html-template
{{ .IsNode }}
```
[page kind]: /getting-started/glossary/#page-kind
@y
```go-html-template
{{ .IsNode }}
```
[page kind]: /getting-started/glossary/#page-kind
@z
