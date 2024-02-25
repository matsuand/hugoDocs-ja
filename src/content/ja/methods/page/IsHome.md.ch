%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: IsHome
description: Reports whether the given page is the home page.
categories: []
keywords: []
action:
  related:
    - methods/page/IsNode
    - methods/page/IsPage
    - methods/page/IsSection
  returnType: bool
  signatures: [PAGE.IsHome]
---
@y
---
title: IsHome
description: Reports whether the given page is the home page.
categories: []
keywords: []
action:
  related:
    - methods/page/IsNode
    - methods/page/IsPage
    - methods/page/IsSection
  returnType: bool
  signatures: [PAGE.IsHome]
---
@z

@x
The `IsHome` method on a `Page` object returns `true` if the [page kind] is `home`.
@y
The `IsHome` method on a `Page` object returns `true` if the [page kind] is `home`.
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
{{ .IsHome }}
```
@y
```go-html-template
{{ .IsHome }}
```
@z

@x
[page kind]: /getting-started/glossary/#page-kind
@y
[page kind]: /getting-started/glossary/#page-kind
@z
