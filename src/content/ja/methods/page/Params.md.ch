%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Params
description: Returns a map of custom parameters as defined in the front matter of the given page.
categories: []
keywords: []
action:
  related:
    - functions/collections/IndexFunction
    - methods/site/Params
    - methods/page/Param
  returnType: maps.Params
  signatures: [PAGE.Params]
---
@y
---
title: Params
description: Returns a map of custom parameters as defined in the front matter of the given page.
categories: []
keywords: []
action:
  related:
    - functions/collections/IndexFunction
    - methods/site/Params
    - methods/page/Param
  returnType: maps.Params
  signatures: [PAGE.Params]
---
@z

@x
With this front matter:
@y
With this front matter:
@z

@x
{{< code-toggle file=content/news/annual-conference.md >}}
title = 'Annual conference'
date = 2023-10-17T15:11:37-07:00
[params]
display_related = true
[params.author]
  email = 'jsmith@example.org'
  name = 'John Smith'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/news/annual-conference.md >}}
title = 'Annual conference'
date = 2023-10-17T15:11:37-07:00
[params]
display_related = true
[params.author]
  email = 'jsmith@example.org'
  name = 'John Smith'
{{< /code-toggle >}}
@z

@x
The `title` and `date` fields are standard parameters---the other fields are user-defined.
@y
The `title` and `date` fields are standard parameters---the other fields are user-defined.
@z

@x
Access the custom parameters by [chaining] the [identifiers]:
@y
Access the custom parameters by [chaining] the [identifiers]:
@z

@x
```go-html-template
{{ .Params.display_related }} → true
{{ .Params.author.name }} → John Smith
```
@y
```go-html-template
{{ .Params.display_related }} → true
{{ .Params.author.name }} → John Smith
```
@z

@x
In the template example above, each of the keys is a valid identifier. For example, none of the keys contains a hyphen. To access a key that is not a valid identifier, use the [`index`] function:
@y
In the template example above, each of the keys is a valid identifier. For example, none of the keys contains a hyphen. To access a key that is not a valid identifier, use the [`index`] function:
@z

@x
```go-html-template
{{ index .Params "key-with-hyphens" }} → 2023
```
@y
```go-html-template
{{ index .Params "key-with-hyphens" }} → 2023
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
