%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: break
description: Used with the range statement, stops the innermost iteration and bypasses all remaining iterations.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/continue
    - functions/go-template/range
  returnType:
  signatures: [break]
---
@y
---
title: break
description: range ステートメントとともに用いられ、最も内部の繰り返しを停止させて、それ以降の繰り返しをスキップします。
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/continue
    - functions/go-template/range
  returnType:
  signatures: [break]
---
@z

@x
This template code:
@y
テンプレートが以下であるとします。
@z

@x
```go-html-template
{{ $s := slice "foo" "bar" "baz" }}
{{ range $s }}
  {{ if eq . "bar" }}
    {{ break }}
  {{ end }}
  <p>{{ . }}</p>
{{ end }}
```
@y
```go-html-template
{{ $s := slice "foo" "bar" "baz" }}
{{ range $s }}
  {{ if eq . "bar" }}
    {{ break }}
  {{ end }}
  <p>{{ . }}</p>
{{ end }}
```
@z

@x
Is rendered to:
@y
これは以下のようにレンダリングされます。
@z

@x
```html
<p>foo</p>
```
@y
```html
<p>foo</p>
```
@z

@x
{{% include "functions/go-template/_common/text-template.md" %}}
@y
{{% include "functions/go-template/_common/text-template.md" %}}
@z
