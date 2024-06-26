%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Taxonomy templates
description: Taxonomy templating includes taxonomy list pages, taxonomy terms pages, and using taxonomies in your single page templates.
categories: [templates]
keywords: [taxonomies,metadata,front matter,terms,templates]
@y
title: 分類テンプレート
description: Taxonomy templating includes taxonomy list pages, taxonomy terms pages, and using taxonomies in your single page templates.
categories: [templates]
keywords: [taxonomies,metadata,front matter,terms,templates]
@z

@x
Hugo includes support for user-defined groupings of content called **taxonomies**. Taxonomies are classifications that demonstrate logical relationships between content. See [Taxonomies under Content Management](/content-management/taxonomies) if you are unfamiliar with how Hugo leverages this powerful feature.
@y
Hugo includes support for user-defined groupings of content called **taxonomies**. Taxonomies are classifications that demonstrate logical relationships between content. See [Taxonomies under Content Management](/content-management/taxonomies) if you are unfamiliar with how Hugo leverages this powerful feature.
@z

@x
Hugo provides multiple ways to use taxonomies throughout your project templates:
@y
Hugo provides multiple ways to use taxonomies throughout your project templates:
@z

@x
* Order the way content associated with a taxonomy term is displayed in a [taxonomy template](#taxonomy-templates)
* Order the way the terms for a taxonomy are displayed in a [term template](#term-templates)
* List a single content's taxonomy terms within a [single page template]
@y
* Order the way content associated with a taxonomy term is displayed in a [taxonomy template](#taxonomy-templates)
* Order the way the terms for a taxonomy are displayed in a [term template](#term-templates)
* List a single content's taxonomy terms within a [single page template]
@z

@x
## Taxonomy templates
@y
## Taxonomy templates
@z

@x
Taxonomy list page templates are lists and therefore have all the methods available to [list pages][lists].
@y
Taxonomy list page templates are lists and therefore have all the methods available to [list pages][lists].
@z

@x
### Taxonomy template lookup order
@y
### Taxonomy template lookup order
@z

@x
See [Template Lookup](/templates/lookup-order/).
@y
See [Template Lookup](/templates/lookup-order/).
@z

@x
## Term templates
@y
## Term templates
@z

@x
### Term template lookup order
@y
### Term template lookup order
@z

@x
See [Template Lookup](/templates/lookup-order/).
@y
See [Template Lookup](/templates/lookup-order/).
@z

@x
### Taxonomy methods
@y
### Taxonomy methods
@z

@x
{{< list-pages-in-section path=/methods/taxonomy/ >}}
@y
{{< list-pages-in-section path=/methods/taxonomy/ >}}
@z

@x
### OrderedTaxonomy
@y
### OrderedTaxonomy
@z

@x
Since Maps are unordered, an OrderedTaxonomy is a special structure that has a defined order.
@y
Since Maps are unordered, an OrderedTaxonomy is a special structure that has a defined order.
@z

@x
```go
[]struct {
    Name          string
    WeightedPages WeightedPages
}
```
@y
```go
[]struct {
    Name          string
    WeightedPages WeightedPages
}
```
@z

@x
Each element of the slice has:
@y
Each element of the slice has:
@z

@x
.Term
: The Term used.
@y
.Term
: The Term used.
@z

@x
.WeightedPages
: A slice of Weighted Pages.
@y
.WeightedPages
: A slice of Weighted Pages.
@z

@x
.Count
: The number of pieces of content assigned to this term.
@y
.Count
: The number of pieces of content assigned to this term.
@z

@x
.Page
: Returns a page reference for this term.
@y
.Page
: Returns a page reference for this term.
@z

@x
.Pages
: All Pages assigned to this term. All [list methods][renderlists] are available to this.
@y
.Pages
: All Pages assigned to this term. All [list methods][renderlists] are available to this.
@z

@x
## WeightedPages
@y
## WeightedPages
@z

@x
WeightedPages is simply a slice of WeightedPage.
@y
WeightedPages is simply a slice of WeightedPage.
@z

@x
```go
type WeightedPages []WeightedPage
```
@y
```go
type WeightedPages []WeightedPage
```
@z

@x
.Count
: The number of pieces of content assigned to this term.
@y
.Count
: The number of pieces of content assigned to this term.
@z

@x
.Page
: Returns a page reference for this term.
@y
.Page
: Returns a page reference for this term.
@z

@x
.Pages
: Returns a slice of pages, which then can be ordered using any of the [list methods][renderlists].
@y
.Pages
: Returns a slice of pages, which then can be ordered using any of the [list methods][renderlists].
@z

@x
## Displaying custom metadata in taxonomy terms templates
@y
## Displaying custom metadata in taxonomy terms templates
@z

@x
If you need to display custom metadata for each taxonomy term, you will need to create a page for that term at `/content/<TAXONOMY>/<TERM>/_index.md` and add your metadata in its front matter, [as explained in the taxonomies documentation](/content-management/taxonomies/#add-custom-metadata-to-a-taxonomy-or-term). Based on the Actors taxonomy example shown there, within your taxonomy terms template, you may access your custom fields by ranging over the page collection returned by the [`Pages`] method:
@y
If you need to display custom metadata for each taxonomy term, you will need to create a page for that term at `/content/<TAXONOMY>/<TERM>/_index.md` and add your metadata in its front matter, [as explained in the taxonomies documentation](/content-management/taxonomies/#add-custom-metadata-to-a-taxonomy-or-term). Based on the Actors taxonomy example shown there, within your taxonomy terms template, you may access your custom fields by ranging over the page collection returned by the [`Pages`] method:
@z

@x
```go-html-template
<ul>
  {{ range .Pages }}
    <li>
      <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
      {{ .Params.wikipedia }}
    </li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Pages }}
    <li>
      <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
      {{ .Params.wikipedia }}
    </li>
  {{ end }}
</ul>
```
@z

@x
## Order taxonomies
@y
## Order taxonomies
@z

@x
Taxonomies can be ordered by either alphabetical key or by the number of content pieces assigned to that key.
@y
Taxonomies can be ordered by either alphabetical key or by the number of content pieces assigned to that key.
@z

@x
### Order alphabetically example
@y
### Order alphabetically example
@z

@x
```go-html-template
<ul>
  {{ range .Data.Terms.Alphabetical }}
    <li><a href="{{ .Page.Permalink }}">{{ .Page.Title }}</a> {{ .Count }}</li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Data.Terms.Alphabetical }}
    <li><a href="{{ .Page.Permalink }}">{{ .Page.Title }}</a> {{ .Count }}</li>
  {{ end }}
</ul>
```
@z

@x
## Order content within taxonomies
@y
## Order content within taxonomies
@z

@x
Hugo uses both `date` and `weight` to order content within taxonomies.
@y
Hugo uses both `date` and `weight` to order content within taxonomies.
@z

@x
Each piece of content in Hugo can optionally be assigned a date. It can also be assigned a weight for each taxonomy it is assigned to.
@y
Each piece of content in Hugo can optionally be assigned a date. It can also be assigned a weight for each taxonomy it is assigned to.
@z

@x
When iterating over content within taxonomies, the default sort is the same as that used for section and list pages: first by weight, then by date. This means that if the weights for two pieces of content are the same, then the more recent content will be displayed first.
@y
When iterating over content within taxonomies, the default sort is the same as that used for section and list pages: first by weight, then by date. This means that if the weights for two pieces of content are the same, then the more recent content will be displayed first.
@z

@x
The default weight for any piece of content is 0. Zero means "does not have a weight", not "has a weight of numerical value zero".
@y
The default weight for any piece of content is 0. Zero means "does not have a weight", not "has a weight of numerical value zero".
@z

@x
Weights of zero are thus treated specially: if two pages have unequal weights, and one of them is zero, then the zero-weighted page will always appear after the other one, regardless of the other's weight. Zero weights should thus be used with care: for example, if both positive and negative weights are used to extend a sequence in both directions, a zero-weighted page will appear not in the middle of the list, but at the end.
@y
Weights of zero are thus treated specially: if two pages have unequal weights, and one of them is zero, then the zero-weighted page will always appear after the other one, regardless of the other's weight. Zero weights should thus be used with care: for example, if both positive and negative weights are used to extend a sequence in both directions, a zero-weighted page will appear not in the middle of the list, but at the end.
@z

@x
### Assign weight
@y
### Assign weight
@z

@x
Content can be assigned weight for each taxonomy that it's assigned to.
@y
Content can be assigned weight for each taxonomy that it's assigned to.
@z

@x
{{< code-toggle file=content/example.md fm=true >}}
tags = [ "a", "b", "c" ]
tags_weight = 22
categories = ["d"]
title = "Example"
categories_weight = 44
{{< /code-toggle >}}
@y
{{< code-toggle file=content/example.md fm=true >}}
tags = [ "a", "b", "c" ]
tags_weight = 22
categories = ["d"]
title = "Example"
categories_weight = 44
{{< /code-toggle >}}
@z

@x
The convention is `taxonomyname_weight`.
@y
The convention is `taxonomyname_weight`.
@z

@x
In the above example, this piece of content has a weight of 22 which applies to the sorting when rendering the pages assigned to the "a", "b" and "c" values of the 'tag' taxonomy.
@y
In the above example, this piece of content has a weight of 22 which applies to the sorting when rendering the pages assigned to the "a", "b" and "c" values of the 'tag' taxonomy.
@z

@x
It has also been assigned the weight of 44 when rendering the 'd' category.
@y
It has also been assigned the weight of 44 when rendering the 'd' category.
@z

@x
With this the same piece of content can appear in different positions in different taxonomies.
@y
With this the same piece of content can appear in different positions in different taxonomies.
@z

@x
Currently taxonomies only support the default ordering of content which is weight -> date.
@y
Currently taxonomies only support the default ordering of content which is weight -> date.
@z

@x
There are two different templates that the use of taxonomies will require you to provide.
@y
There are two different templates that the use of taxonomies will require you to provide.
@z

@x
Both templates are covered in detail in the templates section.
@y
Both templates are covered in detail in the templates section.
@z

@x
A [list template](/templates/lists/) is any template that will be used to render multiple pieces of content in a single html page. This template will be used to generate all the automatically created taxonomy pages.
@y
A [list template](/templates/lists/) is any template that will be used to render multiple pieces of content in a single html page. This template will be used to generate all the automatically created taxonomy pages.
@z

@x
A [taxonomy template](/templates/taxonomy-templates/) is a template used to
generate the list of terms for a given template.
@y
A [taxonomy template](/templates/taxonomy-templates/) is a template used to
generate the list of terms for a given template.
@z

@x
There are four common ways you can display the data in your
taxonomies in addition to the automatic taxonomy pages created by hugo
using the [list templates](/templates/lists/):
@y
There are four common ways you can display the data in your
taxonomies in addition to the automatic taxonomy pages created by hugo
using the [list templates](/templates/lists/):
@z

@x
1. For a given piece of content, you can list the terms attached
2. For a given piece of content, you can list other content with the same
   term
3. You can list all terms for a taxonomy
4. You can list all taxonomies (with their terms)
@y
1. For a given piece of content, you can list the terms attached
2. For a given piece of content, you can list other content with the same
   term
3. You can list all terms for a taxonomy
4. You can list all taxonomies (with their terms)
@z

@x
## List terms assigned to a page
@y
## List terms assigned to a page
@z

@x
List the terms assigned to a page using the `.Page.GetTerms` method.
@y
List the terms assigned to a page using the `.Page.GetTerms` method.
@z

@x
To render an unordered list:
@y
To render an unordered list:
@z

@x
```go-html-template
{{ $taxonomy := "tags" }}
{{ with .GetTerms $taxonomy }}
  <p>{{ (site.GetPage $taxonomy).LinkTitle }}:</p>
  <ul>
    {{ range . }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ $taxonomy := "tags" }}
{{ with .GetTerms $taxonomy }}
  <p>{{ (site.GetPage $taxonomy).LinkTitle }}:</p>
  <ul>
    {{ range . }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@z

@x
To render a comma-delimited list:
@y
To render a comma-delimited list:
@z

@x
```go-html-template
{{ $taxonomy := "tags" }}
{{ with .GetTerms $taxonomy }}
  <p>
    {{ (site.GetPage $taxonomy).LinkTitle }}:
    {{ range $k, $_ := . -}}
      {{ if $k }}, {{ end }}
      <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
    {{- end }}
  </p>
{{ end }}
```
@y
```go-html-template
{{ $taxonomy := "tags" }}
{{ with .GetTerms $taxonomy }}
  <p>
    {{ (site.GetPage $taxonomy).LinkTitle }}:
    {{ range $k, $_ := . -}}
      {{ if $k }}, {{ end }}
      <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
    {{- end }}
  </p>
{{ end }}
```
@z

@x
## List content with the same taxonomy term
@y
## List content with the same taxonomy term
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
## List all content in a given taxonomy
@y
## List all content in a given taxonomy
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
## Render a site's taxonomies
@y
## Render a site's taxonomies
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

@x
[`Pages`]: /methods/page/pages/
[getpage]: /methods/page/getpage/
[lists]: /templates/lists/
[renderlists]: /templates/lists/
[single page template]: /templates/single-page-templates/
@y
[`Pages`]: /methods/page/pages/
[getpage]: /methods/page/getpage/
[lists]: /templates/lists/
[renderlists]: /templates/lists/
[single page template]: /templates/single-page-templates/
@z
