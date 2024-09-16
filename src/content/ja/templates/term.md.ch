%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Term templates
description: Create a term template to render a list of pages associated with the current term.
categories: [templates]
keywords: []
menu:
  docs:
    parent: templates
    weight: 100
weight: 100
toc: true
---
@y
---
title: Term templates
description: Create a term template to render a list of pages associated with the current term.
categories: [templates]
keywords: []
menu:
  docs:
    parent: templates
    weight: 100
weight: 100
toc: true
---
@z

@x
The [term] template below inherits the site's shell from the [base template], and renders a list of pages associated with the current term.
@y
The [term] template below inherits the site's shell from the [base template], and renders a list of pages associated with the current term.
@z

@x
[term]: /getting-started/glossary/#term
[base template]: /templates/types/
@y
[term]: /getting-started/glossary/#term
[base template]: /templates/types/
@z

@x
{{< code file=layouts/_default/term.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
  {{ range .Pages }}
    <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ end }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/term.html >}}
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
In the example above, the term will be capitalized if its respective page is not backed by a file. You can disable this in your site configuration:
@y
In the example above, the term will be capitalized if its respective page is not backed by a file. You can disable this in your site configuration:
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
Term
: (`string`) Returns the name of the term.
@y
Term
: (`string`) Returns the name of the term.
@z

@x
```go-html-template
{{ .Data.Term }} → fiction
```
@y
```go-html-template
{{ .Data.Term }} → fiction
```
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
Then create a term template specific to the "authors" taxonomy:
@y
Then create a term template specific to the "authors" taxonomy:
@z

@x
{{< code file=layouts/authors/term.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  <p>Affiliation: {{ .Params.affiliation }}</p>
  {{ with .Resources.Get "portrait.jpg" }}
    {{ with .Fill "100x100" }}
      <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="portrait">
    {{ end }}
  {{ end }}
  {{ .Content }}
  {{ range .Pages }}
    <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ end }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/authors/term.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  <p>Affiliation: {{ .Params.affiliation }}</p>
  {{ with .Resources.Get "portrait.jpg" }}
    {{ with .Fill "100x100" }}
      <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="portrait">
    {{ end }}
  {{ end }}
  {{ .Content }}
  {{ range .Pages }}
    <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ end }}
{{ end }}
{{< /code >}}
@z

@x
In the example above we display the author with their affiliation and portrait, then a list of associated content.
@y
In the example above we display the author with their affiliation and portrait, then a list of associated content.
@z
