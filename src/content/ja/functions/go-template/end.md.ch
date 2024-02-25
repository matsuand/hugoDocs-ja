%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: end
description: Terminates if, with, range, block, and define statements.
categories: []
keywords: []
@y
title: end
description: if, with, range, block, define の各ステートメントを終了します。
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
Use with the [`with`] statement:
@y
以下では [`with`] ステートメントとともに用います。
@z

@x
```go-html-template
{{ $var := "foo" }}
{{ with $var }}
  {{ . }} → foo
{{ end }}
```
@y
```go-html-template
{{ $var := "foo" }}
{{ with $var }}
  {{ . }} → foo
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
{{ end }}
```
@y
```go-html-template
{{ $var := slice 1 2 3 }}
{{ range $var }}
  {{ . }} → 1 2 3 
{{ end }}
```
@z

@x
Use with the [`block`] statement:
@y
以下では [`block`] ステートメントとともに用います。
@z

@x
```go-html-template
{{ block "main" . }}{{ end }}
```
@y
```go-html-template
{{ block "main" . }}{{ end }}
```
@z

@x
Use with the [`define`] statement:
@y
以下では [`define`] ステートメントとともに用います。
@z

@x
```go-html-template
{{ define "main" }}
  {{ print "this is the main section" }}
{{ end }}
```
@y
```go-html-template
{{ define "main" }}
  {{ print "this is the main section" }}
{{ end }}
```
@z

@x
{{% include "functions/go-template/_common/text-template.md" %}}
@y
{{% include "functions/go-template/_common/text-template.md" %}}
@z

% snip links...
