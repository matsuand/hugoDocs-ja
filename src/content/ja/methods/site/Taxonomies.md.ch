%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Taxonomies
description: Returns a data structure containing the site's taxonomy objects, the terms within each taxonomy object, and the pages to which the terms are assigned.
categories: []
keywords: []
action:
  related: []
  returnType: page.TaxonomyList
  signatures: [SITE.Taxonomies]
---
@y
---
title: Taxonomies
description: Returns a data structure containing the site's taxonomy objects, the terms within each taxonomy object, and the pages to which the terms are assigned.
categories: []
keywords: []
action:
  related: []
  returnType: page.TaxonomyList
  signatures: [SITE.Taxonomies]
---
@z

@x
Conceptually, the `Taxonomies` method on a `Site` object returns a data structure such&nbsp;as:
@y
Conceptually, the `Taxonomies` method on a `Site` object returns a data structure such&nbsp;as:
@z

@x
{{< code-toggle >}}
taxonomy a:
  - term 1:
    - page 1
    - page 2
  - term 2:
    - page 1
taxonomy b:
  - term 1:
    - page 2
  - term 2:
    - page 1
    - page 2
{{< /code-toggle >}}
@y
{{< code-toggle >}}
taxonomy a:
  - term 1:
    - page 1
    - page 2
  - term 2:
    - page 1
taxonomy b:
  - term 1:
    - page 2
  - term 2:
    - page 1
    - page 2
{{< /code-toggle >}}
@z

@x
For example, on a book review site you might create two taxonomies; one for genres and another for authors.
@y
For example, on a book review site you might create two taxonomies; one for genres and another for authors.
@z

@x
With this site configuration:
@y
With this site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[taxonomies]
genre = 'genres'
author = 'authors'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[taxonomies]
genre = 'genres'
author = 'authors'
{{< /code-toggle >}}
@z

@x
And this content structure:
@y
And this content structure:
@z

@x
```text
content/
├── books/
│   ├── and-then-there-were-none.md --> genres: suspense
│   ├── death-on-the-nile.md        --> genres: suspense
│   └── jamaica-inn.md              --> genres: suspense, romance
│   └── pride-and-prejudice.md      --> genres: romance
└── _index.md
```
@y
```text
content/
├── books/
│   ├── and-then-there-were-none.md --> genres: suspense
│   ├── death-on-the-nile.md        --> genres: suspense
│   └── jamaica-inn.md              --> genres: suspense, romance
│   └── pride-and-prejudice.md      --> genres: romance
└── _index.md
```
@z

@x
Conceptually, the taxonomies data structure looks like:
@y
Conceptually, the taxonomies data structure looks like:
@z

@x
{{< code-toggle >}}
genres:
  - suspense:
    - And Then There Were None
    - Death on the Nile
    - Jamaica Inn
  - romance:
    - Jamaica Inn
    - Pride and Prejudice
authors:
  - achristie:
    - And Then There Were None
    - Death on the Nile
  - ddmaurier:
    - Jamaica Inn
  - jausten:
    - Pride and Prejudice
{{< /code-toggle >}}
@y
{{< code-toggle >}}
genres:
  - suspense:
    - And Then There Were None
    - Death on the Nile
    - Jamaica Inn
  - romance:
    - Jamaica Inn
    - Pride and Prejudice
authors:
  - achristie:
    - And Then There Were None
    - Death on the Nile
  - ddmaurier:
    - Jamaica Inn
  - jausten:
    - Pride and Prejudice
{{< /code-toggle >}}
@z

@x
To list the "suspense" books:
@y
To list the "suspense" books:
@z

@x
```go-html-template
<ul>
  {{ range .Site.Taxonomies.genres.suspense }}
    <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Site.Taxonomies.genres.suspense }}
    <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
  {{ end }}
</ul>
```
@z

@x
Hugo renders this to:
@y
Hugo renders this to:
@z

@x
```html
<ul>
  <li><a href="/books/and-then-there-were-none/">And Then There Were None</a></li>
  <li><a href="/books/death-on-the-nile/">Death on the Nile</a></li>
  <li><a href="/books/jamaica-inn/">Jamaica Inn</a></li>
</ul>
```
@y
```html
<ul>
  <li><a href="/books/and-then-there-were-none/">And Then There Were None</a></li>
  <li><a href="/books/death-on-the-nile/">Death on the Nile</a></li>
  <li><a href="/books/jamaica-inn/">Jamaica Inn</a></li>
</ul>
```
@z

@x
{{% note %}}
Hugo's taxonomy system is powerful, allowing you to classify content and create relationships between pages.
@y
{{% note %}}
Hugo's taxonomy system is powerful, allowing you to classify content and create relationships between pages.
@z

@x
Please see the [taxonomies] section for a complete explanation and examples.
@y
Please see the [taxonomies] section for a complete explanation and examples.
@z

@x
[taxonomies]: /content-management/taxonomies/
{{% /note %}}
@y
[taxonomies]: /content-management/taxonomies/
{{% /note %}}
@z
