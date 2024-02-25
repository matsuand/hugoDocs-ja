%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: define
description: Defines a template.
categories: []
keywords: []
@y
title: define
description: テンプレートを定義します。
categories: []
keywords: []
@z

@x
Use with the [`block`] statement:
@y
以下では [`block`] ステートメントとともに用います。
@z

@x
```go-html-template
{{ block "main" . }}
  {{ print "default value if 'main' template is empty" }}
{{ end }}
@y
```go-html-template
{{ block "main" . }}
  {{ print "default value if 'main' template is empty" }}
{{ end }}
@z

@x
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
{{ end }}
```
@y
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
{{ end }}
```
@z

@x
Use with the [`partial`] function:
@y
以下では [`partial`] 関数とともに用います。
@z

@x
```go-html-template
{{ partial "inline/foo.html" (dict "answer" 42) }}
@y
```go-html-template
{{ partial "inline/foo.html" (dict "answer" 42) }}
@z

@x
{{ define "partials/inline/foo.html" }}
  {{ printf "The answer is %v." .answer }}
{{ end }}
```
@y
{{ define "partials/inline/foo.html" }}
  {{ printf "The answer is %v." .answer }}
{{ end }}
```
@z

@x
Use with the [`template`] function:
@y
以下では [`template`] 関数とともに用います。
@z

@x
```go-html-template
{{ template "foo" (dict "answer" 42) }}
@y
```go-html-template
{{ template "foo" (dict "answer" 42) }}
@z

@x
{{ define "foo" }}
  {{ printf "The answer is %v." .answer }}
{{ end }}
```
@y
{{ define "foo" }}
  {{ printf "The answer is %v." .answer }}
{{ end }}
```
@z

% snip links...

@x
{{% include "functions/go-template/_common/text-template.md" %}}
@y
{{% include "functions/go-template/_common/text-template.md" %}}
@z
