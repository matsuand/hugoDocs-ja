%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Menu
description: Returns the identifier of the menu that contains the given menu entry.
categories: []
keywords: []
action:
  related:
    - methods/page/IsMenuCurrent
    - methods/page/HasMenuCurrent
  returnType: string
  signatures: [MENUENTRY.Menu]
---
@y
---
title: Menu
description: Returns the identifier of the menu that contains the given menu entry.
categories: []
keywords: []
action:
  related:
    - methods/page/IsMenuCurrent
    - methods/page/HasMenuCurrent
  returnType: string
  signatures: [MENUENTRY.Menu]
---
@z

@x
```go-html-template
{{ range .Site.Menus.main }}
  {{ .Menu }} → main
{{ end }}
```
@y
```go-html-template
{{ range .Site.Menus.main }}
  {{ .Menu }} → main
{{ end }}
```
@z

@x
Use this method with the [`IsMenuCurrent`] and [`HasMenuCurrent`] methods on a `Page` object to set "active" and "ancestor" classes on a rendered entry. See [this example].
@y
Use this method with the [`IsMenuCurrent`] and [`HasMenuCurrent`] methods on a `Page` object to set "active" and "ancestor" classes on a rendered entry. See [this example].
@z

@x
[`HasMenuCurrent`]: /methods/page/hasmenucurrent/
[`IsMenuCurrent`]: /methods/page/ismenucurrent/
[this example]: /templates/menu-templates/#example
@y
[`HasMenuCurrent`]: /methods/page/hasmenucurrent/
[`IsMenuCurrent`]: /methods/page/ismenucurrent/
[this example]: /templates/menu-templates/#example
@z
