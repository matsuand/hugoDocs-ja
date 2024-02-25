%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Get
description: Returns a slice of weighted pages to which the given term has been assigned.
categories: []
keywords: []
action:
  related: []
  returnType: page.WeightedPages
  signatures: [TAXONOMY.Get TERM]
toc: true
---
@y
---
title: Get
description: Returns a slice of weighted pages to which the given term has been assigned.
categories: []
keywords: []
action:
  related: []
  returnType: page.WeightedPages
  signatures: [TAXONOMY.Get TERM]
toc: true
---
@z

@x
The `Get` method on a `Taxonomy` object returns a slice of [weighted pages] to which the given [term] has been assigned.
@y
The `Get` method on a `Taxonomy` object returns a slice of [weighted pages] to which the given [term] has been assigned.
@z

@x
{{% include "methods/taxonomy/_common/get-a-taxonomy-object.md" %}}
@y
{{% include "methods/taxonomy/_common/get-a-taxonomy-object.md" %}}
@z

@x
## Get the weighted pages
@y
## Get the weighted pages
@z

@x
Now that we have captured the "genres" `Taxonomy` object, let's get the weighted pages to which the "suspense" term has been assigned:
@y
Now that we have captured the "genres" `Taxonomy` object, let's get the weighted pages to which the "suspense" term has been assigned:
@z

@x
```go-html-template
{{ $weightedPages := $taxonomyObject.Get "suspense" }}
```
@y
```go-html-template
{{ $weightedPages := $taxonomyObject.Get "suspense" }}
```
@z

@x
The above is equivalent to:
@y
The above is equivalent to:
@z

@x
```go-html-template
{{ $weightedPages := $taxonomyObject.suspense }}
```
@y
```go-html-template
{{ $weightedPages := $taxonomyObject.suspense }}
```
@z

@x
But, if the term is not a valid [identifier], you cannot use the [chaining] syntax. For example, this will throw an error because the identifier contains a hyphen:
@y
But, if the term is not a valid [identifier], you cannot use the [chaining] syntax. For example, this will throw an error because the identifier contains a hyphen:
@z

@x
```go-html-template
{{ $weightedPages := $taxonomyObject.my-genre }}
```
@y
```go-html-template
{{ $weightedPages := $taxonomyObject.my-genre }}
```
@z

@x
You could also use the [`index`] function, but the syntax is more verbose:
@y
You could also use the [`index`] function, but the syntax is more verbose:
@z

@x
```go-html-template
{{ $weightedPages := index $taxonomyObject "my-genre" }}
```
@y
```go-html-template
{{ $weightedPages := index $taxonomyObject "my-genre" }}
```
@z

@x
To inspect the data structure:
@y
To inspect the data structure:
@z

@x
```go-html-template
<pre>{{ jsonify (dict "indent" "  ") $weightedPages }}</pre>
```
@y
```go-html-template
<pre>{{ jsonify (dict "indent" "  ") $weightedPages }}</pre>
```
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
{{ $weightedPages := $taxonomyObject.Get "suspense" }}
{{ range $weightedPages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ $weightedPages := $taxonomyObject.Get "suspense" }}
{{ range $weightedPages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
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
<h2><a href="/books/jamaica-inn/">Jamaica inn</a></h2>
<h2><a href="/books/death-on-the-nile/">Death on the nile</a></h2>
<h2><a href="/books/and-then-there-were-none/">And then there were none</a></h2>
```
@y
```html
<h2><a href="/books/jamaica-inn/">Jamaica inn</a></h2>
<h2><a href="/books/death-on-the-nile/">Death on the nile</a></h2>
<h2><a href="/books/and-then-there-were-none/">And then there were none</a></h2>
```
@z

@x
[chaining]: /getting-started/glossary/#chain
[`index`]: /functions/collections/indexfunction/
[identifier]: /getting-started/glossary/#identifier
[term]: /getting-started/glossary/#term
[weighted pages]: /getting-started/glossary/#weighted-page
@y
[chaining]: /getting-started/glossary/#chain
[`index`]: /functions/collections/indexfunction/
[identifier]: /getting-started/glossary/#identifier
[term]: /getting-started/glossary/#term
[weighted pages]: /getting-started/glossary/#weighted-page
@z
