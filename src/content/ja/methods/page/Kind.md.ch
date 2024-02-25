%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Kind
description: Returns the kind of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Type
  returnType: string
  signatures: [PAGE.Kind]
---
@y
---
title: Kind
description: Returns the kind of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Type
  returnType: string
  signatures: [PAGE.Kind]
---
@z

@x
The [page kind] is one of `home`, `page`, `section`, `taxonomy`, or `term`.
@y
The [page kind] is one of `home`, `page`, `section`, `taxonomy`, or `term`.
@z

@x
```text
content/
├── books/
│   ├── book-1/
│   │   └── index.md    <-- kind = page
│   ├── book-2.md       <-- kind = page
│   └── _index.md       <-- kind = section
├── tags/
│   ├── fiction/
│   │   └── _index.md   <-- kind = term
│   └── _index.md       <-- kind = taxonomy
└── _index.md           <-- kind = home
```
@y
```text
content/
├── books/
│   ├── book-1/
│   │   └── index.md    <-- kind = page
│   ├── book-2.md       <-- kind = page
│   └── _index.md       <-- kind = section
├── tags/
│   ├── fiction/
│   │   └── _index.md   <-- kind = term
│   └── _index.md       <-- kind = taxonomy
└── _index.md           <-- kind = home
```
@z

@x
To get the value within a template:
@y
To get the value within a template:
@z

@x
```go-html-template
{{ .Kind }}
```
@y
```go-html-template
{{ .Kind }}
```
@z

@x
[page kind]: /getting-started/glossary/#page-kind
@y
[page kind]: /getting-started/glossary/#page-kind
@z
