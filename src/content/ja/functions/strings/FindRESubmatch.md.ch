%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.FindRESubmatch
description: Returns a slice of all successive matches of the regular expression. Each element is a slice of strings holding the text of the leftmost match of the regular expression and the matches, if any, of its subexpressions.
categories: []
keywords: []
action:
  aliases: [findRESubmatch]
  related:
    - functions/strings/FindRE
    - functions/strings/Replace
    - functions/strings/ReplaceRE
  returnType: '[][]string'
  signatures: ['strings.FindRESubmatch PATTERN INPUT [LIMIT]']
aliases: [/functions/findresubmatch]
---
@y
---
title: strings.FindRESubmatch
description: Returns a slice of all successive matches of the regular expression. Each element is a slice of strings holding the text of the leftmost match of the regular expression and the matches, if any, of its subexpressions.
categories: []
keywords: []
action:
  aliases: [findRESubmatch]
  related:
    - functions/strings/FindRE
    - functions/strings/Replace
    - functions/strings/ReplaceRE
  returnType: '[][]string'
  signatures: ['strings.FindRESubmatch PATTERN INPUT [LIMIT]']
aliases: [/functions/findresubmatch]
---
@z

@x
By default, `findRESubmatch` finds all matches. You can limit the number of matches with an optional LIMIT argument. A return value of nil indicates no match.
@y
By default, `findRESubmatch` finds all matches. You can limit the number of matches with an optional LIMIT argument. A return value of nil indicates no match.
@z

@x
{{% include "functions/_common/regular-expressions.md" %}}
@y
{{% include "functions/_common/regular-expressions.md" %}}
@z

@x
## Demonstrative examples
@y
## Demonstrative examples
@z

@x
```go-html-template
{{ findRESubmatch `a(x*)b` "-ab-" }} → [["ab" ""]]
{{ findRESubmatch `a(x*)b` "-axxb-" }} → [["axxb" "xx"]]
{{ findRESubmatch `a(x*)b` "-ab-axb-" }} → [["ab" ""] ["axb" "x"]]
{{ findRESubmatch `a(x*)b` "-axxb-ab-" }} → [["axxb" "xx"] ["ab" ""]]
{{ findRESubmatch `a(x*)b` "-axxb-ab-" 1 }} → [["axxb" "xx"]]
```
@y
```go-html-template
{{ findRESubmatch `a(x*)b` "-ab-" }} → [["ab" ""]]
{{ findRESubmatch `a(x*)b` "-axxb-" }} → [["axxb" "xx"]]
{{ findRESubmatch `a(x*)b` "-ab-axb-" }} → [["ab" ""] ["axb" "x"]]
{{ findRESubmatch `a(x*)b` "-axxb-ab-" }} → [["axxb" "xx"] ["ab" ""]]
{{ findRESubmatch `a(x*)b` "-axxb-ab-" 1 }} → [["axxb" "xx"]]
```
@z

@x
## Practical example
@y
## Practical example
@z

@x
This Markdown:
@y
This Markdown:
@z

@x
```text
- [Example](https://example.org)
- [Hugo](https://gohugo.io)
```
@y
```text
- [Example](https://example.org)
- [Hugo](https://gohugo.io)
```
@z

@x
Produces this HTML:
@y
Produces this HTML:
@z

@x
```html
<ul>
  <li><a href="https://example.org">Example</a></li>
  <li><a href="https://gohugo.io">Hugo</a></li>
</ul>
```
@y
```html
<ul>
  <li><a href="https://example.org">Example</a></li>
  <li><a href="https://gohugo.io">Hugo</a></li>
</ul>
```
@z

@x
To match the anchor elements, capturing the link destination and text:
@y
To match the anchor elements, capturing the link destination and text:
@z

@x
```go-html-template
{{ $regex := `<a\s*href="(.+?)">(.+?)</a>` }}
{{ $matches := findRESubmatch $regex .Content }}
```
@y
```go-html-template
{{ $regex := `<a\s*href="(.+?)">(.+?)</a>` }}
{{ $matches := findRESubmatch $regex .Content }}
```
@z

@x
Viewed as JSON, the data structure of `$matches` in the code above is:
@y
Viewed as JSON, the data structure of `$matches` in the code above is:
@z

@x
```json
[
  [
    "<a href=\"https://example.org\"></a>Example</a>",
    "https://example.org",
    "Example"
  ],
  [
    "<a href=\"https://gohugo.io\">Hugo</a>",
    "https://gohugo.io",
    "Hugo"
  ]
]
```
@y
```json
[
  [
    "<a href=\"https://example.org\"></a>Example</a>",
    "https://example.org",
    "Example"
  ],
  [
    "<a href=\"https://gohugo.io\">Hugo</a>",
    "https://gohugo.io",
    "Hugo"
  ]
]
```
@z

@x
To render the `href` attributes:
@y
To render the `href` attributes:
@z

@x
```go-html-template
{{ range $matches }}
  {{ index . 1 }}
{{ end }}
```
@y
```go-html-template
{{ range $matches }}
  {{ index . 1 }}
{{ end }}
```
@z

@x
Result:
@y
Result:
@z

@x
```text
https://example.org
https://gohugo.io
```
@y
```text
https://example.org
https://gohugo.io
```
@z

@x
{{% note %}}
You can write and test your regular expression using [regex101.com](https://regex101.com/). Be sure to select the Go flavor before you begin.
{{% /note %}}
@y
{{% note %}}
You can write and test your regular expression using [regex101.com](https://regex101.com/). Be sure to select the Go flavor before you begin.
{{% /note %}}
@z
