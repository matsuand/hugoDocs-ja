%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Section
description: Returns the name of the top level section in which the given page resides.
categories: []
keywords: []
action:
  related:
    - methods/page/Type
  returnType: string
  signatures: [PAGE.Section]
---
@y
---
title: Section
description: Returns the name of the top level section in which the given page resides.
categories: []
keywords: []
action:
  related:
    - methods/page/Type
  returnType: string
  signatures: [PAGE.Section]
---
@z

@x
With this content structure:
@y
With this content structure:
@z

@x
```text
content/
├── lessons/
│   ├── math/
│   │   ├── _index.md
│   │   ├── lesson-1.md
│   │   └── lesson-2.md
│   └── _index.md
└── _index.md
```
@y
```text
content/
├── lessons/
│   ├── math/
│   │   ├── _index.md
│   │   ├── lesson-1.md
│   │   └── lesson-2.md
│   └── _index.md
└── _index.md
```
@z

@x
When rendering lesson-1.md:
@y
When rendering lesson-1.md:
@z

@x
```go-html-template
{{ .Section }} → lessons
```
@y
```go-html-template
{{ .Section }} → lessons
```
@z

@x
In the example above "lessons" is the top level section.
@y
In the example above "lessons" is the top level section.
@z

@x
The `Section` method is often used with the [`where`] function to build a page collection.
@y
The `Section` method is often used with the [`where`] function to build a page collection.
@z

@x
```go-html-template
{{ range where .Site.RegularPages "Section" "lessons" }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range where .Site.RegularPages "Section" "lessons" }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z

@x
This is similar to using the [`Type`] method with the `where` function
@y
This is similar to using the [`Type`] method with the `where` function
@z

@x
```go-html-template
{{ range where .Site.RegularPages "Type" "lessons" }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range where .Site.RegularPages "Type" "lessons" }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
```
@z

@x
However, if the `type` field in front matter has been defined on one or more pages, the page collection based on `Type` will be different than the page collection based on `Section`.
@y
However, if the `type` field in front matter has been defined on one or more pages, the page collection based on `Type` will be different than the page collection based on `Section`.
@z

@x
[`where`]: /functions/collections/where/
[`Type`]: /methods/page/type/
@y
[`where`]: /functions/collections/where/
[`Type`]: /methods/page/type/
@z
