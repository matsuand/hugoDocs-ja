%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: URL
description: Returns the relative permalink of the page associated with the given menu entry, else its `url` property.
categories: []
keywords: []
action:
  related: []
  returnType: string
  signatures: [MENUENTRY.URL]
---
@y
---
title: URL
description: Returns the relative permalink of the page associated with the given menu entry, else its `url` property.
categories: []
keywords: []
action:
  related: []
  returnType: string
  signatures: [MENUENTRY.URL]
---
@z

@x
For menu entries associated with a page, the `URL` method returns the page's [`RelPermalink`], otherwise it returns the entry's `url` property.
@y
For menu entries associated with a page, the `URL` method returns the page's [`RelPermalink`], otherwise it returns the entry's `url` property.
@z

@x
```go-html-template
<ul>
  {{ range .Site.Menus.main }}
    <li><a href="{{ .URL }}">{{ .Name }}</a></li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Site.Menus.main }}
    <li><a href="{{ .URL }}">{{ .Name }}</a></li>
  {{ end }}
</ul>
```
@z

@x
[`RelPermalink`]: /methods/page/relpermalink/
@y
[`RelPermalink`]: /methods/page/relpermalink/
@z
