%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: safe.HTMLAttr
description: Declares the given key-value pair as a safe HTML attribute.
categories: []
keywords: []
action:
  aliases: [safeHTMLAttr]
  related:
    - functions/safe/CSS
    - functions/safe/HTML
    - functions/safe/JS
    - functions/safe/JSStr
    - functions/safe/URL
  returnType: template.HTMLAttr
  signatures: [safe.HTMLAttr INPUT]
aliases: [/functions/safehtmlattr]
---
@y
---
title: safe.HTMLAttr
description: Declares the given key-value pair as a safe HTML attribute.
categories: []
keywords: []
action:
  aliases: [safeHTMLAttr]
  related:
    - functions/safe/CSS
    - functions/safe/HTML
    - functions/safe/JS
    - functions/safe/JSStr
    - functions/safe/URL
  returnType: template.HTMLAttr
  signatures: [safe.HTMLAttr INPUT]
aliases: [/functions/safehtmlattr]
---
@z

@x
Given a site configuration that contains this menu entry:
@y
Given a site configuration that contains this menu entry:
@z

@x
{{< code-toggle file=hugo >}}
[[menus.main]]
  name = "IRC"
  url = "irc://irc.freenode.net/#golang"
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[[menus.main]]
  name = "IRC"
  url = "irc://irc.freenode.net/#golang"
{{< /code-toggle >}}
@z

@x
Attempting to use the `url` value directly in an attribute:
@y
Attempting to use the `url` value directly in an attribute:
@z

@x
```go-html-template
{{ range site.Menus.main }}
  <a href="{{ .URL }}">{{ .Name }}</a>
{{ end }}
```
@y
```go-html-template
{{ range site.Menus.main }}
  <a href="{{ .URL }}">{{ .Name }}</a>
{{ end }}
```
@z

@x
Will produce:
@y
Will produce:
@z

@x
```html
<a href="#ZgotmplZ">IRC</a>
```
@y
```html
<a href="#ZgotmplZ">IRC</a>
```
@z

@x
`ZgotmplZ` is a special value, inserted by Go's [template/html] package, that indicates that unsafe content reached a CSS or URL context.
@y
`ZgotmplZ` is a special value, inserted by Go's [template/html] package, that indicates that unsafe content reached a CSS or URL context.
@z

@x
To indicate that the HTML attribute is safe:
@y
To indicate that the HTML attribute is safe:
@z

@x
```go-html-template
{{ range site.Menus.main }}
  <a {{ printf "href=%q" .URL | safeHTMLAttr }}>{{ .Name }}</a>
{{ end }}
```
@y
```go-html-template
{{ range site.Menus.main }}
  <a {{ printf "href=%q" .URL | safeHTMLAttr }}>{{ .Name }}</a>
{{ end }}
```
@z

@x
{{% note %}}
As demonstrated above, you must pass the HTML attribute name _and_ value through the function. Applying `safeHTMLAttr` to the attribute value has no effect.
{{% /note %}}
@y
{{% note %}}
As demonstrated above, you must pass the HTML attribute name _and_ value through the function. Applying `safeHTMLAttr` to the attribute value has no effect.
{{% /note %}}
@z

@x
[template/html]: https://pkg.go.dev/html/template
@y
[template/html]: https://pkg.go.dev/html/template
@z
