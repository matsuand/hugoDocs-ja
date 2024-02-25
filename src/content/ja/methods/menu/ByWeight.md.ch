%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: ByWeight
description: Returns the given menu with its entries sorted by weight, then by name, then by identifier.
categories: []
keywords: []
action:
  related: []
  returnType: navigation.Menu
  signatures: [MENU.ByWeight]
---
@y
---
title: ByWeight
description: Returns the given menu with its entries sorted by weight, then by name, then by identifier.
categories: []
keywords: []
action:
  related: []
  returnType: navigation.Menu
  signatures: [MENU.ByWeight]
---
@z

@x
The `ByWeight` method returns the given menu with its entries sorted by [`weight`], then by `name`, then by `identifier`. This is the default sort order.
@y
The `ByWeight` method returns the given menu with its entries sorted by [`weight`], then by `name`, then by `identifier`. This is the default sort order.
@z

@x
[`weight`]: /getting-started/glossary/#weight
@y
[`weight`]: /getting-started/glossary/#weight
@z

@x
Consider this menu definition:
@y
Consider this menu definition:
@z

@x
{{< code-toggle file=hugo >}}
[[menus.main]]
identifier = 'about'
name = 'About'
pageRef = '/about'
weight = 20
@y
{{< code-toggle file=hugo >}}
[[menus.main]]
identifier = 'about'
name = 'About'
pageRef = '/about'
weight = 20
@z

@x
[[menus.main]]
identifier = 'services'
name = 'Services'
pageRef = '/services'
weight = 10
@y
[[menus.main]]
identifier = 'services'
name = 'Services'
pageRef = '/services'
weight = 10
@z

@x
[[menus.main]]
identifier = 'contact'
name = 'Contact'
pageRef = '/contact'
weight = 30
{{< /code-toggle >}}
@y
[[menus.main]]
identifier = 'contact'
name = 'Contact'
pageRef = '/contact'
weight = 30
{{< /code-toggle >}}
@z

@x
To sort the entries by `weight`, then by `name`, then by `identifier`:
@y
To sort the entries by `weight`, then by `name`, then by `identifier`:
@z

@x
```go-html-template
<ul>
  {{ range .Site.Menus.main.ByWeight }}
    <li><a href="{{ .URL }}">{{ .Name }}</a></li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Site.Menus.main.ByWeight }}
    <li><a href="{{ .URL }}">{{ .Name }}</a></li>
  {{ end }}
</ul>
```
@z

@x
Hugo renders this to:
@y
Hugo renders this to:
@z

@x
```html
<ul>
  <li><a href="/services/">Services</a></li>
  <li><a href="/about/">About</a></li>
  <li><a href="/contact">Contact</a></li>
</ul>
```
@y
```html
<ul>
  <li><a href="/services/">Services</a></li>
  <li><a href="/about/">About</a></li>
  <li><a href="/contact">Contact</a></li>
</ul>
```
@z

@x
{{% note %}}
In the menu definition above, note that the `identifier` property is only required when two or more menu entries have the same name, or when localizing the name using translation tables.
@y
{{% note %}}
In the menu definition above, note that the `identifier` property is only required when two or more menu entries have the same name, or when localizing the name using translation tables.
@z

@x
[details]: /content-management/menus/#properties-front-matter
{{% /note %}}
@y
[details]: /content-management/menus/#properties-front-matter
{{% /note %}}
@z

@x
You can also sort menu entries using the [`sort`] function. For example, to sort by `weight` in descending order:
@y
You can also sort menu entries using the [`sort`] function. For example, to sort by `weight` in descending order:
@z

@x
```go-html-template
<ul>
  {{ range sort .Site.Menus.main "Weight" "desc" }}
    <li><a href="{{ .URL }}">{{ .Name }}</a></li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range sort .Site.Menus.main "Weight" "desc" }}
    <li><a href="{{ .URL }}">{{ .Name }}</a></li>
  {{ end }}
</ul>
```
@z

@x
When using the sort function with menu entries, specify any of the following keys: `Identifier`, `Name`, `Parent`, `Post`, `Pre`, `Title`, `URL`, or `Weight`.
@y
When using the sort function with menu entries, specify any of the following keys: `Identifier`, `Name`, `Parent`, `Post`, `Pre`, `Title`, `URL`, or `Weight`.
@z

@x
[`sort`]: /functions/collections/sort/
@y
[`sort`]: /functions/collections/sort/
@z
