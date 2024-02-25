%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: IsMenuCurrent
description: Reports whether the given page object matches the page object associated with the given menu entry in the given menu.
categories: []
keywords: []
action:
  related:
    - methods/page/HasMenuCurrent
  returnType: bool
  signatures: [PAGE.IsMenuCurrent MENU MENUENTRY]
aliases: [/functions/ismenucurrent]
---
@y
---
title: IsMenuCurrent
description: Reports whether the given page object matches the page object associated with the given menu entry in the given menu.
categories: []
keywords: []
action:
  related:
    - methods/page/HasMenuCurrent
  returnType: bool
  signatures: [PAGE.IsMenuCurrent MENU MENUENTRY]
aliases: [/functions/ismenucurrent]
---
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
