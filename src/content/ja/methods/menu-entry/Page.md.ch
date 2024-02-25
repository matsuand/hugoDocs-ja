%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Page
description: Returns the Page object associated with the given menu entry.
categories: []
keywords: []
action:
  related: []
  returnType: page.Page
  signatures: [MENUENTRY.Page]
---
@y
---
title: Page
description: Returns the Page object associated with the given menu entry.
categories: []
keywords: []
action:
  related: []
  returnType: page.Page
  signatures: [MENUENTRY.Page]
---
@z

@x
Regardless of how you [define menu entries], an entry associated with a page has access to its [methods].
@y
Regardless of how you [define menu entries], an entry associated with a page has access to its [methods].
@z

@x
In this menu definition, the first two entries are associated with a page, the last entry is not:
@y
In this menu definition, the first two entries are associated with a page, the last entry is not:
@z

@x
{{< code-toggle file=hugo >}}
[[menus.main]]
pageRef = '/about'
weight = 10
@y
{{< code-toggle file=hugo >}}
[[menus.main]]
pageRef = '/about'
weight = 10
@z

@x
[[menus.main]]
pageRef = '/contact'
weight = 20
@y
[[menus.main]]
pageRef = '/contact'
weight = 20
@z

@x
[[menus.main]]
name = 'Hugo'
url = 'https://gohugo.io'
weight = 30
{{< /code-toggle >}}
@y
[[menus.main]]
name = 'Hugo'
url = 'https://gohugo.io'
weight = 30
{{< /code-toggle >}}
@z

@x
In this example, if the menu entry is associated with a page, we use page's [`RelPermalink`] and [`LinkTitle`] when rendering the anchor element.
@y
In this example, if the menu entry is associated with a page, we use page's [`RelPermalink`] and [`LinkTitle`] when rendering the anchor element.
@z

@x
If the entry is not associated with a page, we use its `url` and `name` properties.
@y
If the entry is not associated with a page, we use its `url` and `name` properties.
@z

@x
```go-html-template
<ul>
  {{ range .Site.Menus.main }}
    {{ with .Page }}
      <li><a href="{{ .RelPermalink }}">{{ .Title }}</a></li>
    {{ else }}
      <li><a href="{{ .URL }}">{{ .Name }}</a></li>
    {{ end }}
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Site.Menus.main }}
    {{ with .Page }}
      <li><a href="{{ .RelPermalink }}">{{ .Title }}</a></li>
    {{ else }}
      <li><a href="{{ .URL }}">{{ .Name }}</a></li>
    {{ end }}
  {{ end }}
</ul>
```
@z

@x
See the [menu templates] section for more information.
@y
See the [menu templates] section for more information.
@z

@x
[`LinkTitle`]: /methods/page/linktitle/
[`RelPermalink`]: /methods/page/relpermalink/
[define menu entries]: /content-management/menus/
[menu templates]: /templates/menu-templates/#page-references
[methods]: /methods/page/
@y
[`LinkTitle`]: /methods/page/linktitle/
[`RelPermalink`]: /methods/page/relpermalink/
[define menu entries]: /content-management/menus/
[menu templates]: /templates/menu-templates/#page-references
[methods]: /methods/page/
@z
