%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: CurrentSection
description: Returns the Page object of the section in which the given page resides.
categories: []
keywords: []
action:
  related:
    - methods/page/Ancestors
    - methods/page/FirstSection
    - methods/page/InSection
    - methods/page/IsAncestor
    - methods/page/IsDescendant
    - methods/page/Parent
    - methods/page/Sections
  returnType: page.Page
  signatures: [PAGE.CurrentSection]
---
@y
---
title: CurrentSection
description: Returns the Page object of the section in which the given page resides.
categories: []
keywords: []
action:
  related:
    - methods/page/Ancestors
    - methods/page/FirstSection
    - methods/page/InSection
    - methods/page/IsAncestor
    - methods/page/IsDescendant
    - methods/page/Parent
    - methods/page/Sections
  returnType: page.Page
  signatures: [PAGE.CurrentSection]
---
@z

@x
{{% include "methods/page/_common/definition-of-section.md" %}}
@y
{{% include "methods/page/_common/definition-of-section.md" %}}
@z

@x
{{% note %}}
The current section of a [section] page, [taxonomy] page, [term] page, or the home page, is itself.
@y
{{% note %}}
The current section of a [section] page, [taxonomy] page, [term] page, or the home page, is itself.
@z

@x
[section]: /getting-started/glossary/#section
[taxonomy]: /getting-started/glossary/#taxonomy
[term]: /getting-started/glossary/#term
{{% /note %}}
@y
[section]: /getting-started/glossary/#section
[taxonomy]: /getting-started/glossary/#taxonomy
[term]: /getting-started/glossary/#term
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
│   │   ├── _index.md     <-- current section: 2023-11
│   │   ├── auction-1.md
│   │   └── auction-2.md  <-- current section: 2023-11
│   ├── 2023-12/
│   │   ├── _index.md     
│   │   ├── auction-3.md
│   │   └── auction-4.md
│   ├── _index.md         <-- current section: auctions
│   ├── bidding.md
│   └── payment.md        <-- current section: auctions
├── books/
│   ├── _index.md         <-- current section: books
│   ├── book-1.md
│   └── book-2.md         <-- current section: books
├── films/
│   ├── _index.md         <-- current section: films 
│   ├── film-1.md
│   └── film-2.md         <-- current section: films
└── _index.md             <-- current section: home
```
@y
```text
content/
├── auctions/
│   ├── 2023-11/
│   │   ├── _index.md     <-- current section: 2023-11
│   │   ├── auction-1.md
│   │   └── auction-2.md  <-- current section: 2023-11
│   ├── 2023-12/
│   │   ├── _index.md     
│   │   ├── auction-3.md
│   │   └── auction-4.md
│   ├── _index.md         <-- current section: auctions
│   ├── bidding.md
│   └── payment.md        <-- current section: auctions
├── books/
│   ├── _index.md         <-- current section: books
│   ├── book-1.md
│   └── book-2.md         <-- current section: books
├── films/
│   ├── _index.md         <-- current section: films 
│   ├── film-1.md
│   └── film-2.md         <-- current section: films
└── _index.md             <-- current section: home
```
@z

@x
To create a link to the current section page:
@y
To create a link to the current section page:
@z

@x
```go-html-template
<a href="{{ .CurrentSection.RelPermalink }}">{{ .CurrentSection.LinkTitle }}</a>
```
@y
```go-html-template
<a href="{{ .CurrentSection.RelPermalink }}">{{ .CurrentSection.LinkTitle }}</a>
```
@z
