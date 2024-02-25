%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Sort
description: Sorts slices, maps, and page collections.
categories: []
keywords: []
action:
  aliases: [sort]
  related:
    - functions/collections/Reverse
    - functions/collections/Shuffle
    - functions/collections/Uniq
  returnType: any
  signatures: ['collections.Sort COLLECTION [KEY] [ORDER]']
toc: true
aliases: [/functions/sort]
---
@y
---
title: collections.Sort
description: Sorts slices, maps, and page collections.
categories: []
keywords: []
action:
  aliases: [sort]
  related:
    - functions/collections/Reverse
    - functions/collections/Shuffle
    - functions/collections/Uniq
  returnType: any
  signatures: ['collections.Sort COLLECTION [KEY] [ORDER]']
toc: true
aliases: [/functions/sort]
---
@z

@x
The `KEY` is optional when sorting slices in ascending order, otherwise it is required. When sorting slices, use the literal `value` in place of the `KEY`. See examples below.
@y
The `KEY` is optional when sorting slices in ascending order, otherwise it is required. When sorting slices, use the literal `value` in place of the `KEY`. See examples below.
@z

@x
The `ORDER` may be either `asc` (ascending) or `desc` (descending). The default sort order is ascending.
@y
The `ORDER` may be either `asc` (ascending) or `desc` (descending). The default sort order is ascending.
@z

@x
## Sort a slice
@y
## Sort a slice
@z

@x
The examples below assume this site configuration:
@y
The examples below assume this site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[params]
grades = ['b','a','c']
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[params]
grades = ['b','a','c']
{{< /code-toggle >}}
@z

@x
### Ascending order {#slice-ascending-order}
@y
### Ascending order {#slice-ascending-order}
@z

@x
Sort slice elements in ascending order using either of these constructs:
@y
Sort slice elements in ascending order using either of these constructs:
@z

@x
```go-html-template
{{ sort site.Params.grades }} → [a b c]
{{ sort site.Params.grades "value" "asc" }} → [a b c]
```
@y
```go-html-template
{{ sort site.Params.grades }} → [a b c]
{{ sort site.Params.grades "value" "asc" }} → [a b c]
```
@z

@x
In the examples above, `value` is the `KEY` representing the value of the slice element.
@y
In the examples above, `value` is the `KEY` representing the value of the slice element.
@z

@x
### Descending order {#slice-descending-order}
@y
### Descending order {#slice-descending-order}
@z

@x
Sort slice elements in descending order:
@y
Sort slice elements in descending order:
@z

@x
```go-html-template
{{ sort site.Params.grades "value" "desc" }} → [c b a]
```
@y
```go-html-template
{{ sort site.Params.grades "value" "desc" }} → [c b a]
```
@z

@x
In the example above, `value` is the `KEY` representing the value of the slice element.
@y
In the example above, `value` is the `KEY` representing the value of the slice element.
@z

@x
## Sort a map
@y
## Sort a map
@z

@x
The examples below assume this site configuration:
@y
The examples below assume this site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[params.authors.a]
firstName = "Marius"
lastName  = "Pontmercy"
[params.authors.b]
firstName = "Victor"
lastName  = "Hugo"
[params.authors.c]
firstName = "Jean"
lastName  = "Valjean"
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[params.authors.a]
firstName = "Marius"
lastName  = "Pontmercy"
[params.authors.b]
firstName = "Victor"
lastName  = "Hugo"
[params.authors.c]
firstName = "Jean"
lastName  = "Valjean"
{{< /code-toggle >}}
@z

@x
{{% note %}}
When sorting maps, the `KEY` argument must be lowercase.
{{% /note %}}
@y
{{% note %}}
When sorting maps, the `KEY` argument must be lowercase.
{{% /note %}}
@z

@x
### Ascending order {#map-ascending-order}
@y
### Ascending order {#map-ascending-order}
@z

@x
Sort map objects in ascending order using either of these constructs:
@y
Sort map objects in ascending order using either of these constructs:
@z

@x
```go-html-template
{{ range sort site.Params.authors "firstname" }}
  {{ .firstName }}
{{ end }}
@y
```go-html-template
{{ range sort site.Params.authors "firstname" }}
  {{ .firstName }}
{{ end }}
@z

@x
{{ range sort site.Params.authors "firstname" "asc" }}
  {{ .firstName }}
{{ end }}
```
@y
{{ range sort site.Params.authors "firstname" "asc" }}
  {{ .firstName }}
{{ end }}
```
@z

@x
These produce:
@y
These produce:
@z

@x
```text
Jean Marius Victor
```
@y
```text
Jean Marius Victor
```
@z

@x
### Descending order {#map-descending-order}
@y
### Descending order {#map-descending-order}
@z

@x
Sort map objects in descending order:
@y
Sort map objects in descending order:
@z

@x
```go-html-template
{{ range sort site.Params.authors "firstname" "desc" }}
  {{ .firstName }}
{{ end }}
```
@y
```go-html-template
{{ range sort site.Params.authors "firstname" "desc" }}
  {{ .firstName }}
{{ end }}
```
@z

@x
This produces:
@y
This produces:
@z

@x
```text
Victor Marius Jean
```
@y
```text
Victor Marius Jean
```
@z

@x
### First level key removal
@y
### First level key removal
@z

@x
Hugo removes the first level keys when sorting a map.
@y
Hugo removes the first level keys when sorting a map.
@z

@x
Original map:
@y
Original map:
@z

@x
```json
{
  "felix": {
    "breed": "malicious",
    "type": "cat"
  },
  "spot": {
    "breed": "boxer",
    "type": "dog"
  }
}
```
@y
```json
{
  "felix": {
    "breed": "malicious",
    "type": "cat"
  },
  "spot": {
    "breed": "boxer",
    "type": "dog"
  }
}
```
@z

@x
After sorting:
@y
After sorting:
@z

@x
```json
[
  {
    "breed": "malicious",
    "type": "cat"
  },
  {
    "breed": "boxer",
    "type": "dog"
  }
]
```
@y
```json
[
  {
    "breed": "malicious",
    "type": "cat"
  },
  {
    "breed": "boxer",
    "type": "dog"
  }
]
```
@z

@x
## Sort a page collection
@y
## Sort a page collection
@z

@x
{{% note %}}
Although you can use the `sort` function to sort a page collection, Hugo provides [sorting and grouping methods] as well.
@y
{{% note %}}
Although you can use the `sort` function to sort a page collection, Hugo provides [sorting and grouping methods] as well.
@z

@x
[sorting and grouping methods]: /methods/pages/
{{% /note %}}
@y
[sorting and grouping methods]: /methods/pages/
{{% /note %}}
@z

@x
In this contrived example, sort the site's regular pages by `.Type` in descending order:
@y
In this contrived example, sort the site's regular pages by `.Type` in descending order:
@z

@x
```go-html-template
{{ range sort site.RegularPages "Type" "desc" }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range sort site.RegularPages "Type" "desc" }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z
