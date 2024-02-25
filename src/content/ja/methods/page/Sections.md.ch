%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Sections
description: Returns a collection of section pages, one for each immediate descendant section of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Ancestors
    - methods/page/CurrentSection
    - methods/page/FirstSection
    - methods/page/InSection
    - methods/page/IsAncestor
    - methods/page/IsDescendant
    - methods/page/Parent
  returnType: page.Pages
  signatures: [PAGE.Sections]
---
@y
---
title: Sections
description: Returns a collection of section pages, one for each immediate descendant section of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Ancestors
    - methods/page/CurrentSection
    - methods/page/FirstSection
    - methods/page/InSection
    - methods/page/IsAncestor
    - methods/page/IsDescendant
    - methods/page/Parent
  returnType: page.Pages
  signatures: [PAGE.Sections]
---
@z

@x
{{% include "methods/page/_common/definition-of-section.md" %}}
@y
{{% include "methods/page/_common/definition-of-section.md" %}}
@z

@x
With this content structure:
@y
With this content structure:
@z

@x
```text
content/
├── auctions/
│   ├── 2023-11/
│   │   ├── _index.md     <-- front matter: weight = 202311
│   │   ├── auction-1.md
│   │   └── auction-2.md
│   ├── 2023-12/
│   │   ├── _index.md     <-- front matter: weight = 202312
│   │   ├── auction-3.md
│   │   └── auction-4.md
│   ├── _index.md         <-- front matter: weight = 30
│   ├── bidding.md
│   └── payment.md
├── books/
│   ├── _index.md         <-- front matter: weight = 10
│   ├── book-1.md
│   └── book-2.md
├── films/
│   ├── _index.md         <-- front matter: weight = 20
│   ├── film-1.md
│   └── film-2.md
└── _index.md
```
@y
```text
content/
├── auctions/
│   ├── 2023-11/
│   │   ├── _index.md     <-- front matter: weight = 202311
│   │   ├── auction-1.md
│   │   └── auction-2.md
│   ├── 2023-12/
│   │   ├── _index.md     <-- front matter: weight = 202312
│   │   ├── auction-3.md
│   │   └── auction-4.md
│   ├── _index.md         <-- front matter: weight = 30
│   ├── bidding.md
│   └── payment.md
├── books/
│   ├── _index.md         <-- front matter: weight = 10
│   ├── book-1.md
│   └── book-2.md
├── films/
│   ├── _index.md         <-- front matter: weight = 20
│   ├── film-1.md
│   └── film-2.md
└── _index.md
```
@z

@x
And this template:
@y
And this template:
@z

@x
```go-html-template
{{ range .Sections.ByWeight }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Sections.ByWeight }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z

@x
On the home page, Hugo renders:
@y
On the home page, Hugo renders:
@z

@x
```html
<h2><a href="/films/">Films</a></h2>
<h2><a href="/books/">Books</a></h2>
<h2><a href="/auctions/">Auctions</a></h2>
```
@y
```html
<h2><a href="/films/">Films</a></h2>
<h2><a href="/books/">Books</a></h2>
<h2><a href="/auctions/">Auctions</a></h2>
```
@z

@x
On the auctions page, Hugo renders:
@y
On the auctions page, Hugo renders:
@z

@x
```html
<h2><a href="/auctions/2023-11/">Auctions in November 2023</a></h2>
<h2><a href="/auctions/2023-12/">Auctions in December 2023</a></h2>
```
@y
```html
<h2><a href="/auctions/2023-11/">Auctions in November 2023</a></h2>
<h2><a href="/auctions/2023-12/">Auctions in December 2023</a></h2>
```
@z
