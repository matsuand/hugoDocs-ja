%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Aliases
description: Returns the URL aliases as defined in front matter.
categories: []
keywords: []
action:
  related: []
  returnType: '[]string'
  signatures: [PAGE.Aliases]
---
@y
---
title: Aliases
description: Returns the URL aliases as defined in front matter.
categories: []
keywords: []
action:
  related: []
  returnType: '[]string'
  signatures: [PAGE.Aliases]
---
@z

@x
The `Aliases` method on a `Page` object returns the URL [aliases] as defined in front matter.
@y
`Page` オブジェクトに対する `Aliases` メソッドは、フロントマターに定義されている URL の [aliases] (エイリアス) を返します。
@z

@x
For example:
@y
たとえば以下のとおりです。
@z

@x
{{< code-toggle file=content/about.md fm=true >}}
title = 'About'
aliases = ['/old-url','/really-old-url']
{{< /code-toggle >}}
@y
{{< code-toggle file=content/about.md fm=true >}}
title = 'About'
aliases = ['/old-url','/really-old-url']
{{< /code-toggle >}}
@z

@x
To list the aliases:
@y
エイリアスを一覧を得るには以下のようにします。
@z

@x
```go-html-template
{{ range .Aliases }}
  {{ . }}
{{ end }}
```
@y
```go-html-template
{{ range .Aliases }}
  {{ . }}
{{ end }}
```
@z

@x
[aliases]: /content-management/urls/#aliases
@y
[aliases]: /content-management/urls/#aliases
@z
