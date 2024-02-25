%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: if
description: Executes the block if the expression is truthy.
categories: []
keywords: []
@y
title: if
description: 式が真値 (truthy) である場合にブロックを実行します。
categories: []
keywords: []
@z

@x
{{% include "functions/go-template/_common/truthy-falsy.md" %}}
@y
{{% include "functions/go-template/_common/truthy-falsy.md" %}}
@z

@x
```go-html-template
{{ $var := "foo" }}
{{ if $var }}
  {{ $var }} → foo
{{ end }}
```
@y
```go-html-template
{{ $var := "foo" }}
{{ if $var }}
  {{ $var }} → foo
{{ end }}
```
@z

@x
Use with the [`else`] statement:
@y
以下では [`else`] ステートメントとともに用います。
@z

@x
```go-html-template
{{ $var := "foo" }}
{{ if $var }}
  {{ $var }} → foo
{{ else }}
  {{ print "var is falsy" }}
{{ end }}
```
@y
```go-html-template
{{ $var := "foo" }}
{{ if $var }}
  {{ $var }} → foo
{{ else }}
  {{ print "var is falsy" }}
{{ end }}
```
@z

@x
Use `else if` to check multiple conditions.
@y
複数の条件を切り分けるには `else if` を使います。
@z

@x
```go-html-template
{{ $var := 12 }}
{{ if eq $var 6 }}
  {{ print "var is 6" }}
{{ else if eq $var 7 }}
  {{ print "var is 7" }}
{{ else if eq $var 42 }}
  {{ print "var is 42" }}
{{ else }}
  {{ print "var is something else" }}
{{ end }}
```
@y
```go-html-template
{{ $var := 12 }}
{{ if eq $var 6 }}
  {{ print "var is 6" }}
{{ else if eq $var 7 }}
  {{ print "var is 7" }}
{{ else if eq $var 42 }}
  {{ print "var is 42" }}
{{ else }}
  {{ print "var is something else" }}
{{ end }}
```
@z

@x
{{% include "functions/go-template/_common/text-template.md" %}}
@y
{{% include "functions/go-template/_common/text-template.md" %}}
@z

%snip links...
