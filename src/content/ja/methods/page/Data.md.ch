%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Data
description: Returns a unique data object for each page kind.
categories: []
keywords: []
action:
  related: []
  returnType: page.Data
  signatures: [PAGE.Data]
toc: true
---
@y
---
title: Data
description: Returns a unique data object for each page kind.
categories: []
keywords: []
action:
  related: []
  returnType: page.Data
  signatures: [PAGE.Data]
toc: true
---
@z

@x
The `Data` method on a `Page` object returns a unique data object for each [page kind].
@y
The `Data` method on a `Page` object returns a unique data object for each [page kind].
@z

@x
[page kind]: /getting-started/glossary/#page-kind
@y
[page kind]: /getting-started/glossary/#page-kind
@z

@x
{{% note %}}
The `Data` method is only useful within [taxonomy] and [term] templates.
@y
{{% note %}}
The `Data` method is only useful within [taxonomy] and [term] templates.
@z

@x
Themes that are not actively maintained may still use `.Data.Pages` in list templates. Although that syntax remains functional, use one of these methods instead: [`Pages`], [`RegularPages`], or [`RegularPagesRecursive`]
@y
Themes that are not actively maintained may still use `.Data.Pages` in list templates. Although that syntax remains functional, use one of these methods instead: [`Pages`], [`RegularPages`], or [`RegularPagesRecursive`]
@z

@x
[`Pages`]: /methods/page/pages/
[`RegularPages`]: /methods/page/regularpages/
[`RegularPagesRecursive`]: /methods/page/regularpagesrecursive/
[term]: /getting-started/glossary/#term
[taxonomy]: /getting-started/glossary/#taxonomy
{{% /note %}}
@y
[`Pages`]: /methods/page/pages/
[`RegularPages`]: /methods/page/regularpages/
[`RegularPagesRecursive`]: /methods/page/regularpagesrecursive/
[term]: /getting-started/glossary/#term
[taxonomy]: /getting-started/glossary/#taxonomy
{{% /note %}}
@z

@x
The examples that follow are based on this site configuration:
@y
The examples that follow are based on this site configuration:
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
## In a taxonomy template
@y
## In a taxonomy template
@z

@x
Use these methods on the `Data` object within a taxonomy template.
@y
Use these methods on the `Data` object within a taxonomy template.
@z

@x
Singular
: (`string`) Returns the singular name of the taxonomy.
@y
Singular
: (`string`) Returns the singular name of the taxonomy.
@z

@x
```go-html-template
{{ .Data.Singular }} → genre
```
@y
```go-html-template
{{ .Data.Singular }} → genre
```
@z

@x
Plural
: (`string`) Returns the plural name of the taxonomy.
@y
Plural
: (`string`) Returns the plural name of the taxonomy.
@z

@x
```go-html-template
{{ .Data.Plural }} → genres
```
@y
```go-html-template
{{ .Data.Plural }} → genres
```
@z

@x
Terms
: (`page.Taxonomy`) Returns the taxonomy object, consisting of a map of terms and the [weighted pages] associated with each term.
@y
Terms
: (`page.Taxonomy`) Returns the taxonomy object, consisting of a map of terms and the [weighted pages] associated with each term.
@z

@x
```go-html-template
{{ $taxonomyObject := .Data.Terms }} 
```
@y
```go-html-template
{{ $taxonomyObject := .Data.Terms }} 
```
@z

@x
{{% note %}}
Once you have captured the taxonomy object, use any of the [taxonomy methods] to sort, count, or capture a subset of its weighted pages.
@y
{{% note %}}
Once you have captured the taxonomy object, use any of the [taxonomy methods] to sort, count, or capture a subset of its weighted pages.
@z

@x
[taxonomy methods]: /methods/taxonomy/
{{% /note %}}
@y
[taxonomy methods]: /methods/taxonomy/
{{% /note %}}
@z

@x
Learn more about [taxonomy templates].
@y
Learn more about [taxonomy templates].
@z

@x
## In a term template
@y
## In a term template
@z

@x
Use these methods on the `Data` object within a term template.
@y
Use these methods on the `Data` object within a term template.
@z

@x
Singular
: (`string`) Returns the singular name of the taxonomy.
@y
Singular
: (`string`) Returns the singular name of the taxonomy.
@z

@x
```go-html-template
{{ .Data.Singular }} → genre
```
@y
```go-html-template
{{ .Data.Singular }} → genre
```
@z

@x
Plural
: (`string`) Returns the plural name of the taxonomy.
@y
Plural
: (`string`) Returns the plural name of the taxonomy.
@z

@x
```go-html-template
{{ .Data.Plural }} → genres
```
@y
```go-html-template
{{ .Data.Plural }} → genres
```
@z

@x
Term
: (`string`) Returns the name of the term.
@y
Term
: (`string`) Returns the name of the term.
@z

@x
```go-html-template
{{ .Data.Term }} → suspense
```
@y
```go-html-template
{{ .Data.Term }} → suspense
```
@z

@x
Learn more about [term templates].
@y
Learn more about [term templates].
@z

@x
[taxonomy templates]: /templates/taxonomy-templates/
[term templates]: /templates/taxonomy-templates/
[weighted pages]: /getting-started/glossary/#weighted-page
@y
[taxonomy templates]: /templates/taxonomy-templates/
[term templates]: /templates/taxonomy-templates/
[weighted pages]: /getting-started/glossary/#weighted-page
@z
