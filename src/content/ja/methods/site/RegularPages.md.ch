%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: RegularPages
description: Returns a collection of all regular pages.
categories: []
keywords: []
action:
  related:
    - methods/site/AllPages
    - methods/site/RegularPages
    - methods/site/Sections
  returnType: page.Pages
  signatures: [SITE.RegularPages]
---
@y
---
title: RegularPages
description: Returns a collection of all regular pages.
categories: []
keywords: []
action:
  related:
    - methods/site/AllPages
    - methods/site/RegularPages
    - methods/site/Sections
  returnType: page.Pages
  signatures: [SITE.RegularPages]
---
@z

@x
```go-html-template
{{ range .Site.RegularPages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Site.RegularPages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z

@x
By default, Hugo sorts page collections by:
@y
By default, Hugo sorts page collections by:
@z

@x
1. The page `weight` as defined in front matter
1. The page `date` as defined in front matter
1. The page `linkTitle` as defined in front matter
1. The file path
@y
1. The page `weight` as defined in front matter
1. The page `date` as defined in front matter
1. The page `linkTitle` as defined in front matter
1. The file path
@z

@x
If the `linkTitle` is not defined, Hugo evaluates the `title` instead.
@y
If the `linkTitle` is not defined, Hugo evaluates the `title` instead.
@z

@x
To change the sort order, use any of the `Pages` [sorting methods]. For example:
@y
To change the sort order, use any of the `Pages` [sorting methods]. For example:
@z

@x
```go-html-template
{{ range .Site.RegularPages.ByTitle }}
  <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Site.RegularPages.ByTitle }}
  <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
{{ end }}
```
@z

@x
[sorting methods]: /methods/pages/
@y
[sorting methods]: /methods/pages/
@z
