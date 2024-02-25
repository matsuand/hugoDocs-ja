%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Build options
description: Build options help define how Hugo must treat a given page when building the site.
categories: [content management,fundamentals]
keywords: [build,content,front matter, page resources]
menu:
  docs:
    parent: content-management
    weight: 70
weight: 70
toc: true
aliases: [/content/build-options/]
---
@y
---
title: ビルドオプション
description: Build options help define how Hugo must treat a given page when building the site.
categories: [content management,fundamentals]
keywords: [build,content,front matter, page resources]
menu:
  docs:
    parent: content-management
    weight: 70
weight: 70
toc: true
aliases: [/content/build-options/]
---
@z

@x
Build options are stored in a reserved front matter object named `build` with these defaults:
@y
Build options are stored in a reserved front matter object named `build` with these defaults:
@z

@x
{{< code-toggle file=content/example/index.md fm=true >}}
[build]
list = 'always'
publishResources = true
render = 'always'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/example/index.md fm=true >}}
[build]
list = 'always'
publishResources = true
render = 'always'
{{< /code-toggle >}}
@z

@x
list
: When to include the page within page collections. Specify one of:
@y
list
: When to include the page within page collections. Specify one of:
@z

@x
  - `always`
    : Include the page in _all_ page collections. For example, `site.RegularPages`, `.Pages`, etc. This is the default value.
@y
  - `always`
    : Include the page in _all_ page collections. For example, `site.RegularPages`, `.Pages`, etc. This is the default value.
@z

@x
  - `local`
    : Include the page in _local_ page collections. For example, `.RegularPages`, `.Pages`, etc. Use this option to create fully navigable but headless content sections.
@y
  - `local`
    : Include the page in _local_ page collections. For example, `.RegularPages`, `.Pages`, etc. Use this option to create fully navigable but headless content sections.
@z

@x
  - `never`
    : Do not include the page in _any_ page collection.
@y
  - `never`
    : Do not include the page in _any_ page collection.
@z

@x
publishResources
: Applicable to [page bundles], determines whether to publish the associated [page resources]. Specify one of:
@y
publishResources
: Applicable to [page bundles], determines whether to publish the associated [page resources]. Specify one of:
@z

@x
  - `true`
    : Always publish resources. This is the default value.
@y
  - `true`
    : Always publish resources. This is the default value.
@z

@x
  - `false`
    : Only publish a resource when invoking its [`Permalink`], [`RelPermalink`], or [`Publish`] method within a template.
@y
  - `false`
    : Only publish a resource when invoking its [`Permalink`], [`RelPermalink`], or [`Publish`] method within a template.
@z

@x
render
: When to render the page. Specify one of:
@y
render
: When to render the page. Specify one of:
@z

@x
  - `always`
    : Always render the page to disk. This is the default value.
@y
  - `always`
    : Always render the page to disk. This is the default value.
@z

@x
  - `link`
    : Do not render the page to disk, but assign `Permalink` and `RelPermalink` values.
@y
  - `link`
    : Do not render the page to disk, but assign `Permalink` and `RelPermalink` values.
@z

@x
  - `never`
    : Never render the page to disk, and exclude it from all page collections.
@y
  - `never`
    : Never render the page to disk, and exclude it from all page collections.
@z

% snip URLs...

@x
{{% note %}}
Any page, regardless of its build options, will always be available by using the [`.Page.GetPage`] or [`.Site.GetPage`] method.
@y
{{% note %}}
Any page, regardless of its build options, will always be available by using the [`.Page.GetPage`] or [`.Site.GetPage`] method.
@z

@x
[`.Page.GetPage`]: /methods/page/getpage/
[`.Site.GetPage`]: /methods/site/getpage/
{{% /note %}}
@y
[`.Page.GetPage`]: /methods/page/getpage/
[`.Site.GetPage`]: /methods/site/getpage/
{{% /note %}}
@z

@x
## Example -- headless page
@y
## Example -- headless page
@z

