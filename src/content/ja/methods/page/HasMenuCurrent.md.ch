%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: HasMenuCurrent
description: Reports whether the given page object matches the page object associated with one of the child menu entries under the given menu entry in the given menu.
categories: []
keywords: []
action:
  related:
    - methods/page/IsMenuCurrent
  returnType: bool
  signatures: [PAGE.HasMenuCurrent MENU MENUENTRY]
aliases: [/functions/hasmenucurrent]
---
@y
---
title: HasMenuCurrent
description: Reports whether the given page object matches the page object associated with one of the child menu entries under the given menu entry in the given menu.
categories: []
keywords: []
action:
  related:
    - methods/page/IsMenuCurrent
  returnType: bool
  signatures: [PAGE.HasMenuCurrent MENU MENUENTRY]
aliases: [/functions/hasmenucurrent]
---
@z

@x
If the page object associated with the menu entry is a section, this method also returns `true` for any descendant of that section.
@y
If the page object associated with the menu entry is a section, this method also returns `true` for any descendant of that section.
@z

@x
```go-html-template
{{ $currentPage := . }}
{{ range site.Menus.main }}
  {{ if $currentPage.IsMenuCurrent .Menu . }}
    <a class="active" aria-current="page" href="{{ .URL }}">{{ .Name }}</a>
  {{ else if $currentPage.HasMenuCurrent .Menu . }}
    <a class="ancestor" aria-current="true" href="{{ .URL }}">{{ .Name }}</a>
  {{ else }}
    <a href="{{ .URL }}">{{ .Name }}</a>
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ $currentPage := . }}
{{ range site.Menus.main }}
  {{ if $currentPage.IsMenuCurrent .Menu . }}
    <a class="active" aria-current="page" href="{{ .URL }}">{{ .Name }}</a>
  {{ else if $currentPage.HasMenuCurrent .Menu . }}
    <a class="ancestor" aria-current="true" href="{{ .URL }}">{{ .Name }}</a>
  {{ else }}
    <a href="{{ .URL }}">{{ .Name }}</a>
  {{ end }}
{{ end }}
```
@z

@x
See [menu templates] for a complete example.
@y
See [menu templates] for a complete example.
@z

@x
[menu templates]: /templates/menu-templates/#example
@y
[menu templates]: /templates/menu-templates/#example
@z
