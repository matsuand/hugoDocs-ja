%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: else
description: Begins an alternate block for if, with, and range statements.
categories: []
keywords: []
@y
title: else
description: if、with、range の各ステートメントにおける別条件のブロックを開始します。
categories: []
keywords: []
@z

@x
Use with the [`if`] statement:
@y
以下では [`if`] ステートメントとともに用います。
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
Use with the [`with`] statement:
@y
以下では [`with`] ステートメントとともに用います。
@z

@x
```go-html-template
{{ $var := "foo" }}
{{ with $var }}
  {{ . }} → foo
{{ else }}
  {{ print "var is falsy" }}
{{ end }}
```
@y
```go-html-template
{{ $var := "foo" }}
{{ with $var }}
  {{ . }} → foo
{{ else }}
  {{ print "var is falsy" }}
{{ end }}
```
@z

@x
Use with the [`range`] statement:
@y
以下では [`range`] ステートメントとともに用います。
@z

@x
```go-html-template
{{ $var := slice 1 2 3 }}
{{ range $var }}
  {{ . }} → 1 2 3 
{{ else }}
  {{ print "var is falsy" }}
{{ end }}
```
@y
```go-html-template
{{ $var := slice 1 2 3 }}
{{ range $var }}
  {{ . }} → 1 2 3 
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

% snip links...
