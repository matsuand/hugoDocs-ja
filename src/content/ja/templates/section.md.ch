%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Section templates
description: Use section templates to list members of a section.
categories: [templates]
keywords: []
menu:
  docs:
    parent: templates
    weight: 80
weight: 80
toc: true
aliases: [/templates/sections/,/templates/section-templates/]
---
@y
---
title: Section templates
description: Use section templates to list members of a section.
categories: [templates]
keywords: []
menu:
  docs:
    parent: templates
    weight: 80
weight: 80
toc: true
aliases: [/templates/sections/,/templates/section-templates/]
---
@z

@x
## Add content and front matter to section templates
@y
## Add content and front matter to section templates
@z

@x
To effectively leverage section templates, you should first understand Hugo's [content organization](/content-management/organization/) and, specifically, the purpose of `_index.md` for adding content and front matter to section and other list pages.
@y
To effectively leverage section templates, you should first understand Hugo's [content organization](/content-management/organization/) and, specifically, the purpose of `_index.md` for adding content and front matter to section and other list pages.
@z

@x
## Section template lookup order
@y
## Section template lookup order
@z

@x
See [Template Lookup](/templates/lookup-order/).
@y
See [Template Lookup](/templates/lookup-order/).
@z

@x
## Example: creating a default section template
@y
## Example: creating a default section template
@z

@x
{{< code file=layouts/_default/section.html >}}
{{ define "main" }}
  <main>
    {{ .Content }}
@y
{{< code file=layouts/_default/section.html >}}
{{ define "main" }}
  <main>
    {{ .Content }}
@z

@x
    {{ $pages := where site.RegularPages "Type" "posts" }}
    {{ $paginator := .Paginate $pages }}
@y
    {{ $pages := where site.RegularPages "Type" "posts" }}
    {{ $paginator := .Paginate $pages }}
@z

@x
    {{ range $paginator.Pages }}
      <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
    {{ end }}
@y
    {{ range $paginator.Pages }}
      <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
    {{ end }}
@z

@x
    {{ template "_internal/pagination.html" . }}
  </main>
{{ end }}
{{< /code >}}
@y
    {{ template "_internal/pagination.html" . }}
  </main>
{{ end }}
{{< /code >}}
@z

@x
### Example: using `.Site.GetPage`
@y
### Example: using `.Site.GetPage`
@z

@x
The `.Site.GetPage` example that follows assumes the following project directory structure:
@y
The `.Site.GetPage` example that follows assumes the following project directory structure:
@z

@x
```txt
.
└── content
    ├── blog
    │   ├── _index.md   <-- title: My Hugo Blog
    │   ├── post-1.md
    │   ├── post-2.md
    │   └── post-3.md
    └── events
        ├── event-1.md
        └── event-2.md
```
@y
```txt
.
└── content
    ├── blog
    │   ├── _index.md   <-- title: My Hugo Blog
    │   ├── post-1.md
    │   ├── post-2.md
    │   └── post-3.md
    └── events
        ├── event-1.md
        └── event-2.md
```
@z

@x
`.Site.GetPage` will return `nil` if no `_index.md` page is found. Therefore, if `content/blog/_index.md` does not exist, the template will output the section name:
@y
`.Site.GetPage` will return `nil` if no `_index.md` page is found. Therefore, if `content/blog/_index.md` does not exist, the template will output the section name:
@z

@x
```go-html-template
<h1>{{ with .Site.GetPage "/blog" }}{{ .Title }}{{ end }}</h1>
```
@y
```go-html-template
<h1>{{ with .Site.GetPage "/blog" }}{{ .Title }}{{ end }}</h1>
```
@z

@x
Since `blog` has a section index page with front matter at `content/blog/_index.md`, the above code will return the following result:
@y
Since `blog` has a section index page with front matter at `content/blog/_index.md`, the above code will return the following result:
@z

@x
```html
<h1>My Hugo Blog</h1>
```
@y
```html
<h1>My Hugo Blog</h1>
```
@z

@x
If we try the same code with the `events` section, however, Hugo will default to the section title because there is no `content/events/_index.md` from which to pull content and front matter:
@y
If we try the same code with the `events` section, however, Hugo will default to the section title because there is no `content/events/_index.md` from which to pull content and front matter:
@z

@x
```go-html-template
<h1>{{ with .Site.GetPage "/events" }}{{ .Title }}{{ end }}</h1>
```
@y
```go-html-template
<h1>{{ with .Site.GetPage "/events" }}{{ .Title }}{{ end }}</h1>
```
@z

@x
Which then returns the following:
@y
Which then returns the following:
@z

@x
```html
<h1>Events</h1>
```
@y
```html
<h1>Events</h1>
```
@z

@x
[contentorg]: /content-management/organization/
[lookup]: /templates/lookup-order/
[`where`]: /functions/collections/where/
[sections]: /content-management/sections/
@y
[contentorg]: /content-management/organization/
[lookup]: /templates/lookup-order/
[`where`]: /functions/collections/where/
[sections]: /content-management/sections/
@z
