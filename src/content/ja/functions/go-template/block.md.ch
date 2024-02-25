%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: block
description: Defines a template and executes it in place.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/define
    - functions/go-template/end
  returnType:
  signatures: [block NAME CONTEXT]
---
@y
---
title: block
description: テンプレートを定義して、所定箇所において実行します。
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/go-template/define
    - functions/go-template/end
  returnType:
  signatures: [block NAME CONTEXT]
---
@z

@x
A block is shorthand for defining a template:
@y
ブロックとは、テンプレートを定義する簡略な形です。
@z

@x
```go-html-template
{{ define "name" }} T1 {{ end }}
```
@y
```go-html-template
{{ define "name" }} T1 {{ end }}
```
@z

@x
and then executing it in place:
@y
それを所定位置において実行します。
@z

@x
```go-html-template
{{ template "name" pipeline }}
```
@y
```go-html-template
{{ template "name" pipeline }}
```
@z

@x
The typical use is to define a set of root templates that are then customized by redefining the block templates within.
@y
よく利用する方法としては、基本となるテンプレートを定義しておき、内部のブロックテンプレートを再定義することによって、テンプレートをカスタマイズするようなやり方です。
@z

@x
{{< code file=layouts/_default/baseof.html >}}
<body>
  <main>
    {{ block "main" . }}
      {{ print "default value if 'main' template is empty" }}
    {{ end }}
  </main>
</body>
{{< /code >}}
@y
{{< code file=layouts/_default/baseof.html >}}
<body>
  <main>
    {{ block "main" . }}
      {{ print "default value if 'main' template is empty" }}
    {{ end }}
  </main>
</body>
{{< /code >}}
@z

@x
{{< code file=layouts/_default/single.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/single.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
{{ end }}
{{< /code >}}
@z

@x
{{< code file=layouts/_default/list.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
  {{ range .Pages }}
    <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ end }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/list.html >}}
{{ define "main" }}
  <h1>{{ .Title }}</h1>
  {{ .Content }}
  {{ range .Pages }}
    <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  {{ end }}
{{ end }}
{{< /code >}}
@z

@x
{{% include "functions/go-template/_common/text-template.md" %}}
@y
{{% include "functions/go-template/_common/text-template.md" %}}
@z
