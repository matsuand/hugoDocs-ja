%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: GroupByLastmod
description: Returns the given page collection grouped by last modification date in descending order.
categories: []
keywords: []
action:
  related:
    - methods/pages/GroupByDate
    - methods/pages/GroupByExpiryDate
    - methods/pages/GroupByParamDate
    - methods/pages/GroupByPublishDate
  returnType: page.PagesGroup
  signatures: ['PAGES.GroupByLastmod LAYOUT [SORT]']
---
@y
---
title: GroupByLastmod
description: Returns the given page collection grouped by last modification date in descending order.
categories: []
keywords: []
action:
  related:
    - methods/pages/GroupByDate
    - methods/pages/GroupByExpiryDate
    - methods/pages/GroupByParamDate
    - methods/pages/GroupByPublishDate
  returnType: page.PagesGroup
  signatures: ['PAGES.GroupByLastmod LAYOUT [SORT]']
---
@z

@x
When grouping by last modification date, the value is determined by your [site configuration], defaulting to the `lastmod` field in front matter.
@y
When grouping by last modification date, the value is determined by your [site configuration], defaulting to the `lastmod` field in front matter.
@z

@x
The [layout string] has the same format as the layout string for the [`time.Format`] function. The resulting group key is [localized] for language and region.
@y
The [layout string] has the same format as the layout string for the [`time.Format`] function. The resulting group key is [localized] for language and region.
@z

@x
[`time.Format`]: /functions/time/format/
[layout string]: #layout-string
[localized]: /getting-started/glossary/#localization
[site configuration]: /getting-started/configuration/#configure-dates
@y
[`time.Format`]: /functions/time/format/
[layout string]: #layout-string
[localized]: /getting-started/glossary/#localization
[site configuration]: /getting-started/configuration/#configure-dates
@z

@x
{{% include "methods/pages/_common/group-sort-order.md" %}}
@y
{{% include "methods/pages/_common/group-sort-order.md" %}}
@z

@x
To group content by year and month:
@y
To group content by year and month:
@z

@x
```go-html-template
{{ range .Pages.GroupByLastmod "January 2006" }}
  <p>{{ .Key }}</p>
  <ul>
    {{ range .Pages }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.GroupByLastmod "January 2006" }}
  <p>{{ .Key }}</p>
  <ul>
    {{ range .Pages }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@z

@x
To sort the groups in ascending order:
@y
To sort the groups in ascending order:
@z

@x
```go-html-template
{{ range .Pages.GroupByLastmod "January 2006" "asc" }}
  <p>{{ .Key }}</p>
  <ul>
    {{ range .Pages }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.GroupByLastmod "January 2006" "asc" }}
  <p>{{ .Key }}</p>
  <ul>
    {{ range .Pages }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@z

@x
The pages within each group will also be sorted by last modification date, either ascending or descending depending on your grouping option. To sort the pages within each group, use one of the sorting methods. For example, to sort the pages within each group by title:
@y
The pages within each group will also be sorted by last modification date, either ascending or descending depending on your grouping option. To sort the pages within each group, use one of the sorting methods. For example, to sort the pages within each group by title:
@z

@x
```go-html-template
{{ range .Pages.GroupByLastmod "January 2006" }}
  <p>{{ .Key }}</p>
  <ul>
    {{ range .Pages.ByTitle }}
      <li><a href="{{ .RelPermalink }}">{{ .Title }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.GroupByLastmod "January 2006" }}
  <p>{{ .Key }}</p>
  <ul>
    {{ range .Pages.ByTitle }}
      <li><a href="{{ .RelPermalink }}">{{ .Title }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@z

@x
## Layout string
@y
## Layout string
@z

@x
{{% include "functions/_common/time-layout-string.md" %}}
@y
{{% include "functions/_common/time-layout-string.md" %}}
@z