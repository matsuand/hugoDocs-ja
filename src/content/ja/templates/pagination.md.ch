%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Pagination
description: Hugo supports pagination for your homepage, section pages, and taxonomies.
categories: [templates]
keywords: [lists,sections,pagination]
menu:
  docs:
    parent: templates
    weight: 100
weight: 100
toc: true
aliases: [/extras/pagination,/doc/pagination/]
---
@y
---
title: ページネーション
description: Hugo supports pagination for your homepage, section pages, and taxonomies.
categories: [templates]
keywords: [lists,sections,pagination]
menu:
  docs:
    parent: templates
    weight: 100
weight: 100
toc: true
aliases: [/extras/pagination,/doc/pagination/]
---
@z

@x
The real power of Hugo pagination shines when combined with the [`where`] function and its SQL-like operators: [`first`], [`last`], and [`after`]. You can even [order the content][lists] the way you've become used to with Hugo.
@y
The real power of Hugo pagination shines when combined with the [`where`] function and its SQL-like operators: [`first`], [`last`], and [`after`]. You can even [order the content][lists] the way you've become used to with Hugo.
@z

@x
## Configure pagination
@y
## Configure pagination
@z

@x
Pagination can be configured in your [site configuration][configuration]:
@y
Pagination can be configured in your [site configuration][configuration]:
@z

@x
paginate
: default = `10`. This setting can be overridden within the template.
@y
paginate
: default = `10`. This setting can be overridden within the template.
@z

@x
paginatePath
: default = `page`. Allows you to set a different path for your pagination pages.
@y
paginatePath
: default = `page`. Allows you to set a different path for your pagination pages.
@z

@x
Setting `paginate` to a positive value will split the list pages for the homepage, sections and taxonomies into chunks of that size. But note that the generation of the pagination pages for sections, taxonomies and homepage is *lazy* --- the pages will not be created if not referenced by a `.Paginator` (see below).
@y
Setting `paginate` to a positive value will split the list pages for the homepage, sections and taxonomies into chunks of that size. But note that the generation of the pagination pages for sections, taxonomies and homepage is *lazy* --- the pages will not be created if not referenced by a `.Paginator` (see below).
@z

