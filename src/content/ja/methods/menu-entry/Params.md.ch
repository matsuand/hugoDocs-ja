%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Params
description: Returns the `params` property of the given menu entry.
categories: []
keywords: []
action:
  related: []
  returnType: maps.Params
  signatures: [MENUENTRY.Params]
---
@y
---
title: Params
description: Returns the `params` property of the given menu entry.
categories: []
keywords: []
action:
  related: []
  returnType: maps.Params
  signatures: [MENUENTRY.Params]
---
@z

@x
When you define menu entries [in site configuration] or [in front matter], you can include a `params` key to attach additional information to the entry. For example:
@y
When you define menu entries [in site configuration] or [in front matter], you can include a `params` key to attach additional information to the entry. For example:
@z

@x
{{< code-toggle file=hugo >}}
[[menus.main]]
name = 'About'
pageRef = '/about'
weight = 10
@y
{{< code-toggle file=hugo >}}
[[menus.main]]
name = 'About'
pageRef = '/about'
weight = 10
@z

@x
[[menus.main]]
name = 'Contact'
pageRef = '/contact'
weight = 20
@y
[[menus.main]]
name = 'Contact'
pageRef = '/contact'
weight = 20
@z

@x
[[menus.main]]
name = 'Hugo'
url = 'https://gohugo.io'
weight = 30
[menus.main.params]
  rel = 'external'
{{< /code-toggle >}}
@y
[[menus.main]]
name = 'Hugo'
url = 'https://gohugo.io'
weight = 30
[menus.main.params]
  rel = 'external'
{{< /code-toggle >}}
@z

@x
With this template:
@y
With this template:
@z

@x
```go-html-template
<ul>
  {{ range .Site.Menus.main }}
    <li>
      <a href="{{ .URL }}" {{ with .Params.rel }}rel="{{ . }}"{{ end }}>
        {{ .Name }}
      </a>
    </li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Site.Menus.main }}
    <li>
      <a href="{{ .URL }}" {{ with .Params.rel }}rel="{{ . }}"{{ end }}>
        {{ .Name }}
      </a>
    </li>
  {{ end }}
</ul>
```
@z

@x
Hugo renders:
@y
Hugo renders:
@z

@x
```html
<ul>
  <li><a href="/about/">About</a></li>
  <li><a href="/contact/">Contact</a></li>
  <li><a href="https://gohugo.io" rel="external">Hugo</a></li>
</ul>
```
@y
```html
<ul>
  <li><a href="/about/">About</a></li>
  <li><a href="/contact/">Contact</a></li>
  <li><a href="https://gohugo.io" rel="external">Hugo</a></li>
</ul>
```
@z

@x
See the [menu templates] section for more information.
@y
See the [menu templates] section for more information.
@z

@x
[menu templates]: /templates/menu-templates/#menu-entry-parameters
[in front matter]: /content-management/menus/#define-in-front-matter
[in site configuration]: /content-management/menus/
@y
[menu templates]: /templates/menu-templates/#menu-entry-parameters
[in front matter]: /content-management/menus/#define-in-front-matter
[in site configuration]: /content-management/menus/
@z
