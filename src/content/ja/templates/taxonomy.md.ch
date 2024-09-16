%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Taxonomy templates
description: Create a taxonomy template to render a list of terms.
categories: [templates]
keywords: []
menu:
  docs:
    parent: templates
    weight: 90
weight: 90
toc: true
aliases: [/taxonomies/displaying/,/templates/terms/,/indexes/displaying/,/taxonomies/templates/,/indexes/ordering/, /templates/taxonomies/, /templates/taxonomy-templates/]
---
@y
---
title: Taxonomy templates
description: Create a taxonomy template to render a list of terms.
categories: [templates]
keywords: []
menu:
  docs:
    parent: templates
    weight: 90
weight: 90
toc: true
aliases: [/taxonomies/displaying/,/templates/terms/,/indexes/displaying/,/taxonomies/templates/,/indexes/ordering/, /templates/taxonomies/, /templates/taxonomy-templates/]
---
@z

@x
The [taxonomy] template below inherits the site's shell from the [base template], and renders a list of [terms] in the current taxonomy.
@y
The [taxonomy] template below inherits the site's shell from the [base template], and renders a list of [terms] in the current taxonomy.
@z

@x
[taxonomy]: /getting-started/glossary/#taxonomy
[terms]: /getting-started/glossary/#term
[base template]: /templates/types/
@y
[taxonomy]: /getting-started/glossary/#taxonomy
[terms]: /getting-started/glossary/#term
[base template]: /templates/types/
@z

@x
{{< code file=layouts/_default/taxonomy.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
  {{ range .Pages }}
    <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ end }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/taxonomy.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
  {{ range .Pages }}
    <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ end }}
{{ end }}
{{< /code >}}
@z

@x
Review the [template lookup order] to select a template path that provides the desired level of specificity.
@y
Review the [template lookup order] to select a template path that provides the desired level of specificity.
@z

@x
[template lookup order]: /templates/lookup-order/#taxonomy-templates
@y
[template lookup order]: /templates/lookup-order/#taxonomy-templates
@z

@x
In the example above, the taxonomy and term will be capitalized if their respective pages are not backed by files. You can disable this in your site configuration:
@y
In the example above, the taxonomy and term will be capitalized if their respective pages are not backed by files. You can disable this in your site configuration:
@z

@x
{{< code-toggle file=hugo >}}
capitalizeListTitles = false
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
capitalizeListTitles = false
{{< /code-toggle >}}
@z

