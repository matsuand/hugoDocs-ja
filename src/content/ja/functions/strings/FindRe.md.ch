%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.FindRE
description: Returns a slice of strings that match the regular expression.
categories: []
keywords: []
action:
  aliases: [findRE]
  related:
    - functions/strings/FindRESubmatch
    - functions/strings/Replace
    - functions/strings/ReplaceRE
  returnType: '[]string'
  signatures: ['strings.FindRE PATTERN INPUT [LIMIT]']
aliases: [/functions/findre]
---
By default, `findRE` finds all matches. You can limit the number of matches with an optional LIMIT argument.
@y
---
title: strings.FindRE
description: Returns a slice of strings that match the regular expression.
categories: []
keywords: []
action:
  aliases: [findRE]
  related:
    - functions/strings/FindRESubmatch
    - functions/strings/Replace
    - functions/strings/ReplaceRE
  returnType: '[]string'
  signatures: ['strings.FindRE PATTERN INPUT [LIMIT]']
aliases: [/functions/findre]
---
By default, `findRE` finds all matches. You can limit the number of matches with an optional LIMIT argument.
@z

@x
{{% include "functions/_common/regular-expressions.md" %}}
@y
{{% include "functions/_common/regular-expressions.md" %}}
@z

@x
This example returns a slice of all second level headings (`h2` elements) within the rendered `.Content`:
@y
This example returns a slice of all second level headings (`h2` elements) within the rendered `.Content`:
@z

@x
```go-html-template
{{ findRE `(?s)<h2.*?>.*?</h2>` .Content }}
```
@y
```go-html-template
{{ findRE `(?s)<h2.*?>.*?</h2>` .Content }}
```
@z

@x
The `s` flag causes `.` to match `\n` as well, allowing us to find an `h2` element that contains newlines.
@y
The `s` flag causes `.` to match `\n` as well, allowing us to find an `h2` element that contains newlines.
@z

@x
To limit the number of matches to one:
@y
To limit the number of matches to one:
@z

@x
```go-html-template
{{ findRE `(?s)<h2.*?>.*?</h2>` .Content 1 }}
```
@y
```go-html-template
{{ findRE `(?s)<h2.*?>.*?</h2>` .Content 1 }}
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
