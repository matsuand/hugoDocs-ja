%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: GetTerms
description: Returns a collection of term pages for terms defined on the given page in the given taxonomy, ordered according to the sequence in which they appear in front matter.
categories: []
keywords: []
action:
  related: []
  returnType: page.Pages
  signatures: [PAGE.GetTerms TAXONOMY]
---
@y
---
title: GetTerms
description: Returns a collection of term pages for terms defined on the given page in the given taxonomy, ordered according to the sequence in which they appear in front matter.
categories: []
keywords: []
action:
  related: []
  returnType: page.Pages
  signatures: [PAGE.GetTerms TAXONOMY]
---
@z

@x
Given this front matter:
@y
Given this front matter:
@z

@x
{{< code-toggle file=content/books/les-miserables.md fm=true >}}
title = 'Les Misérables'
tags = ['historical','classic','fiction']
{{< /code-toggle >}}
@y
{{< code-toggle file=content/books/les-miserables.md fm=true >}}
title = 'Les Misérables'
tags = ['historical','classic','fiction']
{{< /code-toggle >}}
@z

@x
This template code:
@y
This template code:
@z

@x
```go-html-template
{{ with .GetTerms "tags" }}
  <p>Tags</p>
  <ul>
    {{ range . }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ with .GetTerms "tags" }}
  <p>Tags</p>
  <ul>
    {{ range . }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
```
@z

@x
Is rendered to:
@y
Is rendered to:
@z

@x
```html
<p>Tags</p>
<ul>
  <li><a href="/tags/historical/">historical</a></li>
  <li><a href="/tags/classic/">classic</a></li>
  <li><a href="/tags/fiction/">fiction</a></li>
</ul>
```
@y
```html
<p>Tags</p>
<ul>
  <li><a href="/tags/historical/">historical</a></li>
  <li><a href="/tags/classic/">classic</a></li>
  <li><a href="/tags/fiction/">fiction</a></li>
</ul>
```
@z
