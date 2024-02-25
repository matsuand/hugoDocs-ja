%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: IsDescendant
description: Reports whether PAGE1 in a descendant of PAGE2.
categories: []
keywords: []
action:
  related:
    - methods/page/Ancestors
    - methods/page/CurrentSection
    - methods/page/FirstSection
    - methods/page/InSection
    - methods/page/IsAncestor
    - methods/page/Parent
    - methods/page/Sections
  returnType: bool
  signatures: [PAGE1.IsDescendant PAGE2]
---
@y
---
title: IsDescendant
description: Reports whether PAGE1 in a descendant of PAGE2.
categories: []
keywords: []
action:
  related:
    - methods/page/Ancestors
    - methods/page/CurrentSection
    - methods/page/FirstSection
    - methods/page/InSection
    - methods/page/IsAncestor
    - methods/page/Parent
    - methods/page/Sections
  returnType: bool
  signatures: [PAGE1.IsDescendant PAGE2]
---
@z

@x
{{% include "methods/page/_common/definition-of-section.md" %}}
@y
{{% include "methods/page/_common/definition-of-section.md" %}}
@z

@x
With this content structure:
@y
With this content structure:
@z

@x
```text
content/
├── auctions/
│   ├── 2023-11/
│   │   ├── _index.md
│   │   ├── auction-1.md
│   │   └── auction-2.md
│   ├── 2023-12/
│   │   ├── _index.md
│   │   ├── auction-3.md
│   │   └── auction-4.md
│   ├── _index.md
│   ├── bidding.md
│   └── payment.md
└── _index.md
```
@y
```text
content/
├── auctions/
│   ├── 2023-11/
│   │   ├── _index.md
│   │   ├── auction-1.md
│   │   └── auction-2.md
│   ├── 2023-12/
│   │   ├── _index.md
│   │   ├── auction-3.md
│   │   └── auction-4.md
│   ├── _index.md
│   ├── bidding.md
│   └── payment.md
└── _index.md
```
@z

@x
When rendering the "auctions" page:
@y
When rendering the "auctions" page:
@z

@x
```go-html-template
{{ with .Site.GetPage "/" }}
  {{ $.IsDescendant . }} → true
{{ end }}
@y
```go-html-template
{{ with .Site.GetPage "/" }}
  {{ $.IsDescendant . }} → true
{{ end }}
@z

@x
{{ with .Site.GetPage "/auctions" }}
  {{ $.IsDescendant . }} → false
{{ end }}
@y
{{ with .Site.GetPage "/auctions" }}
  {{ $.IsDescendant . }} → false
{{ end }}
@z

@x
{{ with .Site.GetPage "/auctions/2023-11" }}
  {{ $.IsDescendant . }} → false
{{ end }}
@y
{{ with .Site.GetPage "/auctions/2023-11" }}
  {{ $.IsDescendant . }} → false
{{ end }}
@z

@x
{{ with .Site.GetPage "/auctions/2023-11/auction-2" }}
  {{ $.IsDescendant . }} → false
{{ end }}
```
@y
{{ with .Site.GetPage "/auctions/2023-11/auction-2" }}
  {{ $.IsDescendant . }} → false
{{ end }}
```
@z

@x
In the examples above we are coding defensively using the [`with`] statement, returning nothing if the page does not exist. By adding an [`else`] clause we can do some error reporting:
@y
In the examples above we are coding defensively using the [`with`] statement, returning nothing if the page does not exist. By adding an [`else`] clause we can do some error reporting:
@z

@x
```go-html-template
{{ $path := "/auctions/2023-11" }}
{{ with .Site.GetPage $path }}
  {{ $.IsDescendant . }} → true
{{ else }}
  {{ errorf "Unable to find the section with path %s" $path }}
{{ end }}
  ```
@y
```go-html-template
{{ $path := "/auctions/2023-11" }}
{{ with .Site.GetPage $path }}
  {{ $.IsDescendant . }} → true
{{ else }}
  {{ errorf "Unable to find the section with path %s" $path }}
{{ end }}
  ```
@z

@x
## Understanding context
@y
## Understanding context
@z

@x
Inside of the `with` block, the [context] (the dot) is the section `Page` object, not the `Page` object passed into the template. If we were to use this syntax:
@y
Inside of the `with` block, the [context] (the dot) is the section `Page` object, not the `Page` object passed into the template. If we were to use this syntax:
@z

@x
```go-html-template
{{ with .Site.GetPage "/auctions" }}
  {{ .IsDescendant . }} → true
{{ end }}
```
@y
```go-html-template
{{ with .Site.GetPage "/auctions" }}
  {{ .IsDescendant . }} → true
{{ end }}
```
@z

@x
The result would be wrong when rendering the "auction-1" page because we are comparing the section page to itself.
@y
The result would be wrong when rendering the "auction-1" page because we are comparing the section page to itself.
@z

@x
{{% note %}}
Use the `$` to get the context passed into the template.
{{% /note %}}
@y
{{% note %}}
Use the `$` to get the context passed into the template.
{{% /note %}}
@z

@x
```go-html-template
{{ with .Site.GetPage "/auctions" }}
  {{ $.IsDescendant . }} → true
{{ end }}
```
@y
```go-html-template
{{ with .Site.GetPage "/auctions" }}
  {{ $.IsDescendant . }} → true
{{ end }}
```
@z

@x
{{% note %}}
Gaining a thorough understanding of context is critical for anyone writing template code.
{{% /note %}}
@y
{{% note %}}
Gaining a thorough understanding of context is critical for anyone writing template code.
{{% /note %}}
@z

@x
[context]: /getting-started/glossary/#context
[`with`]: /functions/go-template/with/
[`else`]: /functions/go-template/else/
@y
[context]: /getting-started/glossary/#context
[`with`]: /functions/go-template/with/
[`else`]: /functions/go-template/else/
@z
