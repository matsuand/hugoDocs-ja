%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: partials.Include
description: Executes the given partial template, optionally passing context. If the partial template contains a return statement, returns the given value, else returns the rendered output.
categories: []
keywords: []
action:
  aliases: [partial]
  related:
    - functions/go-template/return
    - functions/partials/IncludeCached
    - functions/go-template/template
    - methods/page/Render
  returnType: any
  signatures: ['partials.Include NAME [CONTEXT]']
aliases: [/functions/partial]
---
@y
---
title: partials.Include
description: Executes the given partial template, optionally passing context. If the partial template contains a return statement, returns the given value, else returns the rendered output.
categories: []
keywords: []
action:
  aliases: [partial]
  related:
    - functions/go-template/return
    - functions/partials/IncludeCached
    - functions/go-template/template
    - methods/page/Render
  returnType: any
  signatures: ['partials.Include NAME [CONTEXT]']
aliases: [/functions/partial]
---
@z

@x
Without a [`return`] statement, the `partial` function returns a string of type `template.HTML`. With a `return` statement, the `partial` function can return any data type.
@y
Without a [`return`] statement, the `partial` function returns a string of type `template.HTML`. With a `return` statement, the `partial` function can return any data type.
@z

@x
[`return`]: /functions/go-template/return/
@y
[`return`]: /functions/go-template/return/
@z

@x
In this example we have three partial templates:
@y
In this example we have three partial templates:
@z

@x
```text
layouts/
└── partials/
    ├── average.html
    ├── breadcrumbs.html
    └── footer.html
```
@y
```text
layouts/
└── partials/
    ├── average.html
    ├── breadcrumbs.html
    └── footer.html
```
@z

@x
The "average" partial returns the average of one or more numbers. We pass the numbers in context:
@y
The "average" partial returns the average of one or more numbers. We pass the numbers in context:
@z

@x
```go-html-template
{{ $numbers := slice 1 6 7 42 }}
{{ $average := partial "average.html" $numbers }}
```
@y
```go-html-template
{{ $numbers := slice 1 6 7 42 }}
{{ $average := partial "average.html" $numbers }}
```
@z

@x
The "breadcrumbs" partial renders [breadcrumb navigation], and needs to receive the current page in context:
@y
The "breadcrumbs" partial renders [breadcrumb navigation], and needs to receive the current page in context:
@z

@x
```go-html-template
{{ partial "breadcrumbs.html" . }}
```
@y
```go-html-template
{{ partial "breadcrumbs.html" . }}
```
@z

@x
The "footer" partial renders the site footer. In this contrived example, the footer does not need access to the current page, so we can omit context:
@y
The "footer" partial renders the site footer. In this contrived example, the footer does not need access to the current page, so we can omit context:
@z

@x
```go-html-template
{{ partial "breadcrumbs.html" }}
```
@y
```go-html-template
{{ partial "breadcrumbs.html" }}
```
@z

@x
You can pass anything in context: a page, a page collection, a scalar value, a slice, or a map. For example:
@y
You can pass anything in context: a page, a page collection, a scalar value, a slice, or a map. For example:
@z

@x
```go-html-template
{{ $student := dict 
  "name" "John Doe" 
  "major" "Finance"
  "gpa" 4.0
}}
{{ partial "render-student-info.html" $student }}
```
@y
```go-html-template
{{ $student := dict 
  "name" "John Doe" 
  "major" "Finance"
  "gpa" 4.0
}}
{{ partial "render-student-info.html" $student }}
```
@z

@x
Then, within the partial template:
@y
Then, within the partial template:
@z

@x
```go-html-template
<p>{{ .name }} is majoring in {{ .major }}. Their grade point average is {{ .gpa }}.</p>
```
@y
```go-html-template
<p>{{ .name }} is majoring in {{ .major }}. Their grade point average is {{ .gpa }}.</p>
```
@z

@x
To return a value from a partial template, it must contain only one `return` statement, placed at the end of the template:
@y
To return a value from a partial template, it must contain only one `return` statement, placed at the end of the template:
@z

@x
```go-html-template
{{ $result := "" }}
{{ if math.ModBool . 2 }}
  {{ $result = "even" }}
{{ else }}
  {{ $result = "odd" }}
{{ end }}
{{ return $result }}
```
@y
```go-html-template
{{ $result := "" }}
{{ if math.ModBool . 2 }}
  {{ $result = "even" }}
{{ else }}
  {{ $result = "odd" }}
{{ end }}
{{ return $result }}
```
@z

@x
See&nbsp;[details][`return`].
@y
See&nbsp;[details][`return`].
@z

@x
[`return`]: /functions/go-template/return/
@y
[`return`]: /functions/go-template/return/
@z

@x
[breadcrumb navigation]: /content-management/sections/#ancestors-and-descendants
[details]: /functions/go-template/return/
@y
[breadcrumb navigation]: /content-management/sections/#ancestors-and-descendants
[details]: /functions/go-template/return/
@z
