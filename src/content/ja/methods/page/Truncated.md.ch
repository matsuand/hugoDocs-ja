%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Truncated
description: Reports whether the content length exceeds the summary length.
categories: []
keywords: []
action:
  related:
    - methods/page/Summary
  returnType: bool
  signatures: [PAGE.Truncated]
---
@y
---
title: Truncated
description: Reports whether the content length exceeds the summary length.
categories: []
keywords: []
action:
  related:
    - methods/page/Summary
  returnType: bool
  signatures: [PAGE.Truncated]
---
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
The `Truncated` method returns `true` if the content length exceeds the summary length. This is useful for conditionally rendering a "read more" link:
@y
The `Truncated` method returns `true` if the content length exceeds the summary length. This is useful for conditionally rendering a "read more" link:
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
