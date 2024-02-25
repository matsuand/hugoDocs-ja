%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: PlainWords
description: Calls the Plain method, splits the result into a slice of words, and returns the slice.
categories: []
keywords: []
action:
  related:
    - methods/page/Content
    - methods/page/RawContent
    - methods/page/Plain
  returnType: '[]string'
  signatures: [PAGE.PlainWords]
---
@y
---
title: PlainWords
description: Calls the Plain method, splits the result into a slice of words, and returns the slice.
categories: []
keywords: []
action:
  related:
    - methods/page/Content
    - methods/page/RawContent
    - methods/page/Plain
  returnType: '[]string'
  signatures: [PAGE.PlainWords]
---
@z

@x
The `PlainWords` method on a `Page` object calls the [`Plain`] method, then uses Go's [`strings.Fields`] function to split the result into words.
@y
The `PlainWords` method on a `Page` object calls the [`Plain`] method, then uses Go's [`strings.Fields`] function to split the result into words.
@z

@x
{{% note %}}
_Fields splits the string s around each instance of one or more consecutive white space characters, as defined by [`unicode.IsSpace`], returning a slice of substrings of s or an empty slice if s contains only white space._
@y
{{% note %}}
_Fields splits the string s around each instance of one or more consecutive white space characters, as defined by [`unicode.IsSpace`], returning a slice of substrings of s or an empty slice if s contains only white space._
@z

@x
[`unicode.IsSpace`]: https://pkg.go.dev/unicode#IsSpace
{{% /note %}}
@y
[`unicode.IsSpace`]: https://pkg.go.dev/unicode#IsSpace
{{% /note %}}
@z

@x
As a result, elements within the slice may contain leading or trailing punctuation.
@y
As a result, elements within the slice may contain leading or trailing punctuation.
@z

@x
```go-html-template
{{ .PlainWords }}
```
@y
```go-html-template
{{ .PlainWords }}
```
@z

@x
To determine the approximate number of unique words on a page:
@y
To determine the approximate number of unique words on a page:
@z

@x
```go-html-template
{{ .PlainWords | uniq }} → 42
```
@y
```go-html-template
{{ .PlainWords | uniq }} → 42
```
@z

@x
[`Plain`]: /methods/page/plain/
[`strings.Fields`]: https://pkg.go.dev/strings#Fields
@y
[`Plain`]: /methods/page/plain/
[`strings.Fields`]: https://pkg.go.dev/strings#Fields
@z
