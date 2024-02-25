%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: AllPages
description: Returns a collection of all pages in all languages.
categories: []
keywords: []
action:
  related:
    - methods/site/Pages
    - methods/site/RegularPages
    - methods/site/Sections
  returnType: page.Pages
  signatures: [SITE.AllPages]
---
@y
---
title: AllPages
description: Returns a collection of all pages in all languages.
categories: []
keywords: []
action:
  related:
    - methods/site/Pages
    - methods/site/RegularPages
    - methods/site/Sections
  returnType: page.Pages
  signatures: [SITE.AllPages]
---
@z

@x
This method returns all page [kinds] in all languages. That includes the home page, section pages, taxonomy pages, term pages, and regular pages.
@y
This method returns all page [kinds] in all languages. That includes the home page, section pages, taxonomy pages, term pages, and regular pages.
@z

@x
In most cases you should use the [`RegularPages`] method instead.
@y
In most cases you should use the [`RegularPages`] method instead.
@z

@x
[`RegularPages`]: /methods/site/regularpages/
[kinds]: /getting-started/glossary/#page-kind
@y
[`RegularPages`]: /methods/site/regularpages/
[kinds]: /getting-started/glossary/#page-kind
@z

@x
```go-html-template
{{ range .Site.AllPages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Site.AllPages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z
