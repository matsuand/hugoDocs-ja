%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Identifier
description: Returns the `identifier` property of the given menu entry. 
categories: []
keywords: []
action:
  related: []
  returnType: string
  signatures: [MENUENTRY.Identifier]
---
@y
---
title: Identifier
description: Returns the `identifier` property of the given menu entry. 
categories: []
keywords: []
action:
  related: []
  returnType: string
  signatures: [MENUENTRY.Identifier]
---
@z

@x
The `Identifier` method returns the `identifier` property of the menu entry. If you define the menu entry [automatically], it returns the page's section.
@y
The `Identifier` method returns the `identifier` property of the menu entry. If you define the menu entry [automatically], it returns the page's section.
@z

@x
[automatically]: /content-management/menus/#define-automatically
@y
[automatically]: /content-management/menus/#define-automatically
@z

@x
{{< code-toggle file=hugo >}}
[[menus.main]]
identifier = 'about'
name = 'About'
pageRef = '/about'
weight = 10
@y
{{< code-toggle file=hugo >}}
[[menus.main]]
identifier = 'about'
name = 'About'
pageRef = '/about'
weight = 10
@z

@x
[[menus.main]]
identifier = 'contact'
name = 'Contact'
pageRef = '/contact'
weight = 20
{{< /code-toggle >}}
@y
[[menus.main]]
identifier = 'contact'
name = 'Contact'
pageRef = '/contact'
weight = 20
{{< /code-toggle >}}
@z

@x
This example uses the `Identifier` method when querying the translation table on a multilingual site, falling back the `name` property if a matching key in the translation table does not exist:
@y
This example uses the `Identifier` method when querying the translation table on a multilingual site, falling back the `name` property if a matching key in the translation table does not exist:
@z

@x
```go-html-template
<ul>
  {{ range .Site.Menus.main }}
    <li><a href="{{ .URL }}">{{ or (T .Identifier) .Name }}</a></li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Site.Menus.main }}
    <li><a href="{{ .URL }}">{{ or (T .Identifier) .Name }}</a></li>
  {{ end }}
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
