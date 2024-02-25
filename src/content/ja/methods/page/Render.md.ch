%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Render
description: Renders the given template with the given page as context.
categories: []
keywords: []
action:
  related:
    - functions/partials/Include
    - functions/partials/IncludeCached
  returnType: template.HTML
  signatures: [PAGE.Render NAME]
aliases: [/functions/render]
---
@y
---
title: Render
description: Renders the given template with the given page as context.
categories: []
keywords: []
action:
  related:
    - functions/partials/Include
    - functions/partials/IncludeCached
  returnType: template.HTML
  signatures: [PAGE.Render NAME]
aliases: [/functions/render]
---
@z

@x
Typically used when ranging over a page collection, the `Render` method on a `Page` object renders the given template, passing the given page as context.
@y
Typically used when ranging over a page collection, the `Render` method on a `Page` object renders the given template, passing the given page as context.
@z

@x
```go-html-template
{{ range site.RegularPages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ .Render "summary" }}
{{ end }}
```
@y
```go-html-template
{{ range site.RegularPages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ .Render "summary" }}
{{ end }}
```
@z

@x
In the example above, note that the template ("summary") is identified by its file name without directory or extension.
@y
In the example above, note that the template ("summary") is identified by its file name without directory or extension.
@z

@x
Although similar to the [`partial`] function, there are key differences.
@y
Although similar to the [`partial`] function, there are key differences.
@z

@x
`Render` method|`partial` function|
:--|:--
The `Page` object is automatically passed to the given template. You cannot pass additional context.| You must specify the context, allowing you to pass a combination of objects, slices, maps, and scalars.
The path to the template is determined by the [content type].|You must specify the path to the template, relative to the layouts/partials directory.
@y
`Render` method|`partial` function|
:--|:--
The `Page` object is automatically passed to the given template. You cannot pass additional context.| You must specify the context, allowing you to pass a combination of objects, slices, maps, and scalars.
The path to the template is determined by the [content type].|You must specify the path to the template, relative to the layouts/partials directory.
@z

@x
Consider this layout structure:
@y
Consider this layout structure:
@z

@x
```text
layouts/
├── _default/
│   ├── baseof.html
│   ├── home.html
│   ├── li.html      <-- used for other content types
│   ├── list.html
│   ├── single.html
│   └── summary.html
└── books/
    ├── li.html      <-- used when content type is "books"
    └── summary.html
```
@y
```text
layouts/
├── _default/
│   ├── baseof.html
│   ├── home.html
│   ├── li.html      <-- used for other content types
│   ├── list.html
│   ├── single.html
│   └── summary.html
└── books/
    ├── li.html      <-- used when content type is "books"
    └── summary.html
```
@z

@x
And this template:
@y
And this template:
@z

@x
```go-html-template
<ul>
  {{ range site.RegularPages.ByDate }}
    {{ .Render "li" }}
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range site.RegularPages.ByDate }}
    {{ .Render "li" }}
  {{ end }}
</ul>
```
@z

@x
When rendering content of type "books" the `Render` method calls:
@y
When rendering content of type "books" the `Render` method calls:
@z

@x
```text
layouts/books/li.html
```
@y
```text
layouts/books/li.html
```
@z

@x
For all other content types the `Render` methods calls:
@y
For all other content types the `Render` methods calls:
@z

@x
```text
layouts/_default/li.html
```
@y
```text
layouts/_default/li.html
```
@z

@x
See [content views] for more examples.
@y
See [content views] for more examples.
@z

@x
[content views]: /templates/views/
[`partial`]: /functions/partials/include/
[content type]: /getting-started/glossary/#content-type
@y
[content views]: /templates/views/
[`partial`]: /functions/partials/include/
[content type]: /getting-started/glossary/#content-type
@z
