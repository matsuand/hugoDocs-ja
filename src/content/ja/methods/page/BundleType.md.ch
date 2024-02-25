%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: BundleType
description: Returns the bundle type of the given page, or an empty string if the page is not a page bundle.
categories: []
keywords: []
action:
  related: []
  returnType: string
  signatures: [PAGE.BundleType]
---
@y
---
title: BundleType
description: Returns the bundle type of the given page, or an empty string if the page is not a page bundle.
categories: []
keywords: []
action:
  related: []
  returnType: string
  signatures: [PAGE.BundleType]
---
@z

@x
A page bundle is a directory that encapsulates both content and associated [resources]. There are two types of page bundles: [leaf bundles] and [branch bundles]. See&nbsp;[details](/content-management/page-bundles/).
@y
A page bundle is a directory that encapsulates both content and associated [resources]. There are two types of page bundles: [leaf bundles] and [branch bundles]. See&nbsp;[details](/content-management/page-bundles/).
@z

@x
The `BundleType` method on a `Page` object returns `branch` for branch bundles, `leaf` for leaf bundles, and an empty string if the page is not a page bundle.
@y
The `BundleType` method on a `Page` object returns `branch` for branch bundles, `leaf` for leaf bundles, and an empty string if the page is not a page bundle.
@z

@x
```text
content/
├── films/
│   ├── film-1/
│   │   ├── a.jpg
│   │   └── index.md  <-- leaf bundle
│   ├── _index.md     <-- branch bundle
│   ├── b.jpg
│   ├── film-2.md
│   └── film-3.md
└── _index.md         <-- branch bundle
```
@y
```text
content/
├── films/
│   ├── film-1/
│   │   ├── a.jpg
│   │   └── index.md  <-- leaf bundle
│   ├── _index.md     <-- branch bundle
│   ├── b.jpg
│   ├── film-2.md
│   └── film-3.md
└── _index.md         <-- branch bundle
```
@z

@x
To get the value within a template:
@y
To get the value within a template:
@z

@x
```go-html-template
{{ .BundleType }}
```
@y
```go-html-template
{{ .BundleType }}
```
@z

@x
[resources]: /getting-started/glossary/#resource
[leaf bundles]: /getting-started/glossary/#leaf-bundle
[branch bundles]: /getting-started/glossary/#branch-bundle
@y
[resources]: /getting-started/glossary/#resource
[leaf bundles]: /getting-started/glossary/#leaf-bundle
[branch bundles]: /getting-started/glossary/#branch-bundle
@z
