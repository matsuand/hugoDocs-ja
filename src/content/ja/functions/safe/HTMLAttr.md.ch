%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: safe.HTMLAttr
description: Declares the given key-value pair as a safe HTML attribute.
categories: []
keywords: []
action:
  aliases: [safeHTMLAttr]
  related:
    - functions/safe/CSS
    - functions/safe/HTML
    - functions/safe/JS
    - functions/safe/JSStr
    - functions/safe/URL
  returnType: template.HTMLAttr
  signatures: [safe.HTMLAttr INPUT]
toc: true
aliases: [/functions/safehtmlattr]
---
@y
---
title: safe.HTMLAttr
description: Declares the given key-value pair as a safe HTML attribute.
categories: []
keywords: []
action:
  aliases: [safeHTMLAttr]
  related:
    - functions/safe/CSS
    - functions/safe/HTML
    - functions/safe/JS
    - functions/safe/JSStr
    - functions/safe/URL
  returnType: template.HTMLAttr
  signatures: [safe.HTMLAttr INPUT]
toc: true
aliases: [/functions/safehtmlattr]
---
@z

@x
## Introduction
@y
## Introduction
@z

@x
{{% include "functions/_common/go-html-template-package.md" %}}
@y
{{% include "functions/_common/go-html-template-package.md" %}}
@z

@x
## Usage
@y
## Usage
@z

@x
Use the `safe.HTMLAttr` function to encapsulate an HTML attribute from a trusted source.
@y
Use the `safe.HTMLAttr` function to encapsulate an HTML attribute from a trusted source.
@z

@x
Use of this type presents a security risk: the encapsulated content should come from a trusted source, as it will be included verbatim in the template output.
@y
Use of this type presents a security risk: the encapsulated content should come from a trusted source, as it will be included verbatim in the template output.
@z

@x
See the [Go documentation] for details.
@y
See the [Go documentation] for details.
@z

@x
[Go documentation]: https://pkg.go.dev/html/template#HTMLAttr
@y
[Go documentation]: https://pkg.go.dev/html/template#HTMLAttr
@z

@x
## Example
@y
## Example
@z

@x
Without a safe declaration:
@y
Without a safe declaration:
@z

@x
```go-html-template
{{ with .Date }}
  {{ $humanDate := time.Format "2 Jan 2006" . }}
  {{ $machineDate := time.Format "2006-01-02T15:04:05-07:00" . }}
  <time datetime="{{ $machineDate }}">{{ $humanDate }}</time>
{{ end }}
```
@y
```go-html-template
{{ with .Date }}
  {{ $humanDate := time.Format "2 Jan 2006" . }}
  {{ $machineDate := time.Format "2006-01-02T15:04:05-07:00" . }}
  <time datetime="{{ $machineDate }}">{{ $humanDate }}</time>
{{ end }}
```
@z

@x
Hugo renders the above to:
@y
Hugo renders the above to:
@z

@x
```html
<time datetime="2024-05-26T07:19:55&#43;02:00">26 May 2024</time>
```
@y
```html
<time datetime="2024-05-26T07:19:55&#43;02:00">26 May 2024</time>
```
@z

@x
To declare the key-value pair as safe:
@y
To declare the key-value pair as safe:
@z

@x
```go-html-template
{{ with .Date }}
  {{ $humanDate := time.Format "2 Jan 2006" . }}
  {{ $machineDate := time.Format "2006-01-02T15:04:05-07:00" . }}
  <time {{ printf "datetime=%q" $machineDate | safeHTMLAttr }}>{{ $humanDate }}</time>
{{ end }}
```
@y
```go-html-template
{{ with .Date }}
  {{ $humanDate := time.Format "2 Jan 2006" . }}
  {{ $machineDate := time.Format "2006-01-02T15:04:05-07:00" . }}
  <time {{ printf "datetime=%q" $machineDate | safeHTMLAttr }}>{{ $humanDate }}</time>
{{ end }}
```
@z

@x
Hugo renders the above to:
@y
Hugo renders the above to:
@z

@x
```html
<time datetime="2024-05-26T07:19:55+02:00">26 May 2024</time>
```
@y
```html
<time datetime="2024-05-26T07:19:55+02:00">26 May 2024</time>
```
@z
