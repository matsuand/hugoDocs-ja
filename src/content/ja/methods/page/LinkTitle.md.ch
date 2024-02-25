%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: LinkTitle
description: Returns the link title of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Title
  returnType: string
  signatures: [PAGE.LinkTitle]
---
@y
---
title: LinkTitle
description: Returns the link title of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Title
  returnType: string
  signatures: [PAGE.LinkTitle]
---
@z

@x
The `LinkTitle` method returns the `linkTitle` field as defined in front matter, falling back to the value returned by the [`Title`] method.
@y
The `LinkTitle` method returns the `linkTitle` field as defined in front matter, falling back to the value returned by the [`Title`] method.
@z

@x
[`Title`]: /methods/page/title/
@y
[`Title`]: /methods/page/title/
@z

@x
{{< code-toggle file=content/articles/healthy-desserts.md fm=true >}}
title = 'Seventeen delightful recipes for healthy desserts'
linkTitle = 'Dessert recipes'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/articles/healthy-desserts.md fm=true >}}
title = 'Seventeen delightful recipes for healthy desserts'
linkTitle = 'Dessert recipes'
{{< /code-toggle >}}
@z

@x
```go-html-template
{{ .LinkTitle }} → Dessert recipes
```
@y
```go-html-template
{{ .LinkTitle }} → Dessert recipes
```
@z

@x
As demonstrated above, defining a link title in front matter is advantageous when the page title is long. Use it when generating anchor elements in your templates:
@y
As demonstrated above, defining a link title in front matter is advantageous when the page title is long. Use it when generating anchor elements in your templates:
@z

@x
```go-html-template
<a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
```
@y
```go-html-template
<a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
```
@z
