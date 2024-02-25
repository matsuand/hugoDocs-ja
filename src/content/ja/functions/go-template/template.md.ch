%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: template
description: Executes the given template, optionally passing context.
categories: []
keywords: []
@y
title: template
description: 指定されたテンプレートを実行します。任意引数としてコンテキストを受け付けます。
categories: []
keywords: []
@z

@x
Use the `template` function to execute [internal templates]. For example:
@y
`template` 関数を使って [内部テンプレート][internal templates] (internal template) を実行します。
たとえば以下のとおりです。
@z

@x
```go-html-template
{{ range (.Paginate .Pages).Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
{{ template "_internal/pagination.html" . }}
```
@y
```go-html-template
{{ range (.Paginate .Pages).Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
{{ template "_internal/pagination.html" . }}
```
@z

@x
You can also use the `template` function to execute a defined template:
@y
`template` 関数は、定義済みテンプレートの実行に用いることもできます。
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

@x
The example above can be rewritten using an [inline partial] template:
@y
上の例は、[インライン部分テンプレート][inline partial] を使って、以下のように書き換えることもできます。
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
{{% include "functions/go-template/_common/text-template.md" %}}
@y
{{% include "functions/go-template/_common/text-template.md" %}}
@z

% snip links...
