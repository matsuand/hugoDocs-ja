%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Template types
linkTitle: Template types
description: Create templates of different types to render your content, resources, and data.
categories: [templates]
keywords: []
menu:
  docs:
    parent: templates
    weight: 30
weight: 30
toc: true
aliases: ['/templates/lists/']
---
@y
---
title: Template types
linkTitle: Template types
description: Create templates of different types to render your content, resources, and data.
categories: [templates]
keywords: []
menu:
  docs:
    parent: templates
    weight: 30
weight: 30
toc: true
aliases: ['/templates/lists/']
---
@z

@x
[![structural diagram of a website](site-hierarchy.svg)](site-hierarchy.svg)
@y
[![structural diagram of a website](site-hierarchy.svg)](site-hierarchy.svg)
@z

@x
## Structure
@y
## Structure
@z

@x
Create templates in the layouts directory in the root of your project.
@y
Create templates in the layouts directory in the root of your project.
@z

@x
Although your site may not require each of these templates, the example below is typical for a site of medium complexity.
@y
Although your site may not require each of these templates, the example below is typical for a site of medium complexity.
@z

@x
```text
layouts/
├── _default/
│   ├── _markup/
│   │   ├── render-image.html   <-- render hook
│   │   └── render-link.html    <-- render hook
│   ├── baseof.html
│   ├── home.html
│   ├── section.html
│   ├── single.html
│   ├── taxonomy.html
│   └── term.html
├── articles/
│   └── card.html               <-- content view
├── partials/
│   ├── footer.html
│   └── header.html
└── shortcodes/
    ├── audio.html
    └── video.html
```
@y
```text
layouts/
├── _default/
│   ├── _markup/
│   │   ├── render-image.html   <-- render hook
│   │   └── render-link.html    <-- render hook
│   ├── baseof.html
│   ├── home.html
│   ├── section.html
│   ├── single.html
│   ├── taxonomy.html
│   └── term.html
├── articles/
│   └── card.html               <-- content view
├── partials/
│   ├── footer.html
│   └── header.html
└── shortcodes/
    ├── audio.html
    └── video.html
```
@z

@x
Hugo's [template lookup order] determines the template path, allowing you to create unique templates for any page.
@y
Hugo's [template lookup order] determines the template path, allowing you to create unique templates for any page.
@z

@x
[template lookup order]: /templates/lookup-order/
@y
[template lookup order]: /templates/lookup-order/
@z

@x
{{% note %}}
You must have thorough understanding of the [template lookup order] when creating templates. Template selection is based on template type, page kind, content type, section, language, and output format.
@y
{{% note %}}
You must have thorough understanding of the [template lookup order] when creating templates. Template selection is based on template type, page kind, content type, section, language, and output format.
@z

@x
[template lookup order]: /templates/lookup-order/
{{% /note %}}
@y
[template lookup order]: /templates/lookup-order/
{{% /note %}}
@z

@x
The purpose of each template type is described below.
@y
The purpose of each template type is described below.
@z

@x
## Base
@y
## Base
@z

@x
Base templates reduce duplicate code by wrapping other templates within a shell.
@y
Base templates reduce duplicate code by wrapping other templates within a shell.
@z

@x
For example, the base template below calls the [partial] function to include partial templates for the `head`, `header`, and `footer` elements of each page, and it uses the [block] function to include `home`, `single`, `section`, `taxonomy`, and `term` templates within the `main` element of each page.
@y
For example, the base template below calls the [partial] function to include partial templates for the `head`, `header`, and `footer` elements of each page, and it uses the [block] function to include `home`, `single`, `section`, `taxonomy`, and `term` templates within the `main` element of each page.
@z

@x
[block]: /functions/go-template/block/
[partial]: /functions/partials/include/
@y
[block]: /functions/go-template/block/
[partial]: /functions/partials/include/
@z

@x
{{< code file=layouts/_default/baseof.html >}}
<!DOCTYPE html>
<html lang="{{ or site.Language.LanguageCode }}" dir="{{ or site.Language.LanguageDirection `ltr` }}">
<head>
  {{ partial "head.html" . }}
</head>
<body>
  <header>
    {{ partial "header.html" . }}
  </header>
  <main>
    {{ block "main" . }}{{ end }}
  </main>
  <footer>
    {{ partial "footer.html" . }}
  </footer>
</body>
</html>
{{< /code >}}
@y
{{< code file=layouts/_default/baseof.html >}}
<!DOCTYPE html>
<html lang="{{ or site.Language.LanguageCode }}" dir="{{ or site.Language.LanguageDirection `ltr` }}">
<head>
  {{ partial "head.html" . }}
</head>
<body>
  <header>
    {{ partial "header.html" . }}
  </header>
  <main>
    {{ block "main" . }}{{ end }}
  </main>
  <footer>
    {{ partial "footer.html" . }}
  </footer>
</body>
</html>
{{< /code >}}
@z

@x
Learn more about [base templates](/templates/base/).
@y
Learn more about [base templates](/templates/base/).
@z

@x
## Home
@y
## Home
@z

