%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Summary
description: Returns the content summary of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Truncated
    - methods/page/Description
  returnType: template.HTML
  signatures: [PAGE.Summary]
---
@y
---
title: Summary
description: Returns the content summary of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Truncated
    - methods/page/Description
  returnType: template.HTML
  signatures: [PAGE.Summary]
---
@z

@x
There are three ways to define the [content summary]:
@y
There are three ways to define the [content summary]:
@z

@x
1. Let Hugo create the summary based on the first 70 words. You can change the number of words by setting the `summaryLength` in your site configuration.
2. Manually split the content with a `<--more-->` tag in Markdown. Everything before the tag is included in the summary.
3. Create a `summary` field in front matter.
@y
1. Let Hugo create the summary based on the first 70 words. You can change the number of words by setting the `summaryLength` in your site configuration.
2. Manually split the content with a `<--more-->` tag in Markdown. Everything before the tag is included in the summary.
3. Create a `summary` field in front matter.
@z

@x
To list the pages in a section with a summary beneath each link:
@y
To list the pages in a section with a summary beneath each link:
@z

@x
```go-html-template
{{ range .Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ .Summary }}
{{ end }}
```
@y
```go-html-template
{{ range .Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ .Summary }}
{{ end }}
```
@z

@x
[content summary]: /content-management/summaries/
@y
[content summary]: /content-management/summaries/
@z
