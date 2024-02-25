%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Paginate
description: Paginates a collection of pages.
categories: []
keywords: []
action:
  related:
    - methods/page/Paginator
  returnType: page.Pager
  signatures: ['PAGE.Paginate COLLECTION [N]']
---
@y
---
title: Paginate
description: Paginates a collection of pages.
categories: []
keywords: []
action:
  related:
    - methods/page/Paginator
  returnType: page.Pager
  signatures: ['PAGE.Paginate COLLECTION [N]']
---
@z

@x
[Pagination] is the process of splitting a list page into two or more pagers, where each pager contains a subset of the page collection and navigation links to other pagers.
@y
[Pagination] is the process of splitting a list page into two or more pagers, where each pager contains a subset of the page collection and navigation links to other pagers.
@z

@x
By default, the number of elements on each pager is determined by the value of the `paginate` setting in your site configuration. The default value is `10`. Override the value in your site configuration by providing a second argument, an integer, when calling the `Paginate` method.
@y
By default, the number of elements on each pager is determined by the value of the `paginate` setting in your site configuration. The default value is `10`. Override the value in your site configuration by providing a second argument, an integer, when calling the `Paginate` method.
@z

@x
{{% note %}}
There is also a `Paginator` method on `Page` objects, but it can neither filter nor sort the page collection.
@y
{{% note %}}
There is also a `Paginator` method on `Page` objects, but it can neither filter nor sort the page collection.
@z

@x
The `Paginate` method is more flexible.
{{% /note %}}
@y
The `Paginate` method is more flexible.
{{% /note %}}
@z

@x
You can invoke pagination on the home page template, [`section`] templates, [`taxonomy`] templates, and [`term`] templates.
@y
You can invoke pagination on the home page template, [`section`] templates, [`taxonomy`] templates, and [`term`] templates.
@z

@x
{{< code file=layouts/_default/list.html >}}
{{ $pages := where .Site.RegularPages "Section" "articles" }}
{{ $pages = $pages.ByTitle }}
{{ range (.Paginate $pages 7).Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
{{ end }}
{{ template "_internal/pagination.html" . }}
{{< /code >}}
@y
{{< code file=layouts/_default/list.html >}}
{{ $pages := where .Site.RegularPages "Section" "articles" }}
{{ $pages = $pages.ByTitle }}
{{ range (.Paginate $pages 7).Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
{{ end }}
{{ template "_internal/pagination.html" . }}
{{< /code >}}
@z

@x
In the example above, we:
@y
In the example above, we:
@z

@x
1. Build a page collection
2. Sort the collection by title
3. Paginate the collection, with 7 elements per pager
4. Range over the paginated page collection, rendering a link to each page
5. Call the internal "pagination" template to create the navigation links between pagers.
@y
1. Build a page collection
2. Sort the collection by title
3. Paginate the collection, with 7 elements per pager
4. Range over the paginated page collection, rendering a link to each page
5. Call the internal "pagination" template to create the navigation links between pagers.
@z

@x
{{% note %}}
Please note that the results of pagination are cached. Once you have invoked either the `Paginator` or `Paginate` method, the paginated collection is immutable. Additional invocations of these methods will have no effect.
{{% /note %}}
@y
{{% note %}}
Please note that the results of pagination are cached. Once you have invoked either the `Paginator` or `Paginate` method, the paginated collection is immutable. Additional invocations of these methods will have no effect.
{{% /note %}}
@z

@x
[context]: /getting-started/glossary/#context
[pagination]: /templates/pagination/
[`section`]: /getting-started/glossary/#section
[`taxonomy`]: /getting-started/glossary/#taxonomy
[`term`]: /getting-started/glossary/#term
@y
[context]: /getting-started/glossary/#context
[pagination]: /templates/pagination/
[`section`]: /getting-started/glossary/#section
[`taxonomy`]: /getting-started/glossary/#taxonomy
[`term`]: /getting-started/glossary/#term
@z