@x
A home template renders your site's home page. For a single page site this is the only required template.
@y
A home template renders your site's home page. For a single page site this is the only required template.
@z

@x
For example, the home template below inherits the site's shell from the base template, and renders the home page content with a list of pages.
@y
For example, the home template below inherits the site's shell from the base template, and renders the home page content with a list of pages.
@z

@x
{{< code file=layouts/_default/home.html >}}
{{ define "main" }}
  {{ .Content }}
  {{ range site.RegularPages }}
    <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ end }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/home.html >}}
{{ define "main" }}
  {{ .Content }}
  {{ range site.RegularPages }}
    <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ end }}
{{ end }}
{{< /code >}}
@z

@x
{{% include "templates/_common/filter-sort-group.md" %}}
@y
{{% include "templates/_common/filter-sort-group.md" %}}
@z

@x
Learn more about [home templates](/templates/home/).
@y
Learn more about [home templates](/templates/home/).
@z

@x
## Single
@y
## Single
@z

@x
A single template renders a single page.
@y
A single template renders a single page.
@z

@x
For example, the single template below inherits the site's shell from the base template, and renders the title and content of each page.
@y
For example, the single template below inherits the site's shell from the base template, and renders the title and content of each page.
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
Learn more about [single templates](/templates/single/).
@y
Learn more about [single templates](/templates/single/).
@z

@x
## Section
@y
## Section
@z

@x
A section template typically renders a list of pages within a section.
@y
A section template typically renders a list of pages within a section.
@z

@x
For example, the section template below inherits the site's shell from the base template, and renders a list of pages in the current section.
@y
For example, the section template below inherits the site's shell from the base template, and renders a list of pages in the current section.
@z

@x
{{< code file=layouts/_default/section.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
  {{ range .Pages }}
    <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ end }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/section.html >}}
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
{{% include "templates/_common/filter-sort-group.md" %}}
@y
{{% include "templates/_common/filter-sort-group.md" %}}
@z

@x
Learn more about [section templates](/templates/section/).
@y
Learn more about [section templates](/templates/section/).
@z

@x
## Taxonomy
@y
## Taxonomy
@z

@x
A taxonomy template renders a list of terms in a [taxonomy].
@y
A taxonomy template renders a list of terms in a [taxonomy].
@z

@x
[taxonomy]: /getting-started/glossary/#taxonomy
@y
[taxonomy]: /getting-started/glossary/#taxonomy
@z

@x
For example, the taxonomy template below inherits the site's shell from the base template, and renders a list of terms in the current taxonomy.
@y
For example, the taxonomy template below inherits the site's shell from the base template, and renders a list of terms in the current taxonomy.
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
{{% include "templates/_common/filter-sort-group.md" %}}
@y
{{% include "templates/_common/filter-sort-group.md" %}}
@z

@x
Learn more about [taxonomy templates](/templates/taxonomy/).
@y
Learn more about [taxonomy templates](/templates/taxonomy/).
@z

@x
## Term
@y
## Term
@z

@x
A term template renders a list of pages associated with a [term].
@y
A term template renders a list of pages associated with a [term].
@z

@x
[term]: /getting-started/glossary/#term
@y
[term]: /getting-started/glossary/#term
@z

@x
For example, the term template below inherits the site's shell from the base template, and renders a list of pages associated with the current term.
@y
For example, the term template below inherits the site's shell from the base template, and renders a list of pages associated with the current term.
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
{{% include "templates/_common/filter-sort-group.md" %}}
@y
{{% include "templates/_common/filter-sort-group.md" %}}
@z

@x
Learn more about [term templates](/templates/term/).
@y
Learn more about [term templates](/templates/term/).
@z

@x
## Partial
@y
## Partial
@z

@x
A partial template is typically used to render a component of your site, though you may also create partial templates that return values.
@y
A partial template is typically used to render a component of your site, though you may also create partial templates that return values.
@z

@x
{{% note %}}
Unlike other template types, you cannot create partial templates to target a particular page kind, content type, section, language, or output format. Partial templates do not follow Hugo's [template lookup order].
@y
{{% note %}}
Unlike other template types, you cannot create partial templates to target a particular page kind, content type, section, language, or output format. Partial templates do not follow Hugo's [template lookup order].
@z

@x
[template lookup order]: /templates/lookup-order/
{{% /note %}}
@y
[template lookup order]: /templates/lookup-order/
{{% /note %}}
@z

@x
For example, the partial template below renders copyright information.
@y
For example, the partial template below renders copyright information.
@z

@x
{{< code file=layouts/partials/footer.html >}}
<p>Copyright {{ now.Year }}. All rights reserved.</p>
{{< /code >}}
@y
{{< code file=layouts/partials/footer.html >}}
<p>Copyright {{ now.Year }}. All rights reserved.</p>
{{< /code >}}
@z

@x
Learn more about [partial templates](/templates/partial/).
@y
Learn more about [partial templates](/templates/partial/).
@z

@x
## Content view
@y
## Content view
@z

