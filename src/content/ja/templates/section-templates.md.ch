%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Section page templates
linkTitle: Section templates
description: Templates used for section pages are **lists** and therefore have all the variables and methods available to list pages.
categories: [templates]
keywords: [lists,sections,templates]
menu:
  docs:
    parent: templates
    weight: 80
weight: 80
toc: true
aliases: [/templates/sections/]
---
@y
---
title: セクションページテンプレート
linkTitle: セクションテンプレート
description: Templates used for section pages are **lists** and therefore have all the variables and methods available to list pages.
categories: [templates]
keywords: [lists,sections,templates]
menu:
  docs:
    parent: templates
    weight: 80
weight: 80
toc: true
aliases: [/templates/sections/]
---
@z

@x
## Add content and front matter to section templates
@y
## Add content and front matter to section templates
@z

@x
To effectively leverage section page templates, you should first understand Hugo's [content organization](/content-management/organization/) and, specifically, the purpose of `_index.md` for adding content and front matter to section and other list pages.
@y
To effectively leverage section page templates, you should first understand Hugo's [content organization](/content-management/organization/) and, specifically, the purpose of `_index.md` for adding content and front matter to section and other list pages.
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
## Page kinds
@y
## Page kinds
@z

@x
Every `Page` in Hugo has a `.Kind` attribute.
@y
Every `Page` in Hugo has a `.Kind` attribute.
@z

@x
{{% include "content-management/_common/page-kinds.md" %}}
@y
{{% include "content-management/_common/page-kinds.md" %}}
@z

@x
## `.Site.GetPage` with sections
@y
## `.Site.GetPage` with sections
@z

@x
`Kind` can easily be combined with the [`where`] function in your templates to create kind-specific lists of content. This method is ideal for creating lists, but there are times where you may want to fetch just the index page of a single section via the section's path.
@y
`Kind` can easily be combined with the [`where`] function in your templates to create kind-specific lists of content. This method is ideal for creating lists, but there are times where you may want to fetch just the index page of a single section via the section's path.
@z

@x
The [`.GetPage` function][getpage] looks up an index page of a given `Kind` and `path`.
@y
The [`.GetPage` function][getpage] looks up an index page of a given `Kind` and `path`.
@z

@x
You can call `.Site.GetPage` with two arguments: `kind` (one of the valid values
of `Kind` from above) and `kind value`.
@y
You can call `.Site.GetPage` with two arguments: `kind` (one of the valid values
of `Kind` from above) and `kind value`.
@z

@x
Examples:
@y
Examples:
@z

@x
- `{{ .Site.GetPage "section" "posts" }}`
- `{{ .Site.GetPage "page" "search" }}`
@y
- `{{ .Site.GetPage "section" "posts" }}`
- `{{ .Site.GetPage "page" "search" }}`
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
      <ul class="contents">
        {{ range .Paginator.Pages }}
          <li>{{ .Title }}
            <div>
              {{ partial "summary.html" . }}
            </div>
          </li>
        {{ end }}
      </ul>
    {{ partial "pagination.html" . }}
  </main>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/section.html >}}
{{ define "main" }}
  <main>
    {{ .Content }}
      <ul class="contents">
        {{ range .Paginator.Pages }}
          <li>{{ .Title }}
            <div>
              {{ partial "summary.html" . }}
            </div>
          </li>
        {{ end }}
      </ul>
    {{ partial "pagination.html" . }}
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
    │   ├── _index.md # "title: My Hugo Blog" in the front matter
    │   ├── post-1.md
    │   ├── post-2.md
    │   └── post-3.md
    └── events #Note there is no _index.md file in "events"
        ├── event-1.md
        └── event-2.md
```
@y
```txt
.
└── content
    ├── blog
    │   ├── _index.md # "title: My Hugo Blog" in the front matter
    │   ├── post-1.md
    │   ├── post-2.md
    │   └── post-3.md
    └── events #Note there is no _index.md file in "events"
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
<h1>{{ with .Site.GetPage "section" "blog" }}{{ .Title }}{{ end }}</h1>
```
@y
```go-html-template
<h1>{{ with .Site.GetPage "section" "blog" }}{{ .Title }}{{ end }}</h1>
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
<h1>{{ with .Site.GetPage "section" "events" }}{{ .Title }}{{ end }}</h1>
```
@y
```go-html-template
<h1>{{ with .Site.GetPage "section" "events" }}{{ .Title }}{{ end }}</h1>
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
[getpage]: /methods/page/getpage/
[lists]: /templates/lists/
[lookup]: /templates/lookup-order/
[`where`]: /functions/collections/where/
[sections]: /content-management/sections/
@y
[contentorg]: /content-management/organization/
[getpage]: /methods/page/getpage/
[lists]: /templates/lists/
[lookup]: /templates/lookup-order/
[`where`]: /functions/collections/where/
[sections]: /content-management/sections/
@z
