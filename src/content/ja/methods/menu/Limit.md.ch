%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Limit
description: Returns the given menu, limited to the first N entries.
categories: []
keywords: []
action:
  related: []
  returnType: navigation.Menu
  signatures: [MENU.Limit N]
---
@y
---
title: Limit
description: Returns the given menu, limited to the first N entries.
categories: []
keywords: []
action:
  related: []
  returnType: navigation.Menu
  signatures: [MENU.Limit N]
---
@z

@x
The `Limit` method returns the given menu, limited to the first N entries.
@y
The `Limit` method returns the given menu, limited to the first N entries.
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
To sort the entries by name, and limit to the first 2 entries:
@y
To sort the entries by name, and limit to the first 2 entries:
@z

@x
```go-html-template
<ul>
  {{ range .Site.Menus.main.ByName.Limit 2 }}
    <li><a href="{{ .URL }}">{{ .Name }}</a></li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Site.Menus.main.ByName.Limit 2 }}
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
</ul>
```
@y
```html
<ul>
  <li><a href="/about/">About</a></li>
  <li><a href="/contact">Contact</a></li>
</ul>
```
@z
