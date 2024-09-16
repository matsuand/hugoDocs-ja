%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Summary
description: Returns the summary of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Truncated
    - methods/page/Content
    - methods/page/ContentWithoutSummary
    - methods/page/Description
  returnType: template.HTML
  signatures: [PAGE.Summary]
---
@y
---
title: Summary
description: Returns the summary of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Truncated
    - methods/page/Content
    - methods/page/ContentWithoutSummary
    - methods/page/Description
  returnType: template.HTML
  signatures: [PAGE.Summary]
---
@z

@x
<!-- Do not remove the manual summary divider below. -->
<!-- If you do, you will break its first literal usage on this page. -->
<!--more-->
@y
<!-- Do not remove the manual summary divider below. -->
<!-- If you do, you will break its first literal usage on this page. -->
<!--more-->
@z

@x
You can define a [summary] manually, in front matter, or automatically. A manual summary takes precedence over a front matter summary, and a front matter summary takes precedence over an automatic summary.
@y
You can define a [summary] manually, in front matter, or automatically. A manual summary takes precedence over a front matter summary, and a front matter summary takes precedence over an automatic summary.
@z

@x
[summary]: /content-management/summaries/
@y
[summary]: /content-management/summaries/
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
Depending on content length and how you define the summary, the summary may be equivalent to the content itself. To determine whether the content length exceeds the summary length, use the [`Truncated`] method on a `Page` object. This is useful for conditionally rendering a “read more” link:
@y
Depending on content length and how you define the summary, the summary may be equivalent to the content itself. To determine whether the content length exceeds the summary length, use the [`Truncated`] method on a `Page` object. This is useful for conditionally rendering a “read more” link:
@z

@x
[`Truncated`]: /methods/page/truncated
@y
[`Truncated`]: /methods/page/truncated
@z

@x
```go-html-template
{{ range .Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ .Summary }}
  {{ if .Truncated }}
    <a href="{{ .RelPermalink }}">Read more...</a>
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ range .Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ .Summary }}
  {{ if .Truncated }}
    <a href="{{ .RelPermalink }}">Read more...</a>
  {{ end }}
{{ end }}
```
@z

@x
{{% note %}}
The `Truncated` method returns `false` if you define the summary in front matter.
{{% /note %}}
@y
{{% note %}}
The `Truncated` method returns `false` if you define the summary in front matter.
{{% /note %}}
@z