@x
## Data object
@y
## Data object
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
{{ .Data.Singular }} → tag
```
@y
```go-html-template
{{ .Data.Singular }} → tag
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
{{ .Data.Plural }} → tags
```
@y
```go-html-template
{{ .Data.Plural }} → tags
```
@z

@x
Terms
: (`page.Taxonomy`) Returns the `Taxonomy` object, consisting of a map of terms and the [weighted pages] associated with each term.
@y
Terms
: (`page.Taxonomy`) Returns the `Taxonomy` object, consisting of a map of terms and the [weighted pages] associated with each term.
@z

@x
[weighted pages]: /getting-started/glossary/#weighted-page
@y
[weighted pages]: /getting-started/glossary/#weighted-page
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
Once we have the `Taxonomy` object, we can call any of its [methods], allowing us to sort alphabetically or by term count.
@y
Once we have the `Taxonomy` object, we can call any of its [methods], allowing us to sort alphabetically or by term count.
@z

@x
[methods]: /methods/taxonomy/
@y
[methods]: /methods/taxonomy/
@z

@x
## Sort alphabetically
@y
## Sort alphabetically
@z

@x
The taxonomy template below inherits the site's shell from the base template, and renders a list of terms in the current taxonomy. Hugo sorts the list alphabetically by term, and displays the number of pages associated with each term.
@y
The taxonomy template below inherits the site's shell from the base template, and renders a list of terms in the current taxonomy. Hugo sorts the list alphabetically by term, and displays the number of pages associated with each term.
@z

@x
{{< code file=layouts/_default/taxonomy.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
  {{ range .Data.Terms.Alphabetical }}
    <h2><a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a> ({{ .Count }})</h2>
  {{ end }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/taxonomy.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
  {{ range .Data.Terms.Alphabetical }}
    <h2><a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a> ({{ .Count }})</h2>
  {{ end }}
{{ end }}
{{< /code >}}
@z

@x
## Sort by term count
@y
## Sort by term count
@z

@x
The taxonomy template below inherits the site's shell from the base template, and renders a list of terms in the current taxonomy. Hugo sorts the list by the number of pages associated with each term, and displays the number of pages associated with each term.
@y
The taxonomy template below inherits the site's shell from the base template, and renders a list of terms in the current taxonomy. Hugo sorts the list by the number of pages associated with each term, and displays the number of pages associated with each term.
@z

@x
{{< code file=layouts/_default/taxonomy.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
  {{ range .Data.Terms.ByCount }}
    <h2><a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a> ({{ .Count }})</h2>
  {{ end }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/taxonomy.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
  {{ range .Data.Terms.ByCount }}
    <h2><a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a> ({{ .Count }})</h2>
  {{ end }}
{{ end }}
{{< /code >}}
@z

@x
## Include content links
@y
## Include content links
@z

@x
The [`Alphabetical`] and [`ByCount`] methods used in the previous examples return an [ordered taxonomy], so we can also list the content to which each term is assigned.
@y
The [`Alphabetical`] and [`ByCount`] methods used in the previous examples return an [ordered taxonomy], so we can also list the content to which each term is assigned.
@z

@x
[ordered taxonomy]: /getting-started/glossary/#ordered-taxonomy
[`Alphabetical`]: /methods/taxonomy/alphabetical/
[`ByCount`]: /methods/taxonomy/bycount/
@y
[ordered taxonomy]: /getting-started/glossary/#ordered-taxonomy
[`Alphabetical`]: /methods/taxonomy/alphabetical/
[`ByCount`]: /methods/taxonomy/bycount/
@z

@x
The taxonomy template below inherits the site's shell from the base template, and renders a list of terms in the current taxonomy. Hugo sorts the list by the number of pages associated with each term, displays the number of pages associated with each term, then lists the content to which each term is assigned.
@y
The taxonomy template below inherits the site's shell from the base template, and renders a list of terms in the current taxonomy. Hugo sorts the list by the number of pages associated with each term, displays the number of pages associated with each term, then lists the content to which each term is assigned.
@z

@x
{{< code file=layouts/_default/taxonomy.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
  {{ range .Data.Terms.ByCount }}
    <h2><a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a> ({{ .Count }})</h2>
    <ul>
      {{ range .WeightedPages }}
        <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
      {{ end }}
    </ul>
  {{ end }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/taxonomy.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
  {{ range .Data.Terms.ByCount }}
    <h2><a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a> ({{ .Count }})</h2>
    <ul>
      {{ range .WeightedPages }}
        <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
      {{ end }}
    </ul>
  {{ end }}
{{ end }}
{{< /code >}}
@z

@x
## Display metadata
@y
## Display metadata
@z

@x
Display metadata about each term by creating a corresponding branch bundle in the content directory.
@y
Display metadata about each term by creating a corresponding branch bundle in the content directory.
@z

@x
For example, create an "authors" taxonomy:
@y
For example, create an "authors" taxonomy:
@z

@x
{{< code-toggle file=hugo >}}
[taxonomies]
author = 'authors'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[taxonomies]
author = 'authors'
{{< /code-toggle >}}
@z

@x
Then create content with one [branch bundle] for each term:
@y
Then create content with one [branch bundle] for each term:
@z

@x
[branch bundle]: /getting-started/glossary/#branch-bundle
@y
[branch bundle]: /getting-started/glossary/#branch-bundle
@z

@x
```text
content/
└── authors/
    ├── jsmith/
    │   ├── _index.md
    │   └── portrait.jpg
    └── rjones/
        ├── _index.md
        └── portrait.jpg
```
@y
```text
content/
└── authors/
    ├── jsmith/
    │   ├── _index.md
    │   └── portrait.jpg
    └── rjones/
        ├── _index.md
        └── portrait.jpg
```
@z

@x
Then add front matter to each term page:
@y
Then add front matter to each term page:
@z

@x
{{< code-toggle file=content/authors/jsmith/_index.md fm=true >}}
title = "John Smith"
affiliation = "University of Chicago"
{{< /code-toggle >}}
@y
{{< code-toggle file=content/authors/jsmith/_index.md fm=true >}}
title = "John Smith"
affiliation = "University of Chicago"
{{< /code-toggle >}}
@z

@x
Then create a taxonomy template specific to the "authors" taxonomy:
@y
Then create a taxonomy template specific to the "authors" taxonomy:
@z

@x
{{< code file=layouts/authors/taxonomy.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
  {{ range .Data.Terms.Alphabetical }}
    <h2><a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a></h2>
    <p>Affiliation: {{ .Page.Params.Affiliation }}</p>
    {{ with .Page.Resources.Get "portrait.jpg" }}
      {{ with .Fill "100x100" }}
        <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="portrait">
      {{ end }}
    {{ end }}
  {{ end }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/authors/taxonomy.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
  {{ range .Data.Terms.Alphabetical }}
    <h2><a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a></h2>
    <p>Affiliation: {{ .Page.Params.Affiliation }}</p>
    {{ with .Page.Resources.Get "portrait.jpg" }}
      {{ with .Fill "100x100" }}
        <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="portrait">
      {{ end }}
    {{ end }}
  {{ end }}
{{ end }}
{{< /code >}}
@z

@x
In the example above we list each author including their affiliation and portrait.
@y
In the example above we list each author including their affiliation and portrait.
@z
