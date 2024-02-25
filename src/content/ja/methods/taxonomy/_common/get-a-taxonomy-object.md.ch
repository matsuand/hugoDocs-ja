%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
# Do not remove front matter.
---
@y
---
# Do not remove front matter.
---
@z

@x
Before we can use a `Taxonomy` method, we need to capture a `Taxonomy` object.
@y
Before we can use a `Taxonomy` method, we need to capture a `Taxonomy` object.
@z

@x
## Capture a taxonomy object
@y
## Capture a taxonomy object
@z

@x
Consider this site configuration:
@y
Consider this site configuration:
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
To capture the "genres" taxonomy object from within any template, use the [`Taxonomies`] method on a `Site` object.
@y
To capture the "genres" taxonomy object from within any template, use the [`Taxonomies`] method on a `Site` object.
@z

@x
```go-html-template
{{ $taxonomyObject := .Site.Taxonomies.genres }}
```
@y
```go-html-template
{{ $taxonomyObject := .Site.Taxonomies.genres }}
```
@z

@x
To capture the "genres" taxonomy object when rendering its page with a taxonomy template, use the [`Terms`] method on the page's [`Data`] object:
@y
To capture the "genres" taxonomy object when rendering its page with a taxonomy template, use the [`Terms`] method on the page's [`Data`] object:
@z

@x
{{< code file=layouts/_default/taxonomy.html  >}}
{{ $taxonomyObject := .Data.Terms }}
{{< /code >}}
@y
{{< code file=layouts/_default/taxonomy.html  >}}
{{ $taxonomyObject := .Data.Terms }}
{{< /code >}}
@z

@x
To inspect the data structure:
@y
To inspect the data structure:
@z

@x
```go-html-template
<pre>{{ jsonify (dict "indent" "  ") $taxonomyObject }}</pre>
```
@y
```go-html-template
<pre>{{ jsonify (dict "indent" "  ") $taxonomyObject }}</pre>
```
@z

@x
Although the [`Alphabetical`] and [`ByCount`] methods provide a better data structure for ranging through the taxonomy, you can render the weighted pages by term directly from the `Taxonomy` object:
@y
Although the [`Alphabetical`] and [`ByCount`] methods provide a better data structure for ranging through the taxonomy, you can render the weighted pages by term directly from the `Taxonomy` object:
@z

@x
```go-html-template
{{ range $term, $weightedPages := $taxonomyObject }}
  <h2><a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a></h2>
  <ul>
    {{ range $weightedPages }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ range $term, $weightedPages := $taxonomyObject }}
  <h2><a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a></h2>
  <ul>
    {{ range $weightedPages }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@z

@x
In the example above, the first anchor element is a link to the term page.
@y
In the example above, the first anchor element is a link to the term page.
@z

@x
[`Alphabetical`]: /methods/taxonomy/alphabetical/
[`ByCount`]: /methods/taxonomy/bycount/
@y
[`Alphabetical`]: /methods/taxonomy/alphabetical/
[`ByCount`]: /methods/taxonomy/bycount/
@z

@x
[`data`]: /methods/page/data/
[`terms`]: /methods/page/data/#in-a-taxonomy-template
[`taxonomies`]: /methods/site/taxonomies/
@y
[`data`]: /methods/page/data/
[`terms`]: /methods/page/data/#in-a-taxonomy-template
[`taxonomies`]: /methods/site/taxonomies/
@z
