%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: continue
description: Used with the range statement, stops the innermost iteration and continues to the next iteration.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/break
    - functions/go-template/range
  returnType:
  signatures: [continue]
---
@y
---
title: continue
description: range ステートメントとともに用いられ、最も内部の繰り返しを停止させて、次の繰り返しを実行します。
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/break
    - functions/go-template/range
  returnType:
  signatures: [continue]
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
    {{ continue }}
  {{ end }}
  <p>{{ . }}</p>
{{ end }}
```
@y
```go-html-template
{{ $s := slice "foo" "bar" "baz" }}
{{ range $s }}
  {{ if eq . "bar" }}
    {{ continue }}
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
<p>baz</p>
```
@y
```html
<p>foo</p>
<p>baz</p>
```
@z

@x
{{% include "functions/go-template/_common/text-template.md" %}}
@y
{{% include "functions/go-template/_common/text-template.md" %}}
@z
