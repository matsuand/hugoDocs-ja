%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: urls.URLize
description: Returns the given string, sanitized for usage in a URL.
categories: []
keywords: []
action:
  aliases: [urlize]
  related:
    - functions/urls/Anchorize
  returnType: string
  signatures: [urls.URLize INPUT]
aliases: [/functions/urlize]
---
@y
---
title: urls.URLize
description: Returns the given string, sanitized for usage in a URL.
categories: []
keywords: []
action:
  aliases: [urlize]
  related:
    - functions/urls/Anchorize
  returnType: string
  signatures: [urls.URLize INPUT]
aliases: [/functions/urlize]
---
@z

@x
{{% include "/functions/urls/_common/anchorize-vs-urlize.md" %}}
@y
{{% include "/functions/urls/_common/anchorize-vs-urlize.md" %}}
@z

@x
## Example
@y
## Example
@z

@x
Use the `urlize` function to create a link to a [term] page.
@y
Use the `urlize` function to create a link to a [term] page.
@z

@x
Consider this site configuration:
@y
Consider this site configuration:
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
And this front matter:
@y
And this front matter:
@z

@x
{{< code-toggle file=content/books/les-miserables.md fm=true >}}
title = 'Les Misérables'
authors = ['Victor Hugo']
{{< /code-toggle >}}
@y
{{< code-toggle file=content/books/les-miserables.md fm=true >}}
title = 'Les Misérables'
authors = ['Victor Hugo']
{{< /code-toggle >}}
@z

@x
The published site will have this structure:
@y
The published site will have this structure:
@z

@x
```text
public/
├── authors/
│   ├── victor-hugo/
│   │   └── index.html
│   └── index.html
├── books/
│   ├── les-miserables/
│   │   └── index.html
│   └── index.html
└── index.html
```
@y
```text
public/
├── authors/
│   ├── victor-hugo/
│   │   └── index.html
│   └── index.html
├── books/
│   ├── les-miserables/
│   │   └── index.html
│   └── index.html
└── index.html
```
@z

@x
To create a link to the term page:
@y
To create a link to the term page:
@z

@x
```go-html-template
{{ $taxonomy := "authors" }}
{{ $term := "Victor Hugo" }}
{{ with index .Site.Taxonomies $taxonomy (urlize $term) }}
  <a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a>
{{ end }}
```
@y
```go-html-template
{{ $taxonomy := "authors" }}
{{ $term := "Victor Hugo" }}
{{ with index .Site.Taxonomies $taxonomy (urlize $term) }}
  <a href="{{ .Page.RelPermalink }}">{{ .Page.LinkTitle }}</a>
{{ end }}
```
@z

@x
To generate a list of term pages associated with a given content page, use the [`GetTerms`] method on a `Page` object.
@y
To generate a list of term pages associated with a given content page, use the [`GetTerms`] method on a `Page` object.
@z

@x
[`GetTerms`]: /methods/page/getterms/
[term]: /getting-started/glossary/#term
@y
[`GetTerms`]: /methods/page/getterms/
[term]: /getting-started/glossary/#term
@z
