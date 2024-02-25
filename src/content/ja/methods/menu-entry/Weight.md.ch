%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Weight
description:  Returns the `weight` property of the given menu entry.   
categories: []
keywords: []
action:
  related: []
  returnType: int
  signatures: [MENUENTRY.Weight]
---
@y
---
title: Weight
description:  Returns the `weight` property of the given menu entry.   
categories: []
keywords: []
action:
  related: []
  returnType: int
  signatures: [MENUENTRY.Weight]
---
@z

@x
If you define the menu entry [automatically], the `Weight` method returns the page’s [`Weight`].
@y
If you define the menu entry [automatically], the `Weight` method returns the page’s [`Weight`].
@z

@x
If you define the menu entry [in front matter] or [in site configuration], the `Weight` method returns the `weight` property, falling back to the page’s `Weight`.
@y
If you define the menu entry [in front matter] or [in site configuration], the `Weight` method returns the `weight` property, falling back to the page’s `Weight`.
@z

@x
[`Weight`]: /methods/page/weight/
[automatically]: /content-management/menus/#define-automatically
[in front matter]: /content-management/menus/#define-in-front-matter
[in site configuration]: /content-management/menus/#define-in-site-configuration
@y
[`Weight`]: /methods/page/weight/
[automatically]: /content-management/menus/#define-automatically
[in front matter]: /content-management/menus/#define-in-front-matter
[in site configuration]: /content-management/menus/#define-in-site-configuration
@z

@x
In this contrived example, we limit the number of menu entries based on weight:
@y
In this contrived example, we limit the number of menu entries based on weight:
@z

@x
```go-html-template
<ul>
  {{ range .Site.Menus.main }}
    {{ if le .Weight 42 }}
      <li><a href="{{ .URL }}">{{ .Name }}</a></li>
    {{ end }}
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Site.Menus.main }}
    {{ if le .Weight 42 }}
      <li><a href="{{ .URL }}">{{ .Name }}</a></li>
    {{ end }}
  {{ end }}
</ul>
```
@z
