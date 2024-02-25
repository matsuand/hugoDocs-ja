%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Alphabetical
description: Returns an ordered taxonomy, sorted alphabetically by term.
categories: []
keywords: []
action:
  related:
    - methods/taxonomy/ByCount
  returnType: page.OrderedTaxonomy
  signatures: [TAXONOMY.Alphabetical]
toc: true
---
@y
---
title: Alphabetical
description: Returns an ordered taxonomy, sorted alphabetically by term.
categories: []
keywords: []
action:
  related:
    - methods/taxonomy/ByCount
  returnType: page.OrderedTaxonomy
  signatures: [TAXONOMY.Alphabetical]
toc: true
---
@z

@x
The `Alphabetical` method on a `Taxonomy` object returns an [ordered taxonomy], sorted alphabetically by [term].
@y
The `Alphabetical` method on a `Taxonomy` object returns an [ordered taxonomy], sorted alphabetically by [term].
@z

@x
While a `Taxonomy` object is a [map], an ordered taxonomy is a [slice], where each element is an object that contains the term and a slice of its [weighted pages].
@y
While a `Taxonomy` object is a [map], an ordered taxonomy is a [slice], where each element is an object that contains the term and a slice of its [weighted pages].
@z

@x
{{% include "methods/taxonomy/_common/get-a-taxonomy-object.md" %}}
@y
{{% include "methods/taxonomy/_common/get-a-taxonomy-object.md" %}}
@z

@x
## Get the ordered taxonomy
@y
## Get the ordered taxonomy
@z

@x
Now that we have captured the “genres” Taxonomy object, let’s get the ordered taxonomy sorted alphabetically by term:
@y
Now that we have captured the “genres” Taxonomy object, let’s get the ordered taxonomy sorted alphabetically by term:
@z

@x
```go-html-template
{{ $taxonomyObject.Alphabetical }}
```
@y
```go-html-template
{{ $taxonomyObject.Alphabetical }}
```
@z

@x
To reverse the sort order:
@y
To reverse the sort order:
@z

@x
```go-html-template
{{ $taxonomyObject.Alphabetical.Reverse }}
```
@y
```go-html-template
{{ $taxonomyObject.Alphabetical.Reverse }}
```
@z

@x
To inspect the data structure:
@y
To inspect the data structure:
@z

@x
```go-html-template
<pre>{{ jsonify (dict "indent" "  ") $taxonomyObject.Alphabetical }}</pre>
```
@y
```go-html-template
<pre>{{ jsonify (dict "indent" "  ") $taxonomyObject.Alphabetical }}</pre>
```
@z

@x
{{% include "methods/taxonomy/_common/ordered-taxonomy-element-methods.md" %}}
@y
{{% include "methods/taxonomy/_common/ordered-taxonomy-element-methods.md" %}}
@z

@x
## Example
@y
## Example
@z

@x
With this template:
@y
With this template:
@z

@x
```go-html-template
{{ range $taxonomyObject.Alphabetical }}
  <h2><a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a> ({{ .Count }})</h2>
  <ul>
    {{ range .Pages.ByTitle }}
      <li><a href="{{ .RelPermalink }}">{{ .Title }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ range $taxonomyObject.Alphabetical }}
  <h2><a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a> ({{ .Count }})</h2>
  <ul>
    {{ range .Pages.ByTitle }}
      <li><a href="{{ .RelPermalink }}">{{ .Title }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@z

@x
Hugo renders:
@y
Hugo renders:
@z

@x
```html
<h2><a href="/genres/romance/">romance</a> (2)</h2>
<ul>
  <li><a href="/books/jamaica-inn/">Jamaica inn</a></li>
  <li><a href="/books/pride-and-prejudice/">Pride and prejudice</a></li>
</ul>
<h2><a href="/genres/suspense/">suspense</a> (3)</h2>
<ul>
  <li><a href="/books/and-then-there-were-none/">And then there were none</a></li>
  <li><a href="/books/death-on-the-nile/">Death on the nile</a></li>
  <li><a href="/books/jamaica-inn/">Jamaica inn</a></li>
</ul>
```
@y
```html
<h2><a href="/genres/romance/">romance</a> (2)</h2>
<ul>
  <li><a href="/books/jamaica-inn/">Jamaica inn</a></li>
  <li><a href="/books/pride-and-prejudice/">Pride and prejudice</a></li>
</ul>
<h2><a href="/genres/suspense/">suspense</a> (3)</h2>
<ul>
  <li><a href="/books/and-then-there-were-none/">And then there were none</a></li>
  <li><a href="/books/death-on-the-nile/">Death on the nile</a></li>
  <li><a href="/books/jamaica-inn/">Jamaica inn</a></li>
</ul>
```
@z

@x
[ordered taxonomy]: /getting-started/glossary/#ordered-taxonomy
[term]: /getting-started/glossary/#term
[map]: /getting-started/glossary/#map
[slice]: /getting-started/glossary/#slice
[term]: /getting-started/glossary/#term
[weighted pages]: /getting-started/glossary/#weighted-page
@y
[ordered taxonomy]: /getting-started/glossary/#ordered-taxonomy
[term]: /getting-started/glossary/#term
[map]: /getting-started/glossary/#map
[slice]: /getting-started/glossary/#slice
[term]: /getting-started/glossary/#term
[weighted pages]: /getting-started/glossary/#weighted-page
@z
