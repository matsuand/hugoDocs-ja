%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: KeyName
description: Returns the `identifier` property of the given menu entry, falling back to its `name` property. 
categories: []
keywords: []
action:
  related: []
  returnType: string
  signatures: [MENUENTRY.KeyName]
---
@y
---
title: KeyName
description: Returns the `identifier` property of the given menu entry, falling back to its `name` property. 
categories: []
keywords: []
action:
  related: []
  returnType: string
  signatures: [MENUENTRY.KeyName]
---
@z

@x
In this menu definition, the second entry does not contain an `identifier`, so the `Identifier` method returns its `name` property instead:
@y
In this menu definition, the second entry does not contain an `identifier`, so the `Identifier` method returns its `name` property instead:
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
name = 'Contact'
pageRef = '/contact'
weight = 20
{{< /code-toggle >}}
@y
[[menus.main]]
name = 'Contact'
pageRef = '/contact'
weight = 20
{{< /code-toggle >}}
@z

@x
This example uses the `KeyName` method when querying the translation table on a multilingual site, falling back the `name` property if a matching key in the translation table does not exist:
@y
This example uses the `KeyName` method when querying the translation table on a multilingual site, falling back the `name` property if a matching key in the translation table does not exist:
@z

@x
```go-html-template
<ul>
  {{ range .Site.Menus.main }}
    <li><a href="{{ .URL }}">{{ or (T (.KeyName | lower)) .Name }}</a></li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Site.Menus.main }}
    <li><a href="{{ .URL }}">{{ or (T (.KeyName | lower)) .Name }}</a></li>
  {{ end }}
</ul>
```
@z

@x
In the example above, we need to pass the value returned by `.KeyName` through the [`lower`] function because the keys in the translation table are lowercase.
@y
In the example above, we need to pass the value returned by `.KeyName` through the [`lower`] function because the keys in the translation table are lowercase.
@z

@x
[`lower`]: /functions/strings/tolower/
@y
[`lower`]: /functions/strings/tolower/
@z
