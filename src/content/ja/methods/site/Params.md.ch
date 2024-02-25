%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Params
description: Returns a map of custom parameters as defined in the site configuration.
categories: []
keywords: []
action:
  related:
    - functions/collections/indexFunction
    - methods/page/Params
    - methods/page/Param
  returnType: maps.Params
  signatures: [SITE.Params]
---
@y
---
title: Params
description: Returns a map of custom parameters as defined in the site configuration.
categories: []
keywords: []
action:
  related:
    - functions/collections/indexFunction
    - methods/page/Params
    - methods/page/Param
  returnType: maps.Params
  signatures: [SITE.Params]
---
@z

@x
With this site configuration:
@y
With this site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[params]
  subtitle = 'The Best Widgets on Earth'
  copyright-year = '2023'
  [params.author]
    email = 'jsmith@example.org'
    name = 'John Smith'
  [params.layouts]
    rfc_1123 = 'Mon, 02 Jan 2006 15:04:05 MST'
    rfc_3339 = '2006-01-02T15:04:05-07:00'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[params]
  subtitle = 'The Best Widgets on Earth'
  copyright-year = '2023'
  [params.author]
    email = 'jsmith@example.org'
    name = 'John Smith'
  [params.layouts]
    rfc_1123 = 'Mon, 02 Jan 2006 15:04:05 MST'
    rfc_3339 = '2006-01-02T15:04:05-07:00'
{{< /code-toggle >}}
@z

@x
Access the custom parameters by [chaining] the [identifiers]:
@y
Access the custom parameters by [chaining] the [identifiers]:
@z

@x
```go-html-template
{{ .Site.Params.subtitle }} → The Best Widgets on Earth
{{ .Site.Params.author.name }} → John Smith
@y
```go-html-template
{{ .Site.Params.subtitle }} → The Best Widgets on Earth
{{ .Site.Params.author.name }} → John Smith
@z

@x
{{ $layout := .Site.Params.layouts.rfc_1123 }}
{{ .Site.LastChange.Format $layout }} → Tue, 17 Oct 2023 13:21:02 PDT
```
@y
{{ $layout := .Site.Params.layouts.rfc_1123 }}
{{ .Site.LastChange.Format $layout }} → Tue, 17 Oct 2023 13:21:02 PDT
```
@z

@x
In the template example above, each of the keys is a valid identifier. For example, none of the keys contains a hyphen. To access a key that is not a valid identifier, use the [`index`] function:
@y
In the template example above, each of the keys is a valid identifier. For example, none of the keys contains a hyphen. To access a key that is not a valid identifier, use the [`index`] function:
@z

@x
```go-html-template
{{ index .Site.Params "copyright-year" }} → 2023
```
@y
```go-html-template
{{ index .Site.Params "copyright-year" }} → 2023
```
@z

@x
[`index`]: /functions/collections/indexfunction/
[chaining]: /getting-started/glossary/#chain
[identifiers]: /getting-started/glossary/#identifier
@y
[`index`]: /functions/collections/indexfunction/
[chaining]: /getting-started/glossary/#chain
[identifiers]: /getting-started/glossary/#identifier
@z
