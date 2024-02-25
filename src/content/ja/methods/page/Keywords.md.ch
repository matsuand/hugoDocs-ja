%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Keywords
description: Returns a slice of keywords as defined in front matter.
categories: []
keywords: []
action:
  related: []
  returnType: '[]string'
  signatures: [PAGE.Keywords]
---
@y
---
title: Keywords
description: Returns a slice of keywords as defined in front matter.
categories: []
keywords: []
action:
  related: []
  returnType: '[]string'
  signatures: [PAGE.Keywords]
---
@z

@x
By default, Hugo evaluates the keywords when creating collections of [related content].
@y
By default, Hugo evaluates the keywords when creating collections of [related content].
@z

@x
[related content]: /content-management/related/
@y
[related content]: /content-management/related/
@z

@x
{{< code-toggle file=content/recipes/sushi.md fm=true >}}
title = 'How to make spicy tuna hand rolls'
keywords = ['tuna','sriracha','nori','rice']
{{< /code-toggle >}}
@y
{{< code-toggle file=content/recipes/sushi.md fm=true >}}
title = 'How to make spicy tuna hand rolls'
keywords = ['tuna','sriracha','nori','rice']
{{< /code-toggle >}}
@z

@x
To list the keywords within a template:
@y
To list the keywords within a template:
@z

@x
```go-html-template
{{ range .Keywords }}
  {{ . }}
{{ end }}
```
@y
```go-html-template
{{ range .Keywords }}
  {{ . }}
{{ end }}
```
@z

@x
Or use the [delimit] function:
@y
Or use the [delimit] function:
@z

@x
```go-html-template
{{ delimit .Keywords ", " ", and " }} → tuna, sriracha, nori, and rice
```
@y
```go-html-template
{{ delimit .Keywords ", " ", and " }} → tuna, sriracha, nori, and rice
```
@z

@x
[delimit]: /functions/collections/delimit/
@y
[delimit]: /functions/collections/delimit/
@z

@x
Keywords are also a useful [taxonomy]:
@y
Keywords are also a useful [taxonomy]:
@z

@x
{{< code-toggle file=hugo >}}
[taxonomies]
tag = 'tags'
keyword = 'keywords'
category = 'categories'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[taxonomies]
tag = 'tags'
keyword = 'keywords'
category = 'categories'
{{< /code-toggle >}}
@z

@x
[taxonomy]: /content-management/taxonomies/
@y
[taxonomy]: /content-management/taxonomies/
@z
