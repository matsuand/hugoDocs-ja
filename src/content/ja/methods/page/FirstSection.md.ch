%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: FirstSection
description: Returns the Page object of the top level section of which the given page is a descendant.
categories: []
keywords: []
action:
  related:
    - methods/page/Ancestors
    - methods/page/CurrentSection
    - methods/page/InSection
    - methods/page/IsAncestor
    - methods/page/IsDescendant
    - methods/page/Parent
    - methods/page/Sections
  returnType: page.Page
  signatures: [PAGE.FirstSection]
---
@y
---
title: FirstSection
description: Returns the Page object of the top level section of which the given page is a descendant.
categories: []
keywords: []
action:
  related:
    - methods/page/Ancestors
    - methods/page/CurrentSection
    - methods/page/InSection
    - methods/page/IsAncestor
    - methods/page/IsDescendant
    - methods/page/Parent
    - methods/page/Sections
  returnType: page.Page
  signatures: [PAGE.FirstSection]
---
@z

@x
{{% include "methods/page/_common/definition-of-section.md" %}}
@y
{{% include "methods/page/_common/definition-of-section.md" %}}
@z

@x
{{% note %}}
When called on the home page, the `FirstSection` method returns the `Page` object of the home page itself.
{{% /note %}}
@y
{{% note %}}
When called on the home page, the `FirstSection` method returns the `Page` object of the home page itself.
{{% /note %}}
@z

@x
Consider this content structure:
@y
Consider this content structure:
@z

@x
```text
content/
├── auctions/
│   ├── 2023-11/
│   │   ├── _index.md     <-- first section: auctions
│   │   ├── auction-1.md
│   │   └── auction-2.md  <-- first section: auctions
│   ├── 2023-12/
│   │   ├── _index.md     
│   │   ├── auction-3.md
│   │   └── auction-4.md
│   ├── _index.md         <-- first section: auctions
│   ├── bidding.md
│   └── payment.md        <-- first section: auctions
├── books/
│   ├── _index.md         <-- first section: books
│   ├── book-1.md
│   └── book-2.md         <-- first section: books
├── films/
│   ├── _index.md         <-- first section: films
│   ├── film-1.md
│   └── film-2.md         <-- first section: films
└── _index.md             <-- first section: home
```
@y
```text
content/
├── auctions/
│   ├── 2023-11/
│   │   ├── _index.md     <-- first section: auctions
│   │   ├── auction-1.md
│   │   └── auction-2.md  <-- first section: auctions
│   ├── 2023-12/
│   │   ├── _index.md     
│   │   ├── auction-3.md
│   │   └── auction-4.md
│   ├── _index.md         <-- first section: auctions
│   ├── bidding.md
│   └── payment.md        <-- first section: auctions
├── books/
│   ├── _index.md         <-- first section: books
│   ├── book-1.md
│   └── book-2.md         <-- first section: books
├── films/
│   ├── _index.md         <-- first section: films
│   ├── film-1.md
│   └── film-2.md         <-- first section: films
└── _index.md             <-- first section: home
```
@z

@x
To link to the top level section of which the current page is a descendant:
@y
To link to the top level section of which the current page is a descendant:
@z

@x
```go-html-template
<a href="{{ .FirstSection.RelPermalink }}">{{ .FirstSection.LinkTitle }}</a>
```
@y
```go-html-template
<a href="{{ .FirstSection.RelPermalink }}">{{ .FirstSection.LinkTitle }}</a>
```
@z