@x
Create a unpublished page whose content and resources can be included in other pages.
@y
Create a unpublished page whose content and resources can be included in other pages.
@z

@x
```text
content/
├── headless/
│   ├── a.jpg
│   ├── b.jpg
│   └── index.md  <-- leaf bundle
└── _index.md     <-- home page
```
@y
```text
content/
├── headless/
│   ├── a.jpg
│   ├── b.jpg
│   └── index.md  <-- leaf bundle
└── _index.md     <-- home page
```
@z

@x
Set the build options in front matter:
@y
Set the build options in front matter:
@z

@x
{{< code-toggle file=content/headless/index.md fm=true >}}
title = 'Headless page'
[build]
  list = 'never'
  publishResources = false
  render = 'never'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/headless/index.md fm=true >}}
title = 'Headless page'
[build]
  list = 'never'
  publishResources = false
  render = 'never'
{{< /code-toggle >}}
@z

@x
To include the content and images on the home page:
@y
To include the content and images on the home page:
@z

@x
{{< code file=layouts/_default/home.html  >}}
{{ with .Site.GetPage "/headless" }}
  {{ .Content }}
  {{ range .Resources.ByType "image" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/home.html  >}}
{{ with .Site.GetPage "/headless" }}
  {{ .Content }}
  {{ range .Resources.ByType "image" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
{{< /code >}}
@z

@x
The published site will have this structure:
@y
The published site will have this structure:
@z

@x
```text
public/
├── headless/
│   ├── a.jpg
│   └── b.jpg
└── index.html
```
@y
```text
public/
├── headless/
│   ├── a.jpg
│   └── b.jpg
└── index.html
```
@z

@x
In the example above, note that:
@y
In the example above, note that:
@z

@x
1. Hugo did not publish an HTML file for the page.
2. Despite setting `publishResources` to `false` in front matter, Hugo published the [page resources] because we invoked the [`RelPermalink`] method on each resource. This is the expected behavior.
@y
1. Hugo did not publish an HTML file for the page.
2. Despite setting `publishResources` to `false` in front matter, Hugo published the [page resources] because we invoked the [`RelPermalink`] method on each resource. This is the expected behavior.
@z

@x
## Example -- headless section
@y
## Example -- headless section
@z

@x
Create a unpublished section whose content and resources can be included in other pages.
@y
Create a unpublished section whose content and resources can be included in other pages.
@z

@x
[branch bundle]: /content-management/page-bundles/
@y
[branch bundle]: /content-management/page-bundles/
@z

@x
```text
content/
├── headless/
│   ├── note-1/
│   │   ├── a.jpg
│   │   ├── b.jpg
│   │   └── index.md  <-- leaf bundle
│   ├── note-2/
│   │   ├── c.jpg
│   │   ├── d.jpg
│   │   └── index.md  <-- leaf bundle
│   └── _index.md     <-- branch bundle
└── _index.md         <-- home page
```
@y
```text
content/
├── headless/
│   ├── note-1/
│   │   ├── a.jpg
│   │   ├── b.jpg
│   │   └── index.md  <-- leaf bundle
│   ├── note-2/
│   │   ├── c.jpg
│   │   ├── d.jpg
│   │   └── index.md  <-- leaf bundle
│   └── _index.md     <-- branch bundle
└── _index.md         <-- home page
```
@z

@x
Set the build options in front matter, using the `cascade` keyword to "cascade" the values down to descendant pages.
@y
Set the build options in front matter, using the `cascade` keyword to "cascade" the values down to descendant pages.
@z

@x
{{< code-toggle file=content/headless/_index.md fm=true >}}
title = 'Headless section'
[[cascade]]
[cascade.build]
  list = 'local'
  publishResources = false
  render = 'never'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/headless/_index.md fm=true >}}
title = 'Headless section'
[[cascade]]
[cascade.build]
  list = 'local'
  publishResources = false
  render = 'never'
{{< /code-toggle >}}
@z

@x
In the front matter above, note that we have set `list` to `local` to include the descendant pages in local page collections.
@y
In the front matter above, note that we have set `list` to `local` to include the descendant pages in local page collections.
@z

