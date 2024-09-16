%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Pagination
description: Split a list page into two or more subsets.
categories: [templates]
keywords: []
@y
title: ページネーション
description: Split a list page into two or more subsets.
categories: [templates]
keywords: []
@z

@x
Displaying a large page collection on a list page is not user-friendly:
@y
Displaying a large page collection on a list page is not user-friendly:
@z

@x
- A massive list can be intimidating and difficult to navigate. Users may get lost in the sheer volume of information.
- Large pages take longer to load, which can frustrate users and lead to them abandoning the site.
- Without any filtering or organization, finding a specific item becomes a tedious scrolling exercise.
@y
- A massive list can be intimidating and difficult to navigate. Users may get lost in the sheer volume of information.
- Large pages take longer to load, which can frustrate users and lead to them abandoning the site.
- Without any filtering or organization, finding a specific item becomes a tedious scrolling exercise.
@z

@x
Improve usability by paginating `home`, `section`, `taxonomy`, and `term` pages.
@y
Improve usability by paginating `home`, `section`, `taxonomy`, and `term` pages.
@z

@x
{{% note %}}
The most common templating mistake related to pagination is invoking pagination more than once for a given list page. See the [caching](#caching) section below.
{{% /note %}}
@y
{{% note %}}
The most common templating mistake related to pagination is invoking pagination more than once for a given list page. See the [caching](#caching) section below.
{{% /note %}}
@z

@x
## Terminology
@y
## Terminology
@z

@x
paginate
: To split a [list page] into two or more subsets.
@y
paginate
: To split a [list page] into two or more subsets.
@z

@x
pagination
: The process of paginating a list page.
@y
pagination
: The process of paginating a list page.
@z

@x
pager
: Created during pagination, a pager contains a subset of a list page and navigation links to other pagers.
@y
pager
: Created during pagination, a pager contains a subset of a list page and navigation links to other pagers.
@z

@x
paginator
: A collection of pagers.
@y
paginator
: A collection of pagers.
@z

@x
[list page]: /getting-started/glossary/#list-page
@y
[list page]: /getting-started/glossary/#list-page
@z

@x
## Configuration
@y
## Configuration
@z

@x
Control pagination behavior in your site configuration. These are the default settings:
@y
Control pagination behavior in your site configuration. These are the default settings:
@z

@x
{{< code-toggle file=hugo config=pagination />}}
@y
{{< code-toggle file=hugo config=pagination />}}
@z

@x
disableAliases
: (`bool`) Whether to disable alias generation for the first pager. Default is `false`.
@y
disableAliases
: (`bool`) Whether to disable alias generation for the first pager. Default is `false`.
@z

@x
pagerSize
: (`int`) The number of pages per pager. Default is `10`.
@y
pagerSize
: (`int`) The number of pages per pager. Default is `10`.
@z

@x
path
: (`string`) The segment of each pager URL indicating that the target page is a pager. Default is `page`.
@y
path
: (`string`) The segment of each pager URL indicating that the target page is a pager. Default is `page`.
@z

@x
With multilingual sites you can define the pagination behavior for each language:
@y
With multilingual sites you can define the pagination behavior for each language:
@z

@x
{{< code-toggle file=hugo >}}
[languages.en]
contentDir = 'content/en'
languageCode = 'en-US'
languageDirection = 'ltr'
languageName = 'English'
weight = 1
[languages.en.pagination]
disableAliases = true
pagerSize = 10
path = 'page'
[languages.de]
contentDir = 'content/de'
languageCode = 'de-DE'
languageDirection = 'ltr'
languageName = 'Deutsch'
weight = 2
[languages.de.pagination]
disableAliases = true
pagerSize = 20
path = 'blatt'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[languages.en]
contentDir = 'content/en'
languageCode = 'en-US'
languageDirection = 'ltr'
languageName = 'English'
weight = 1
[languages.en.pagination]
disableAliases = true
pagerSize = 10
path = 'page'
[languages.de]
contentDir = 'content/de'
languageCode = 'de-DE'
languageDirection = 'ltr'
languageName = 'Deutsch'
weight = 2
[languages.de.pagination]
disableAliases = true
pagerSize = 20
path = 'blatt'
{{< /code-toggle >}}
@z

@x
## Methods
@y
## Methods
@z

@x
To paginate a `home`, `section`, `taxonomy`, or `term` page, invoke either of these methods on the `Page` object in the corresponding template:
@y
To paginate a `home`, `section`, `taxonomy`, or `term` page, invoke either of these methods on the `Page` object in the corresponding template:
@z

@x
- [`Paginate`]
- [`Paginator`]
@y
- [`Paginate`]
- [`Paginator`]
@z

@x
The `Paginate` method is more flexible, allowing you to:
@y
The `Paginate` method is more flexible, allowing you to:
@z

@x
- Paginate any page collection
- Filter, sort, and group the page collection
- Override the number of pages per pager as defined in your site configuration
@y
- Paginate any page collection
- Filter, sort, and group the page collection
- Override the number of pages per pager as defined in your site configuration
@z

@x
By comparison, the `Paginator` method paginates the page collection passed into the template, and you cannot override the number of pages per pager.
@y
By comparison, the `Paginator` method paginates the page collection passed into the template, and you cannot override the number of pages per pager.
@z

@x
[`Paginate`]: /methods/page/paginate/
[`Paginator`]: /methods/page/paginator/
@y
[`Paginate`]: /methods/page/paginate/
[`Paginator`]: /methods/page/paginator/
@z

@x
## Examples
@y
## Examples
@z

@x
To paginate a list page using the `Paginate` method:
@y
To paginate a list page using the `Paginate` method:
@z

@x
```go-html-template
{{ $pages := where site.RegularPages "Type" "posts" }}
{{ $paginator := .Paginate $pages.ByTitle 7 }}
@y
```go-html-template
{{ $pages := where site.RegularPages "Type" "posts" }}
{{ $paginator := .Paginate $pages.ByTitle 7 }}
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
```
@y
{{ template "_internal/pagination.html" . }}
```
@z

@x
In the example above, we:
@y
In the example above, we:
@z

@x
1. Build a page collection
2. Sort the page collection by title
3. Paginate the page collection, with 7 pages per pager
4. Range over the paginated page collection, rendering a link to each page
5. Call the embedded pagination template to create navigation links between pagers
@y
1. Build a page collection
2. Sort the page collection by title
3. Paginate the page collection, with 7 pages per pager
4. Range over the paginated page collection, rendering a link to each page
5. Call the embedded pagination template to create navigation links between pagers
@z

@x
To paginate a list page using the `Paginator` method:
@y
To paginate a list page using the `Paginator` method:
@z

@x
```go-html-template
{{ range .Paginator.Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
@y
```go-html-template
{{ range .Paginator.Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
@z

@x
{{ template "_internal/pagination.html" . }}
```
@y
{{ template "_internal/pagination.html" . }}
```
@z

@x
In the example above, we:
@y
In the example above, we:
@z

@x
1. Paginate the page collection passed into the template, with the default number of pages per pager
2. Range over the paginated page collection, rendering a link to each page
3. Call the embedded pagination template to create navigation links between pagers
@y
1. Paginate the page collection passed into the template, with the default number of pages per pager
2. Range over the paginated page collection, rendering a link to each page
3. Call the embedded pagination template to create navigation links between pagers
@z

@x
## Caching
@y
## Caching
@z

@x
{{% note %}}
The most common templating mistake related to pagination is invoking pagination more than once for a given list page.
{{% /note %}}
@y
{{% note %}}
The most common templating mistake related to pagination is invoking pagination more than once for a given list page.
{{% /note %}}
@z

@x
Regardless of pagination method, the initial invocation is cached and cannot be changed. If you invoke pagination more than once for a given list page, subsequent invocations use the cached result. This means that subsequent invocations will not behave as written.
@y
Regardless of pagination method, the initial invocation is cached and cannot be changed. If you invoke pagination more than once for a given list page, subsequent invocations use the cached result. This means that subsequent invocations will not behave as written.
@z

@x
When paginating conditionally, do not use the `compare.Conditional` function due to its eager evaluation of arguments. Use an `if-else` construct instead.
@y
When paginating conditionally, do not use the `compare.Conditional` function due to its eager evaluation of arguments. Use an `if-else` construct instead.
@z

@x
[`compare.Conditional`]: /functions/compare/conditional/
@y
[`compare.Conditional`]: /functions/compare/conditional/
@z

@x
## Grouping
@y
## Grouping
@z

@x
Use pagination with any of the [grouping methods]. For example:
@y
Use pagination with any of the [grouping methods]. For example:
@z

@x
[grouping methods]: /quick-reference/page-collections/#group
@y
[grouping methods]: /quick-reference/page-collections/#group
@z

@x
```go-html-template
{{ $pages := where site.RegularPages "Type" "posts" }}
{{ $paginator := .Paginate ($pages.GroupByDate "Jan 2006") }}
@y
```go-html-template
{{ $pages := where site.RegularPages "Type" "posts" }}
{{ $paginator := .Paginate ($pages.GroupByDate "Jan 2006") }}
@z

@x
{{ range $paginator.PageGroups }}
  <h2>{{ .Key }}</h2>
  {{ range .Pages }}
    <h3><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h3>
  {{ end }}
{{ end }}
@y
{{ range $paginator.PageGroups }}
  <h2>{{ .Key }}</h2>
  {{ range .Pages }}
    <h3><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h3>
  {{ end }}
{{ end }}
@z

@x
{{ template "_internal/pagination.html" . }}
```
@y
{{ template "_internal/pagination.html" . }}
```
@z

@x
[grouping methods]: /quick-reference/page-collections/#group
@y
[grouping methods]: /quick-reference/page-collections/#group
@z

@x
## Navigation
@y
## Navigation
@z

@x
As shown in the examples above, the easiest way to add navigation between pagers is with Hugo's embedded pagination template:
@y
As shown in the examples above, the easiest way to add navigation between pagers is with Hugo's embedded pagination template:
@z

@x
```go-html-template
{{ template "_internal/pagination.html" . }}
```
@y
```go-html-template
{{ template "_internal/pagination.html" . }}
```
@z

@x
The embedded pagination template has two formats: `default` and `terse`. The above is equivalent to:
@y
The embedded pagination template has two formats: `default` and `terse`. The above is equivalent to:
@z

@x
```go-html-template
{{ template "_internal/pagination.html" (dict "page" . "format" "default") }}
```
@y
```go-html-template
{{ template "_internal/pagination.html" (dict "page" . "format" "default") }}
```
@z

@x
The `terse` format has fewer controls and page slots, consuming less space when styled as a horizontal list. To use the `terse` format:
@y
The `terse` format has fewer controls and page slots, consuming less space when styled as a horizontal list. To use the `terse` format:
@z

@x
```go-html-template
{{ template "_internal/pagination.html" (dict "page" . "format" "terse") }}
```
@y
```go-html-template
{{ template "_internal/pagination.html" (dict "page" . "format" "terse") }}
```
@z

@x
{{% note %}}
To override Hugo's embedded pagination template, copy the [source code] to a file with the same name in the layouts/partials directory, then call it from your templates using the [`partial`] function:
@y
{{% note %}}
To override Hugo's embedded pagination template, copy the [source code] to a file with the same name in the layouts/partials directory, then call it from your templates using the [`partial`] function:
@z

@x
`{{ partial "pagination.html" . }}`
@y
`{{ partial "pagination.html" . }}`
@z

@x
[`partial`]: /functions/partials/include/
[source code]: {{% eturl pagination %}}
{{% /note %}}
@y
[`partial`]: /functions/partials/include/
[source code]: {{% eturl pagination %}}
{{% /note %}}
@z

@x
Create custom navigation components using any of the `Pager` methods:
@y
Create custom navigation components using any of the `Pager` methods:
@z

@x
{{< list-pages-in-section path=/methods/pager >}}
@y
{{< list-pages-in-section path=/methods/pager >}}
@z

@x
## Structure
@y
## Structure
@z

@x
The example below depicts the published site structure when paginating a list page.
@y
The example below depicts the published site structure when paginating a list page.
@z

@x
With this content:
@y
With this content:
@z

@x
```text
content/
├── posts/
│   ├── _index.md
│   ├── post-1.md
│   ├── post-2.md
│   ├── post-3.md
│   └── post-4.md
└── _index.md
```
@y
```text
content/
├── posts/
│   ├── _index.md
│   ├── post-1.md
│   ├── post-2.md
│   ├── post-3.md
│   └── post-4.md
└── _index.md
```
@z

@x
And this site configuration:
@y
And this site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[pagination]
  disableAliases = false
  pagerSize = 2
  path = 'page'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[pagination]
  disableAliases = false
  pagerSize = 2
  path = 'page'
{{< /code-toggle >}}
@z

@x
And this section template:
@y
And this section template:
@z

@x
```go-html-template
{{ range (.Paginate .Pages).Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
@y
```go-html-template
{{ range (.Paginate .Pages).Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
@z

@x
{{ template "_internal/pagination.html" . }}
```
@y
{{ template "_internal/pagination.html" . }}
```
@z

@x
The published site has this structure:
@y
The published site has this structure:
@z

@x
```text
public/
├── posts/
│   ├── page/
│   │   ├── 1/
│   │   │   └── index.html  <-- alias to public/posts/index.html
│   │   └── 2/
│   │       └── index.html
│   ├── post-1/
│   │   └── index.html
│   ├── post-2/
│   │   └── index.html
│   ├── post-3/
│   │   └── index.html
│   ├── post-4/
│   │   └── index.html
│   └── index.html
└── index.html
```
@y
```text
public/
├── posts/
│   ├── page/
│   │   ├── 1/
│   │   │   └── index.html  <-- alias to public/posts/index.html
│   │   └── 2/
│   │       └── index.html
│   ├── post-1/
│   │   └── index.html
│   ├── post-2/
│   │   └── index.html
│   ├── post-3/
│   │   └── index.html
│   ├── post-4/
│   │   └── index.html
│   └── index.html
└── index.html
```
@z

@x
To disable alias generation for the first pager, change your site configuration:
@y
To disable alias generation for the first pager, change your site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[pagination]
  disableAliases = true
  pagerSize = 2
  path = 'page'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[pagination]
  disableAliases = true
  pagerSize = 2
  path = 'page'
{{< /code-toggle >}}
@z

@x
Now the published site will have this structure:
@y
Now the published site will have this structure:
@z

@x
```text
public/
├── posts/
│   ├── page/
│   │   └── 2/
│   │       └── index.html
│   ├── post-1/
│   │   └── index.html
│   ├── post-2/
│   │   └── index.html
│   ├── post-3/
│   │   └── index.html
│   ├── post-4/
│   │   └── index.html
│   └── index.html
└── index.html
```
@y
```text
public/
├── posts/
│   ├── page/
│   │   └── 2/
│   │       └── index.html
│   ├── post-1/
│   │   └── index.html
│   ├── post-2/
│   │   └── index.html
│   ├── post-3/
│   │   └── index.html
│   ├── post-4/
│   │   └── index.html
│   └── index.html
└── index.html
```
@z
