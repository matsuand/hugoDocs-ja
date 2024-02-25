%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.After
description: Slices an array to the items after the Nth item.
categories: []
keywords: []
action:
  aliases: [after]
  related:
    - functions/collections/First
    - functions/collections/Last
  returnType: any
  signatures: [collections.After INDEX COLLECTION]
aliases: [/functions/after]
---
@y
---
title: collections.After
description: Slices an array to the items after the Nth item.
categories: []
keywords: []
action:
  aliases: [after]
  related:
    - functions/collections/First
    - functions/collections/Last
  returnType: any
  signatures: [collections.After INDEX COLLECTION]
aliases: [/functions/after]
---
@z

@x
The following shows `after` being used in conjunction with the [`slice`]function:
@y
The following shows `after` being used in conjunction with the [`slice`]function:
@z

@x
```go-html-template
{{ $data := slice "one" "two" "three" "four" }}
<ul>
  {{ range after 2 $data }}
    <li>{{ . }}</li>
  {{ end }}
</ul>
```
@y
```go-html-template
{{ $data := slice "one" "two" "three" "four" }}
<ul>
  {{ range after 2 $data }}
    <li>{{ . }}</li>
  {{ end }}
</ul>
```
@z

@x
The template above is rendered to:
@y
The template above is rendered to:
@z

@x
```html
<ul>
  <li>three</li>
  <li>four</li>
</ul>
```
@y
```html
<ul>
  <li>three</li>
  <li>four</li>
</ul>
```
@z

@x
## Example of `after` with `first`: 2nd&ndash;4th most recent articles
@y
## Example of `after` with `first`: 2nd&ndash;4th most recent articles
@z

@x
You can use `after` in combination with the [`first`] function and Hugo's [powerful sorting methods][lists]. Let's assume you have a list page at `example.com/articles`. You have 10 articles, but you want your templating for the [list/section page] to show only two rows:
@y
You can use `after` in combination with the [`first`] function and Hugo's [powerful sorting methods][lists]. Let's assume you have a list page at `example.com/articles`. You have 10 articles, but you want your templating for the [list/section page] to show only two rows:
@z

@x
1. The top row is titled "Featured" and shows only the most recently published article (i.e. by `publishdate` in the content files' front matter).
2. The second row is titled "Recent Articles" and shows only the 2nd- to 4th-most recently published articles.
@y
1. The top row is titled "Featured" and shows only the most recently published article (i.e. by `publishdate` in the content files' front matter).
2. The second row is titled "Recent Articles" and shows only the 2nd- to 4th-most recently published articles.
@z

@x
{{< code file=layouts/section/articles.html >}}
{{ define "main" }}
  <section class="row featured-article">
    <h2>Featured Article</h2>
    {{ range first 1 .Pages.ByPublishDate.Reverse }}
    <header>
      <h3><a href="{{ .RelPermalink }}">{{ .Title }}</a></h3>
    </header>
    <p>{{ .Description }}</p>
  {{ end }}
  </section>
  <div class="row recent-articles">
    <h2>Recent Articles</h2>
    {{ range first 3 (after 1 .Pages.ByPublishDate.Reverse) }}
      <section class="recent-article">
        <header>
          <h3><a href="{{ .RelPermalink }}">{{ .Title }}</a></h3>
        </header>
        <p>{{ .Description }}</p>
      </section>
    {{ end }}
  </div>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/section/articles.html >}}
{{ define "main" }}
  <section class="row featured-article">
    <h2>Featured Article</h2>
    {{ range first 1 .Pages.ByPublishDate.Reverse }}
    <header>
      <h3><a href="{{ .RelPermalink }}">{{ .Title }}</a></h3>
    </header>
    <p>{{ .Description }}</p>
  {{ end }}
  </section>
  <div class="row recent-articles">
    <h2>Recent Articles</h2>
    {{ range first 3 (after 1 .Pages.ByPublishDate.Reverse) }}
      <section class="recent-article">
        <header>
          <h3><a href="{{ .RelPermalink }}">{{ .Title }}</a></h3>
        </header>
        <p>{{ .Description }}</p>
      </section>
    {{ end }}
  </div>
{{ end }}
{{< /code >}}
@z

@x
[`first`]: /functions/collections/first/
[list/section page]: /templates/section-templates/
[lists]: /templates/lists/#sort-content
[`slice`]: /functions/collections/slice/
@y
[`first`]: /functions/collections/first/
[list/section page]: /templates/section-templates/
[lists]: /templates/lists/#sort-content
[`slice`]: /functions/collections/slice/
@z