@x
To include the content and images on the home page:
@y
To include the content and images on the home page:
@z

@x
{{< code file=layouts/_default/home.html  >}}
{{ with .Site.GetPage "/headless" }}
  {{ range .Pages }}
    {{ .Content }}
    {{ range .Resources.ByType "image" }}
      <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
    {{ end }}
  {{ end }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/home.html  >}}
{{ with .Site.GetPage "/headless" }}
  {{ range .Pages }}
    {{ .Content }}
    {{ range .Resources.ByType "image" }}
      <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
    {{ end }}
  {{ end }}
{{ end }}
{{< /code >}}
@z

@x
The published site will have this structure:
@y
The published site will have this structure:
@z

@x
```text
public/
├── headless/
│   ├── note-1/
│   │   ├── a.jpg
│   │   └── b.jpg
│   └── note-2/
│       ├── c.jpg
│       └── d.jpg
└── index.html
```
@y
```text
public/
├── headless/
│   ├── note-1/
│   │   ├── a.jpg
│   │   └── b.jpg
│   └── note-2/
│       ├── c.jpg
│       └── d.jpg
└── index.html
```
@z

@x
In the example above, note that:
@y
In the example above, note that:
@z

@x
1. Hugo did not publish an HTML file for the page.
2. Despite setting `publishResources` to `false` in front matter, Hugo correctly published the [page resources] because we invoked the [`RelPermalink`] method on each resource. This is the expected behavior.
@y
1. Hugo did not publish an HTML file for the page.
2. Despite setting `publishResources` to `false` in front matter, Hugo correctly published the [page resources] because we invoked the [`RelPermalink`] method on each resource. This is the expected behavior.
@z

@x
## Example -- list without publishing
@y
## Example -- list without publishing
@z

@x
Publish a section page without publishing the descendant pages. For example, to create a glossary:
@y
Publish a section page without publishing the descendant pages. For example, to create a glossary:
@z

@x
```text
content/
├── glossary/
│   ├── _index.md
│   ├── bar.md
│   ├── baz.md
│   └── foo.md
└── _index.md
```
@y
```text
content/
├── glossary/
│   ├── _index.md
│   ├── bar.md
│   ├── baz.md
│   └── foo.md
└── _index.md
```
@z

@x
Set the build options in front matter, using the `cascade` keyword to "cascade" the values down to descendant pages.
@y
Set the build options in front matter, using the `cascade` keyword to "cascade" the values down to descendant pages.
@z

@x
{{< code-toggle file=content/glossary/_index.md fm=true >}}
title = 'Glossary'
[build]
render = 'always'
[[cascade]]
[cascade.build]
  list = 'local'
  publishResources = false
  render = 'never'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/glossary/_index.md fm=true >}}
title = 'Glossary'
[build]
render = 'always'
[[cascade]]
[cascade.build]
  list = 'local'
  publishResources = false
  render = 'never'
{{< /code-toggle >}}
@z

@x
To render the glossary:
@y
To render the glossary:
@z

@x
{{< code file=layouts/glossary/list.html  >}}
<dl>
  {{ range .Pages }}
    <dt>{{ .Title }}</dt>
    <dd>{{ .Content }}</dd>
  {{ end }}
</dl>
{{< /code >}}
@y
{{< code file=layouts/glossary/list.html  >}}
<dl>
  {{ range .Pages }}
    <dt>{{ .Title }}</dt>
    <dd>{{ .Content }}</dd>
  {{ end }}
</dl>
{{< /code >}}
@z

@x
The published site will have this structure:
@y
The published site will have this structure:
@z

@x
```text
public/
├── glossary/
│   └── index.html
└── index.html
```
@y
```text
public/
├── glossary/
│   └── index.html
└── index.html
```
@z

@x
## Example -- publish without listing
@y
## Example -- publish without listing
@z

@x
Publish a section's descendant pages without publishing the section page itself.
@y
Publish a section's descendant pages without publishing the section page itself.
@z

