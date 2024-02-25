%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Reverse
description: Returns the given menu, reversing the sort order of its entries.
categories: []
keywords: []
action:
  related: []
  returnType: navigation.Menu
  signatures: [MENU.Reverse]
---
@y
---
title: Reverse
description: Returns the given menu, reversing the sort order of its entries.
categories: []
keywords: []
action:
  related: []
  returnType: navigation.Menu
  signatures: [MENU.Reverse]
---
@z

@x
The `Reverse` method returns the given menu, reversing the sort order of its entries.
@y
The `Reverse` method returns the given menu, reversing the sort order of its entries.
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
To sort the entries by name in descending order:
@y
To sort the entries by name in descending order:
@z

@x
```go-html-template
<ul>
  {{ range .Site.Menus.main.ByName.Reverse }}
    <li><a href="{{ .URL }}">{{ .Name }}</a></li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Site.Menus.main.ByName.Reverse }}
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
  <li><a href="/contact">Contact</a></li>
  <li><a href="/about/">About</a></li>
</ul>
```
@y
```html
<ul>
  <li><a href="/services/">Services</a></li>
  <li><a href="/contact">Contact</a></li>
  <li><a href="/about/">About</a></li>
</ul>
```
@z