@x
A content view template is similar to a partial template, invoked by calling the [`Render`] method on a `Page` object. Unlike partial templates, content view templates:
@y
A content view template is similar to a partial template, invoked by calling the [`Render`] method on a `Page` object. Unlike partial templates, content view templates:
@z

@x
- Automatically inherit the context of the current page
- Follow a lookup order allowing you to target a given content type or section
@y
- Automatically inherit the context of the current page
- Follow a lookup order allowing you to target a given content type or section
@z

@x
[`Render`]: /methods/page/render/
@y
[`Render`]: /methods/page/render/
@z

@x
For example, the home template below inherits the site's shell from the base template, and renders a card component for each page within the "articles" section of your site.
@y
For example, the home template below inherits the site's shell from the base template, and renders a card component for each page within the "articles" section of your site.
@z

@x
{{< code file=layouts/_default/home.html >}}
{{ define "main" }}
  {{ .Content }}
  <ul>
    {{ range where site.RegularPages "Section" "articles" }}
      {{ .Render "card" }}
    {{ end }}
  </ul>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/home.html >}}
{{ define "main" }}
  {{ .Content }}
  <ul>
    {{ range where site.RegularPages "Section" "articles" }}
      {{ .Render "card" }}
    {{ end }}
  </ul>
{{ end }}
{{< /code >}}
@z

@x
{{< code file=layouts/articles/card.html >}}
<div class="card">
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ .Summary }}
</div>
{{< /code >}}
@y
{{< code file=layouts/articles/card.html >}}
<div class="card">
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ .Summary }}
</div>
{{< /code >}}
@z

@x
Learn more about [content view templates](/templates/content-view/).
@y
Learn more about [content view templates](/templates/content-view/).
@z

@x
## Render hook
@y
## Render hook
@z

@x
A render hook template overrides the conversion of Markdown to HTML.
@y
A render hook template overrides the conversion of Markdown to HTML.
@z

@x
For example, the render hook template below adds a `rel` attribute to external links.
@y
For example, the render hook template below adds a `rel` attribute to external links.
@z

@x
{{< code file=layouts/_default/_markup/render-link.html >}}
{{- $u := urls.Parse .Destination -}}
<a href="{{ .Destination | safeURL }}"
  {{- with .Title }} title="{{ . }}"{{ end -}}
  {{- if $u.IsAbs }} rel="external"{{ end -}}
>
  {{- with .Text | safeHTML }}{{ . }}{{ end -}}
</a>
{{- /* chomp trailing newline */ -}}
{{< /code >}}
@y
{{< code file=layouts/_default/_markup/render-link.html >}}
{{- $u := urls.Parse .Destination -}}
<a href="{{ .Destination | safeURL }}"
  {{- with .Title }} title="{{ . }}"{{ end -}}
  {{- if $u.IsAbs }} rel="external"{{ end -}}
>
  {{- with .Text | safeHTML }}{{ . }}{{ end -}}
</a>
{{- /* chomp trailing newline */ -}}
{{< /code >}}
@z

@x
Learn more about [render hook templates](/render-hooks/).
@y
Learn more about [render hook templates](/render-hooks/).
@z

@x
## Shortcode
@y
## Shortcode
@z

@x
A shortcode template is used to render a component of your site. Unlike partial templates, shortcode templates are called from content pages.
@y
A shortcode template is used to render a component of your site. Unlike partial templates, shortcode templates are called from content pages.
@z

@x
For example, the shortcode template below renders an audio element from a [global resource].
@y
For example, the shortcode template below renders an audio element from a [global resource].
@z

@x
[global resource]: /getting-started/glossary/#global-resource
@y
[global resource]: /getting-started/glossary/#global-resource
@z

@x
{{< code file=layouts/shortcodes/audio.html >}}
{{ with resources.Get (.Get "src") }}
  <audio controls preload="auto" src="{{ .RelPermalink }}"></audio>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/shortcodes/audio.html >}}
{{ with resources.Get (.Get "src") }}
  <audio controls preload="auto" src="{{ .RelPermalink }}"></audio>
{{ end }}
{{< /code >}}
@z

@x
Call the shortcode from your content page:
@y
Call the shortcode from your content page:
@z

@x
{{< code file=content/example.md >}}
{{</* audio src="audio/test.mp3" */>}}
{{< /code >}}
@y
{{< code file=content/example.md >}}
{{</* audio src="audio/test.mp3" */>}}
{{< /code >}}
@z

@x
Learn more about [shortcode templates](/templates/shortcode/).
@y
Learn more about [shortcode templates](/templates/shortcode/).
@z

@x
## Other
@y
## Other
@z

@x
Use other specialized templates to create:
@y
Use other specialized templates to create:
@z

@x
- [Sitemaps](/templates/sitemap)
- [RSS feeds](/templates/rss/)
- [404 error pages](/templates/404/)
- [robots.txt files](/templates/robots/)
@y
- [Sitemaps](/templates/sitemap)
- [RSS feeds](/templates/rss/)
- [404 error pages](/templates/404/)
- [robots.txt files](/templates/robots/)
@z
