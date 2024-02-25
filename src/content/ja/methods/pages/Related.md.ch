%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Related
description: Returns a collection of pages related to the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/HeadingsFiltered
    - functions/collections/KeyVals
  returnType: page.Pages
  signatures:
    - PAGES.Related PAGE
    - PAGES.Related OPTIONS
---
@y
---
title: Related
description: Returns a collection of pages related to the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/HeadingsFiltered
    - functions/collections/KeyVals
  returnType: page.Pages
  signatures:
    - PAGES.Related PAGE
    - PAGES.Related OPTIONS
---
@z

@x
Based on front matter, Hugo uses several factors to identify content related to the given page. Use the default [related content configuration], or tune the results to the desired indices and parameters. See&nbsp;[details].
@y
Based on front matter, Hugo uses several factors to identify content related to the given page. Use the default [related content configuration], or tune the results to the desired indices and parameters. See&nbsp;[details].
@z

@x
The argument passed to the `Related` method may be a `Page` or an options map. For example, to pass the current page:
@y
The argument passed to the `Related` method may be a `Page` or an options map. For example, to pass the current page:
@z

@x
{{< code file=layouts/_default/single.html  >}}
{{ with .Site.RegularPages.Related . | first 5 }}
  <p>Related pages:</p>
  <ul>
    {{ range . }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/single.html  >}}
{{ with .Site.RegularPages.Related . | first 5 }}
  <p>Related pages:</p>
  <ul>
    {{ range . }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
{{< /code >}}
@z

@x
To pass an options map:
@y
To pass an options map:
@z

@x
{{< code file=layouts/_default/single.html  >}}
{{ $opts := dict
  "document" .
  "indices" (slice "tags" "keywords")
}}
{{ with .Site.RegularPages.Related $opts | first 5 }}
  <p>Related pages:</p>
  <ul>
    {{ range . }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/single.html  >}}
{{ $opts := dict
  "document" .
  "indices" (slice "tags" "keywords")
}}
{{ with .Site.RegularPages.Related $opts | first 5 }}
  <p>Related pages:</p>
  <ul>
    {{ range . }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
{{< /code >}}
@z

@x
## Options
@y
## Options
@z

@x
indices
: (`slice`) The indices to search within.
@y
indices
: (`slice`) The indices to search within.
@z

@x
document
: (`page`) The page for which to find related content. Required when specifying an options map.
@y
document
: (`page`) The page for which to find related content. Required when specifying an options map.
@z

@x
namedSlices
: (`slice`) The keywords to search for, expressed as a slice of `KeyValues` using the [`keyVals`] function.
@y
namedSlices
: (`slice`) The keywords to search for, expressed as a slice of `KeyValues` using the [`keyVals`] function.
@z

@x
[`keyVals`]: /functions/collections/keyvals/
@y
[`keyVals`]: /functions/collections/keyvals/
@z

@x
fragments
: (`slice`) A list of special keywords that is used for indices configured as type "fragments". This will match the [fragment] identifiers of the documents.
@y
fragments
: (`slice`) A list of special keywords that is used for indices configured as type "fragments". This will match the [fragment] identifiers of the documents.
@z

@x
A contrived example using all of the above:
@y
A contrived example using all of the above:
@z

@x
```go-html-template
{{ $page := . }}
{{ $opts := dict
  "indices" (slice "tags" "keywords")
  "document" $page
  "namedSlices" (slice (keyVals "tags" "hugo" "rocks") (keyVals "date" $page.Date))
  "fragments" (slice "heading-1" "heading-2")
}}
```
@y
```go-html-template
{{ $page := . }}
{{ $opts := dict
  "indices" (slice "tags" "keywords")
  "document" $page
  "namedSlices" (slice (keyVals "tags" "hugo" "rocks") (keyVals "date" $page.Date))
  "fragments" (slice "heading-1" "heading-2")
}}
```
@z

@x
[details]: /content-management/related/
[fragment]: /getting-started/glossary/#fragment
[related content configuration]: /content-management/related/
@y
[details]: /content-management/related/
[fragment]: /getting-started/glossary/#fragment
[related content configuration]: /content-management/related/
@z
