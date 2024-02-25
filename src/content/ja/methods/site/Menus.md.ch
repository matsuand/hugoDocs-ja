%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Menus
description: Returns a collection of menu objects for the given site.
categories: []
keywords: []
action:
  related:
    - methods/page/IsMenuCurrent
    - methods/page/HasMenuCurrent
  returnType: navigation.Menus
  signatures: [SITE.Menus]
---
@y
---
title: Menus
description: Returns a collection of menu objects for the given site.
categories: []
keywords: []
action:
  related:
    - methods/page/IsMenuCurrent
    - methods/page/HasMenuCurrent
  returnType: navigation.Menus
  signatures: [SITE.Menus]
---
@z

@x
The `Menus` method on a `Site` object returns a collection of menus, where each menu contains one or more entries, either flat or nested. Each entry points to a page within the site, or to an external resource.
@y
The `Menus` method on a `Site` object returns a collection of menus, where each menu contains one or more entries, either flat or nested. Each entry points to a page within the site, or to an external resource.
@z

@x
{{% note %}}
Menus can be defined and localized in several ways. Please see the [menus] section for a complete explanation and examples.
@y
{{% note %}}
Menus can be defined and localized in several ways. Please see the [menus] section for a complete explanation and examples.
@z

@x
[menus]: /content-management/menus/
{{% /note %}}
@y
[menus]: /content-management/menus/
{{% /note %}}
@z

@x
A site can have multiple menus. For example, a main menu and a footer menu:
@y
A site can have multiple menus. For example, a main menu and a footer menu:
@z

@x
{{< code-toggle file=hugo >}}
[[menus.main]]
name = 'Home'
pageRef = '/'
weight = 10
@y
{{< code-toggle file=hugo >}}
[[menus.main]]
name = 'Home'
pageRef = '/'
weight = 10
@z

@x
[[menus.main]]
name = 'Books'
pageRef = '/books'
weight = 20
@y
[[menus.main]]
name = 'Books'
pageRef = '/books'
weight = 20
@z

@x
[[menus.main]]
name = 'Films'
pageRef = '/films'
weight = 30
@y
[[menus.main]]
name = 'Films'
pageRef = '/films'
weight = 30
@z

@x
[[menus.footer]]
name = 'Legal'
pageRef = '/legal'
weight = 10
@y
[[menus.footer]]
name = 'Legal'
pageRef = '/legal'
weight = 10
@z

@x
[[menus.footer]]
name = 'Privacy'
pageRef = '/privacy'
weight = 20
{{< /code-toggle >}}
@y
[[menus.footer]]
name = 'Privacy'
pageRef = '/privacy'
weight = 20
{{< /code-toggle >}}
@z

@x
This template renders the main menu:
@y
This template renders the main menu:
@z

@x
```go-html-template
{{ with site.Menus.main }}
  <nav class="menu">
    {{ range . }}
      {{ if $.IsMenuCurrent .Menu . }}
        <a class="active" aria-current="page" href="{{ .URL }}">{{ .Name }}</a>
      {{ else }}
        <a href="{{ .URL }}">{{ .Name }}</a>
      {{ end }}
    {{ end }}
  </nav>
{{ end }}
```
@y
```go-html-template
{{ with site.Menus.main }}
  <nav class="menu">
    {{ range . }}
      {{ if $.IsMenuCurrent .Menu . }}
        <a class="active" aria-current="page" href="{{ .URL }}">{{ .Name }}</a>
      {{ else }}
        <a href="{{ .URL }}">{{ .Name }}</a>
      {{ end }}
    {{ end }}
  </nav>
{{ end }}
```
@z

@x
When viewing the home page, the result is:
@y
When viewing the home page, the result is:
@z

@x
```html
<nav class="menu">
  <a class="active" aria-current="page" href="/">Home</a>
  <a href="/books/">Books</a>
  <a href="/films/">Films</a>
</nav>
```
@y
```html
<nav class="menu">
  <a class="active" aria-current="page" href="/">Home</a>
  <a href="/books/">Books</a>
  <a href="/films/">Films</a>
</nav>
```
@z

@x
When viewing the "books" page, the result is:
@y
When viewing the "books" page, the result is:
@z

@x
```html
<nav class="menu">
  <a href="/">Home</a>
  <a class="active" aria-current="page" href="/books/">Books</a>
  <a href="/films/">Films</a>
</nav>
```
@y
```html
<nav class="menu">
  <a href="/">Home</a>
  <a class="active" aria-current="page" href="/books/">Books</a>
  <a href="/films/">Films</a>
</nav>
```
@z

@x
You will typically render a menu using a partial template. As the active menu entry will be different on each page, use the [`partial`] function to call the template. Do not use the [`partialCached`] function.
@y
You will typically render a menu using a partial template. As the active menu entry will be different on each page, use the [`partial`] function to call the template. Do not use the [`partialCached`] function.
@z

@x
The example above is simplistic. Please see the [menu templates] section for more information.
@y
The example above is simplistic. Please see the [menu templates] section for more information.
@z

@x
[menu templates]: /templates/menu-templates/
@y
[menu templates]: /templates/menu-templates/
@z

@x
[`partial`]: /functions/partials/include/
[`partialCached`]: /functions/partials/includecached/
@y
[`partial`]: /functions/partials/include/
[`partialCached`]: /functions/partials/includecached/
@z