@x
```text
content/
├── books/
│   ├── _index.md
│   ├── book-1.md
│   └── book-2.md
└── _index.md
```
@y
```text
content/
├── books/
│   ├── _index.md
│   ├── book-1.md
│   └── book-2.md
└── _index.md
```
@z

@x
Set the build options in front matter:
@y
Set the build options in front matter:
@z

@x
{{< code-toggle file=content/books/_index.md fm=true >}}
title = 'Books'
[build]
render = 'never'
list = 'never'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/books/_index.md fm=true >}}
title = 'Books'
[build]
render = 'never'
list = 'never'
{{< /code-toggle >}}
@z

@x
The published site will have this structure:
@y
The published site will have this structure:
@z

@x
```html
public/
├── books/
│   ├── book-1/
│   │   └── index.html
│   └── book-2/
│       └── index.html
└── index.html
```
@y
```html
public/
├── books/
│   ├── book-1/
│   │   └── index.html
│   └── book-2/
│       └── index.html
└── index.html
```
@z

@x
## Example -- conditionally hide section
@y
## Example -- conditionally hide section
@z

@x
Consider this example. A documentation site has a team of contributors with access to 20 custom shortcodes. Each shortcode takes several arguments, and requires documentation for the contributors to reference when using them.
@y
Consider this example. A documentation site has a team of contributors with access to 20 custom shortcodes. Each shortcode takes several arguments, and requires documentation for the contributors to reference when using them.
@z

@x
Instead of external documentation for the shortcodes, include an "internal" section that is hidden when building the production site.
@y
Instead of external documentation for the shortcodes, include an "internal" section that is hidden when building the production site.
@z

@x
```text
content/
├── internal/
│   ├── shortcodes/
│   │   ├── _index.md
│   │   ├── shortcode-1.md
│   │   └── shortcode-2.md
│   └── _index.md
├── reference/
│   ├── _index.md
│   ├── reference-1.md
│   └── reference-2.md
├── tutorials/
│   ├── _index.md
│   ├── tutorial-1.md
│   └── tutorial-2.md
└── _index.md
```
@y
```text
content/
├── internal/
│   ├── shortcodes/
│   │   ├── _index.md
│   │   ├── shortcode-1.md
│   │   └── shortcode-2.md
│   └── _index.md
├── reference/
│   ├── _index.md
│   ├── reference-1.md
│   └── reference-2.md
├── tutorials/
│   ├── _index.md
│   ├── tutorial-1.md
│   └── tutorial-2.md
└── _index.md
```
@z

@x
Set the build options in front matter, using the `cascade` keyword to "cascade" the values down to descendant pages, and use the `target` keyword to target the production environment.
@y
Set the build options in front matter, using the `cascade` keyword to "cascade" the values down to descendant pages, and use the `target` keyword to target the production environment.
@z

@x
{{< code-toggle file=content/internal/_index.md >}}
title = 'Internal'
[[cascade]]
[cascade.build]
render = 'never'
list = 'never'
[cascade._target]
environment = 'production'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/internal/_index.md >}}
title = 'Internal'
[[cascade]]
[cascade.build]
render = 'never'
list = 'never'
[cascade._target]
environment = 'production'
{{< /code-toggle >}}
@z

@x
The production site will have this structure:
@y
The production site will have this structure:
@z

@x
```html
public/
├── reference/
│   ├── reference-1/
│   │   └── index.html
│   ├── reference-2/
│   │   └── index.html
│   └── index.html
├── tutorials/
│   ├── tutorial-1/
│   │   └── index.html
│   ├── tutorial-2/
│   │   └── index.html
│   └── index.html
└── index.html
```
@y
```html
public/
├── reference/
│   ├── reference-1/
│   │   └── index.html
│   ├── reference-2/
│   │   └── index.html
│   └── index.html
├── tutorials/
│   ├── tutorial-1/
│   │   └── index.html
│   ├── tutorial-2/
│   │   └── index.html
│   └── index.html
└── index.html
```
@z
