%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Taxonomies
description: Returns a data structure containing the site's Taxonomy objects, the terms within each Taxonomy object, and the pages to which the terms are assigned.
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
description: Returns a data structure containing the site's Taxonomy objects, the terms within each Taxonomy object, and the pages to which the terms are assigned.
categories: []
keywords: []
action:
  related: []
  returnType: page.TaxonomyList
  signatures: [SITE.Taxonomies]
---
@z

@x
<!-- TODO
Show template example: GetTerms
@y
<!-- TODO
Show template example: GetTerms
@z

@x
-->
@y
-->
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

@x
## Examples
@y
## Examples
@z

@x
### List content with the same taxonomy term
@y
### List content with the same taxonomy term
@z

@x
If you are using a taxonomy for something like a series of posts, you can list individual pages associated with the same term. For example:
@y
If you are using a taxonomy for something like a series of posts, you can list individual pages associated with the same term. For example:
@z

@x
```go-html-template
<ul>
  {{ range .Site.Taxonomies.series.golang }}
    <li><a href="{{ .Page.RelPermalink }}">{{ .Page.Title }}</a></li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Site.Taxonomies.series.golang }}
    <li><a href="{{ .Page.RelPermalink }}">{{ .Page.Title }}</a></li>
  {{ end }}
</ul>
```
@z

@x
### List all content in a given taxonomy
@y
### List all content in a given taxonomy
@z

@x
This would be very useful in a sidebar as “featured content”. You could even have different sections of “featured content” by assigning different terms to the content.
@y
This would be very useful in a sidebar as “featured content”. You could even have different sections of “featured content” by assigning different terms to the content.
@z

@x
```go-html-template
<section id="menu">
  <ul>
    {{ range $term, $taxonomy := .Site.Taxonomies.featured }}
      <li>{{ $term }}</li>
      <ul>
        {{ range $taxonomy.Pages }}
          <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
        {{ end }}
      </ul>
    {{ end }}
  </ul>
</section>
```
@y
```go-html-template
<section id="menu">
  <ul>
    {{ range $term, $taxonomy := .Site.Taxonomies.featured }}
      <li>{{ $term }}</li>
      <ul>
        {{ range $taxonomy.Pages }}
          <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
        {{ end }}
      </ul>
    {{ end }}
  </ul>
</section>
```
@z

@x
### Render a site's taxonomies
@y
### Render a site's taxonomies
@z

@x
The following example displays all terms in a site's tags taxonomy:
@y
The following example displays all terms in a site's tags taxonomy:
@z

@x
```go-html-template
<ul>
  {{ range .Site.Taxonomies.tags }}
    <li><a href="{{ .Page.Permalink }}">{{ .Page.Title }}</a> {{ .Count }}</li>
  {{ end }}
</ul>
```
This example will list all taxonomies and their terms, as well as all the content assigned to each of the terms.
@y
```go-html-template
<ul>
  {{ range .Site.Taxonomies.tags }}
    <li><a href="{{ .Page.Permalink }}">{{ .Page.Title }}</a> {{ .Count }}</li>
  {{ end }}
</ul>
```
This example will list all taxonomies and their terms, as well as all the content assigned to each of the terms.
@z

@x
{{< code file=layouts/partials/all-taxonomies.html >}}
{{ with .Site.Taxonomies }}
  {{ $numberOfTerms := 0 }}
  {{ range $taxonomy, $terms := . }}
    {{ $numberOfTerms = len . | add $numberOfTerms }}
  {{ end }}
@y
{{< code file=layouts/partials/all-taxonomies.html >}}
{{ with .Site.Taxonomies }}
  {{ $numberOfTerms := 0 }}
  {{ range $taxonomy, $terms := . }}
    {{ $numberOfTerms = len . | add $numberOfTerms }}
  {{ end }}
@z

@x
  {{ if gt $numberOfTerms 0 }}
    <ul>
      {{ range $taxonomy, $terms := . }}
        {{ with $terms }}
          <li>
            <a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a>
            <ul>
              {{ range $term, $weightedPages := . }}
                <li>
                  <a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a>
                  <ul>
                    {{ range $weightedPages }}
                      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
                    {{ end }}
                  </ul>
                </li>
              {{ end }}
            </ul>
          </li>
        {{ end }}
      {{ end }}
    </ul>
  {{ end }}
{{ end }}
{{< /code >}}
@y
  {{ if gt $numberOfTerms 0 }}
    <ul>
      {{ range $taxonomy, $terms := . }}
        {{ with $terms }}
          <li>
            <a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a>
            <ul>
              {{ range $term, $weightedPages := . }}
                <li>
                  <a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a>
                  <ul>
                    {{ range $weightedPages }}
                      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
                    {{ end }}
                  </ul>
                </li>
              {{ end }}
            </ul>
          </li>
        {{ end }}
      {{ end }}
    </ul>
  {{ end }}
{{ end }}
{{< /code >}}
@z
