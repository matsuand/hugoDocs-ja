%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Single templates
description: Create a single template to render a single page.
categories: [templates]
keywords: []
menu:
  docs:
    parent: templates
    weight: 70
weight: 70
toc: true
aliases: [/layout/content/,/templates/single-page-templates/]
---
@y
---
title: Single templates
description: Create a single template to render a single page.
categories: [templates]
keywords: []
menu:
  docs:
    parent: templates
    weight: 70
weight: 70
toc: true
aliases: [/layout/content/,/templates/single-page-templates/]
---
@z

@x
The single template below inherits the site's shell from the [base template].
@y
The single template below inherits the site's shell from the [base template].
@z

@x
[base template]: /templates/types/
@y
[base template]: /templates/types/
@z

@x
{{< code file=layouts/_default/single.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/single.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
{{ end }}
{{< /code >}}
@z

@x
Review the [template lookup order] to select a template path that provides the desired level of specificity.
@y
Review the [template lookup order] to select a template path that provides the desired level of specificity.
@z

@x
[template lookup order]: /templates/lookup-order/#single-templates
@y
[template lookup order]: /templates/lookup-order/#single-templates
@z

@x
The single template below inherits the site's shell from the base template, and renders the page title, creation date, content, and a list of associated terms in the "tags" taxonomy.
@y
The single template below inherits the site's shell from the base template, and renders the page title, creation date, content, and a list of associated terms in the "tags" taxonomy.
@z

@x
{{< code file=layouts/_default/single.html >}}
{{ define "main" }}
  <section>
    <h1>{{ .Title }}</h1>
    {{ with .Date }}
      {{ $dateMachine := . | time.Format "2006-01-02T15:04:05-07:00" }}
      {{ $dateHuman := . | time.Format ":date_long" }}
      <time datetime="{{ $dateMachine }}">{{ $dateHuman }}</time>
    {{ end }}
    <article>
      {{ .Content }}
    </article>
    <aside>
      {{ with .GetTerms "tags" }}
        <div>{{ (index . 0).Parent.LinkTitle }}</div>
        <ul>
          {{ range . }}
            <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
          {{ end }}
        </ul>
      {{ end }}
    </aside>
  </section>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/single.html >}}
{{ define "main" }}
  <section>
    <h1>{{ .Title }}</h1>
    {{ with .Date }}
      {{ $dateMachine := . | time.Format "2006-01-02T15:04:05-07:00" }}
      {{ $dateHuman := . | time.Format ":date_long" }}
      <time datetime="{{ $dateMachine }}">{{ $dateHuman }}</time>
    {{ end }}
    <article>
      {{ .Content }}
    </article>
    <aside>
      {{ with .GetTerms "tags" }}
        <div>{{ (index . 0).Parent.LinkTitle }}</div>
        <ul>
          {{ range . }}
            <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
          {{ end }}
        </ul>
      {{ end }}
    </aside>
  </section>
{{ end }}
{{< /code >}}
@z
