%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: PageSize
description: Returns the number of pages per pager.
categories: []
keywords: []
action:
  related:
    - methods/page/Paginate
  returnType: int
  signatures: [PAGER.PageSize]
expiryDate: 2025-06-09 # deprecated 2024-06-09
---
@y
---
title: PageSize
description: Returns the number of pages per pager.
categories: []
keywords: []
action:
  related:
    - methods/page/Paginate
  returnType: int
  signatures: [PAGER.PageSize]
expiryDate: 2025-06-09 # deprecated 2024-06-09
---
@z

@x
{{% deprecated-in 0.128.0 %}}
Use [`PAGER.PagerSize`] instead.
@y
{{% deprecated-in 0.128.0 %}}
Use [`PAGER.PagerSize`] instead.
@z

@x
[`PAGER.PagerSize`]: /methods/pager/pagersize/
{{% /deprecated-in %}}
@y
[`PAGER.PagerSize`]: /methods/pager/pagersize/
{{% /deprecated-in %}}
@z

@x
The number of pages per pager is determined by the optional second argument passed to the [`Paginate`] method, falling back to the `pagerSize` as defined in your [site configuration].
@y
The number of pages per pager is determined by the optional second argument passed to the [`Paginate`] method, falling back to the `pagerSize` as defined in your [site configuration].
@z

@x
[`Paginate`]: /methods/page/paginate/
[site configuration]: /templates/pagination/#configuration
@y
[`Paginate`]: /methods/page/paginate/
[site configuration]: /templates/pagination/#configuration
@z

@x
```go-html-template
{{ $pages := where site.RegularPages "Type" "posts" }}
{{ $paginator := .Paginate $pages }}
@y
```go-html-template
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
{{ with $paginator }}
  {{ .PageSize }}
{{ end }}
```
@y
{{ with $paginator }}
  {{ .PageSize }}
{{ end }}
```
@z
