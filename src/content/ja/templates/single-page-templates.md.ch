%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Single page templates
description: The primary view of content in Hugo is the single view. Hugo will render every Markdown file provided with a corresponding single template.
categories: [templates]
keywords: [page, templates]
menu:
  docs:
    parent: templates
    weight: 50
weight: 50
toc: true
aliases: [/layout/content/]
---
@y
---
title: シングルページテンプレート
description: The primary view of content in Hugo is the single view. Hugo will render every Markdown file provided with a corresponding single template.
categories: [templates]
keywords: [page, templates]
menu:
  docs:
    parent: templates
    weight: 50
weight: 50
toc: true
aliases: [/layout/content/]
---
@z

@x
## Single page template lookup order
@y
## Single page template lookup order
@z

@x
See [Template Lookup](/templates/lookup-order/).
@y
See [Template Lookup](/templates/lookup-order/).
@z

@x
## Example single page templates
@y
## Example single page templates
@z

@x
Content pages are of the type `page` and will therefore have all the [page variables][pagevars] and [site variables] available to use in their templates.
@y
Content pages are of the type `page` and will therefore have all the [page variables][pagevars] and [site variables] available to use in their templates.
@z

@x
### `posts/single.html`
@y
### `posts/single.html`
@z

@x
This single page template makes use of Hugo [base templates], the [`.Format` function] for dates, the [`.WordCount` page variable][pagevars], and ranges through the single content's specific [taxonomies][pagetaxonomy]. [`with`] is also used to check whether the taxonomies are set in the front matter.
@y
This single page template makes use of Hugo [base templates], the [`.Format` function] for dates, the [`.WordCount` page variable][pagevars], and ranges through the single content's specific [taxonomies][pagetaxonomy]. [`with`] is also used to check whether the taxonomies are set in the front matter.
@z

@x
{{< code file=layouts/posts/single.html >}}
{{ define "main" }}
  <section id="main">
    <h1 id="title">{{ .Title }}</h1>
    <div>
      <article id="content">
        {{ .Content }}
      </article>
    </div>
  </section>
  <aside id="meta">
    <div>
      <section>
        <h4 id="date"> {{ .Date.Format "Mon Jan 2, 2006" }} </h4>
        <h5 id="wordcount"> {{ .WordCount }} Words</h5>
      </section>
      {{ with .GetTerms "topics" }}
        <ul id="topics">
          {{ range . }}
            <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
          {{ end }}
        </ul>
      {{ end }}
      {{ with .GetTerms "tags" }}
        <ul id="tags">
          {{ range . }}
            <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
          {{ end }}
        </ul>
      {{ end }}
    </div>
    <div>
      {{ with .PrevInSection }}
        <a class="previous" href="{{ .RelPermalink }}"> {{ .LinkTitle }}</a>
      {{ end }}
      {{ with .NextInSection }}
        <a class="next" href="{{ .RelPermalink }}"> {{ .LinkTitle }}</a>
      {{ end }}
    </div>
  </aside>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/posts/single.html >}}
{{ define "main" }}
  <section id="main">
    <h1 id="title">{{ .Title }}</h1>
    <div>
      <article id="content">
        {{ .Content }}
      </article>
    </div>
  </section>
  <aside id="meta">
    <div>
      <section>
        <h4 id="date"> {{ .Date.Format "Mon Jan 2, 2006" }} </h4>
        <h5 id="wordcount"> {{ .WordCount }} Words</h5>
      </section>
      {{ with .GetTerms "topics" }}
        <ul id="topics">
          {{ range . }}
            <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
          {{ end }}
        </ul>
      {{ end }}
      {{ with .GetTerms "tags" }}
        <ul id="tags">
          {{ range . }}
            <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
          {{ end }}
        </ul>
      {{ end }}
    </div>
    <div>
      {{ with .PrevInSection }}
        <a class="previous" href="{{ .RelPermalink }}"> {{ .LinkTitle }}</a>
      {{ end }}
      {{ with .NextInSection }}
        <a class="next" href="{{ .RelPermalink }}"> {{ .LinkTitle }}</a>
      {{ end }}
    </div>
  </aside>
{{ end }}
{{< /code >}}
@z

@x
To easily generate new instances of a content type (e.g., new `.md` files in a section like `project/`) with preconfigured front matter, use [content archetypes][archetypes].
@y
To easily generate new instances of a content type (e.g., new `.md` files in a section like `project/`) with preconfigured front matter, use [content archetypes][archetypes].
@z

% snip links...