@x
`paginatePath` is used to adapt the `URL` to the pages in the paginator (the default setting will produce URLs on the form `/page/1/`.
@y
`paginatePath` is used to adapt the `URL` to the pages in the paginator (the default setting will produce URLs on the form `/page/1/`.
@z

@x
## List paginator pages
@y
## List paginator pages
@z

@x
{{% note %}}
Paginate a page collection in list templates for these page kinds: `home`, `section`, `taxonomy`, or `term`. You cannot paginate a page collection in a template for the `page` page kind.
{{% /note %}}
@y
{{% note %}}
Paginate a page collection in list templates for these page kinds: `home`, `section`, `taxonomy`, or `term`. You cannot paginate a page collection in a template for the `page` page kind.
{{% /note %}}
@z

@x
There are two ways to configure and use a `.Paginator`:
@y
There are two ways to configure and use a `.Paginator`:
@z

@x
1. The simplest way is just to call `.Paginator.Pages` from a template. It will contain the pages for *that page*.
2. Select another set of pages with the available template functions and ordering options, and pass the slice to `.Paginate`, e.g.
  * `{{ range (.Paginate ( first 50 .Pages.ByTitle )).Pages }}` or
  * `{{ range (.Paginate .RegularPagesRecursive).Pages }}`.
@y
1. The simplest way is just to call `.Paginator.Pages` from a template. It will contain the pages for *that page*.
2. Select another set of pages with the available template functions and ordering options, and pass the slice to `.Paginate`, e.g.
  * `{{ range (.Paginate ( first 50 .Pages.ByTitle )).Pages }}` or
  * `{{ range (.Paginate .RegularPagesRecursive).Pages }}`.
@z

@x
For a given **Page**, it's one of the options above. The `.Paginator` is static and cannot change once created.
@y
For a given **Page**, it's one of the options above. The `.Paginator` is static and cannot change once created.
@z

@x
If you call `.Paginator` or `.Paginate` multiple times on the same page, you should ensure all the calls are identical. Once *either* `.Paginator` or `.Paginate` is called while generating a page, its result is cached, and any subsequent similar call will reuse the cached result. This means that any such calls which do not match the first one will not behave as written.
@y
If you call `.Paginator` or `.Paginate` multiple times on the same page, you should ensure all the calls are identical. Once *either* `.Paginator` or `.Paginate` is called while generating a page, its result is cached, and any subsequent similar call will reuse the cached result. This means that any such calls which do not match the first one will not behave as written.
@z

@x
(Remember that function arguments are eagerly evaluated, so a call like `$paginator := cond x .Paginator (.Paginate .RegularPagesRecursive)` is an example of what you should *not* do. Use `if`/`else` instead to ensure exactly one evaluation.)
@y
(Remember that function arguments are eagerly evaluated, so a call like `$paginator := cond x .Paginator (.Paginate .RegularPagesRecursive)` is an example of what you should *not* do. Use `if`/`else` instead to ensure exactly one evaluation.)
@z

@x
The global page size setting (`Paginate`) can be overridden by providing a positive integer as the last argument. The examples below will give five items per page:
@y
The global page size setting (`Paginate`) can be overridden by providing a positive integer as the last argument. The examples below will give five items per page:
@z

@x
* `{{ range (.Paginator 5).Pages }}`
* `{{ $paginator := .Paginate (where .Pages "Type" "posts") 5 }}`
@y
* `{{ range (.Paginator 5).Pages }}`
* `{{ $paginator := .Paginate (where .Pages "Type" "posts") 5 }}`
@z

@x
It is also possible to use the `GroupBy` functions in combination with pagination:
@y
It is also possible to use the `GroupBy` functions in combination with pagination:
@z

@x
```go-html-template
{{ range (.Paginate (.Pages.GroupByDate "2006")).PageGroups }}
```
@y
```go-html-template
{{ range (.Paginate (.Pages.GroupByDate "2006")).PageGroups }}
```
@z

@x
## Build the navigation
@y
## Build the navigation
@z

@x
{{% note %}}
To override Hugo's embedded pagination template, copy the [source code] to a file with the same name in the layouts/partials directory, then call it from your templates using the [`partial`] function:
@y
{{% note %}}
To override Hugo's embedded pagination template, copy the [source code] to a file with the same name in the layouts/partials directory, then call it from your templates using the [`partial`] function:
@z

@x
`{{ partial "pagination" . }}`
@y
`{{ partial "pagination" . }}`
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
The easiest way to add this to your pages is to include the embedded template:
@y
The easiest way to add this to your pages is to include the embedded template:
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
{{% note %}}
If you use any filters or ordering functions to create your `.Paginator` *and* you want the navigation buttons to be shown before the page listing, you must create the `.Paginator` before it's used.
{{% /note %}}
@y
{{% note %}}
If you use any filters or ordering functions to create your `.Paginator` *and* you want the navigation buttons to be shown before the page listing, you must create the `.Paginator` before it's used.
{{% /note %}}
@z

@x
The following example shows how to create `.Paginator` before its used:
@y
The following example shows how to create `.Paginator` before its used:
@z

@x
```go-html-template
{{ $paginator := .Paginate (where .Pages "Type" "posts") }}
{{ template "_internal/pagination.html" . }}
{{ range $paginator.Pages }}
  {{ .Title }}
{{ end }}
```
@y
```go-html-template
{{ $paginator := .Paginate (where .Pages "Type" "posts") }}
{{ template "_internal/pagination.html" . }}
{{ range $paginator.Pages }}
  {{ .Title }}
{{ end }}
```
@z

@x
Without the `where` filter, the above example is even simpler:
@y
Without the `where` filter, the above example is even simpler:
@z

@x
```go-html-template
{{ template "_internal/pagination.html" . }}
{{ range .Paginator.Pages }}
  {{ .Title }}
{{ end }}
```
@y
```go-html-template
{{ template "_internal/pagination.html" . }}
{{ range .Paginator.Pages }}
  {{ .Title }}
{{ end }}
```
@z

@x
If you want to build custom navigation, you can do so using the `.Paginator` object, which includes the following properties:
@y
If you want to build custom navigation, you can do so using the `.Paginator` object, which includes the following properties:
@z

@x
PageNumber
: The current page's number in the pager sequence
@y
PageNumber
: The current page's number in the pager sequence
@z

@x
URL
: The relative URL to the current pager
@y
URL
: The relative URL to the current pager
@z

@x
Pages
: The pages in the current pager
@y
Pages
: The pages in the current pager
@z

@x
NumberOfElements
: The number of elements on this page
@y
NumberOfElements
: The number of elements on this page
@z

@x
HasPrev
: Whether there are page(s) before the current
@y
HasPrev
: Whether there are page(s) before the current
@z

@x
Prev
: The pager for the previous page
@y
Prev
: The pager for the previous page
@z

@x
HasNext
: Whether there are page(s) after the current
@y
HasNext
: Whether there are page(s) after the current
@z

@x
Next
: The pager for the next page
@y
Next
: The pager for the next page
@z

@x
First
: The pager for the first page
@y
First
: The pager for the first page
@z

@x
Last
: The pager for the last page
@y
Last
: The pager for the last page
@z

@x
Pagers
: A list of pagers that can be used to build a pagination menu
@y
Pagers
: A list of pagers that can be used to build a pagination menu
@z

@x
PageSize
: Size of each pager
@y
PageSize
: Size of each pager
@z

@x
TotalPages
: The number of pages in the paginator
@y
TotalPages
: The number of pages in the paginator
@z

@x
TotalNumberOfElements
: The number of elements on all pages in this paginator
@y
TotalNumberOfElements
: The number of elements on all pages in this paginator
@z

@x
## Additional information
@y
## Additional information
@z

@x
The pages are built on the following form (`BLANK` means no value):
@y
The pages are built on the following form (`BLANK` means no value):
@z

@x
```txt
[SECTION/TAXONOMY/BLANK]/index.html
[SECTION/TAXONOMY/BLANK]/page/1/index.html => redirect to  [SECTION/TAXONOMY/BLANK]/index.html
[SECTION/TAXONOMY/BLANK]/page/2/index.html
....
```
@y
```txt
[SECTION/TAXONOMY/BLANK]/index.html
[SECTION/TAXONOMY/BLANK]/page/1/index.html => redirect to  [SECTION/TAXONOMY/BLANK]/index.html
[SECTION/TAXONOMY/BLANK]/page/2/index.html
....
```
@z

@x
[`first`]: /functions/collections/first/
[`last`]: /functions/collections/last/
[`after`]: /functions/collections/after/
[configuration]: /getting-started/configuration/
[lists]: /templates/lists/
[`where`]: /functions/collections/where/
@y
[`first`]: /functions/collections/first/
[`last`]: /functions/collections/last/
[`after`]: /functions/collections/after/
[configuration]: /getting-started/configuration/
[lists]: /templates/lists/
[`where`]: /functions/collections/where/
@z
