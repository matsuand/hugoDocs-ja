%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: ByName
description: Returns the given menu with its entries sorted by name.
categories: []
keywords: []
action:
  related: []
  returnType: navigation.Menu
  signatures: [MENU.ByName]
---
@y
---
title: ByName
description: Returns the given menu with its entries sorted by name.
categories: []
keywords: []
action:
  related: []
  returnType: navigation.Menu
  signatures: [MENU.ByName]
---
@z

@x
The `Sort` method returns the given menu with its entries sorted by `name`.
@y
The `Sort` method returns the given menu with its entries sorted by `name`.
@z

@x
Consider this menu definition:
@y
Consider this menu definition:
@z

@x
{{< code-toggle file=hugo >}}
[[menus.main]]
name = 'Services'
pageRef = '/services'
weight = 10
@y
{{< code-toggle file=hugo >}}
[[menus.main]]
name = 'Services'
pageRef = '/services'
weight = 10
@z

@x
[[menus.main]]
name = 'About'
pageRef = '/about'
weight = 20
@y
[[menus.main]]
name = 'About'
pageRef = '/about'
weight = 20
@z

@x
[[menus.main]]
name = 'Contact'
pageRef = '/contact'
weight = 30
{{< /code-toggle >}}
@y
[[menus.main]]
name = 'Contact'
pageRef = '/contact'
weight = 30
{{< /code-toggle >}}
@z

@x
To sort the entries by `name`:
@y
To sort the entries by `name`:
@z

@x
```go-html-template
<ul>
  {{ range .Site.Menus.main.ByName }}
    <li><a href="{{ .URL }}">{{ .Name }}</a></li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Site.Menus.main.ByName }}
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
  <li><a href="/about/">About</a></li>
  <li><a href="/contact">Contact</a></li>
  <li><a href="/services/">Services</a></li>
</ul>
```
@y
```html
<ul>
  <li><a href="/about/">About</a></li>
  <li><a href="/contact">Contact</a></li>
  <li><a href="/services/">Services</a></li>
</ul>
```
@z

@x
You can also sort menu entries using the [`sort`] function. For example, to sort by `name` in descending order:
@y
You can also sort menu entries using the [`sort`] function. For example, to sort by `name` in descending order:
@z

@x
```go-html-template
<ul>
  {{ range sort .Site.Menus.main "Name" "desc" }}
    <li><a href="{{ .URL }}">{{ .Name }}</a></li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range sort .Site.Menus.main "Name" "desc" }}
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
