%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Weight
description: Returns the weight of the given page as defined in front matter.
categories: []
keywords: []
action:
  related: []
  returnType: int
  signatures: [PAGE.Weight]
---
@y
---
title: Weight
description: Returns the weight of the given page as defined in front matter.
categories: []
keywords: []
action:
  related: []
  returnType: int
  signatures: [PAGE.Weight]
---
@z

@x
The `Weight` method on a `Page` object returns the [weight] of the given page as defined in front matter.
@y
The `Weight` method on a `Page` object returns the [weight] of the given page as defined in front matter.
@z

@x
[weight]: /getting-started/glossary/#weight
@y
[weight]: /getting-started/glossary/#weight
@z

@x
{{< code-toggle file=content/recipes/sushi.md fm=true >}}
title = 'How to make spicy tuna hand rolls'
weight = 42
{{< /code-toggle >}}
@y
{{< code-toggle file=content/recipes/sushi.md fm=true >}}
title = 'How to make spicy tuna hand rolls'
weight = 42
{{< /code-toggle >}}
@z

@x
Page weight controls the position of a page within a collection that is sorted by weight. Assign weights using non-zero integers. Lighter items float to the top, while heavier items sink to the bottom. Unweighted or zero-weighted elements are placed at the end of the collection.
@y
Page weight controls the position of a page within a collection that is sorted by weight. Assign weights using non-zero integers. Lighter items float to the top, while heavier items sink to the bottom. Unweighted or zero-weighted elements are placed at the end of the collection.
@z

@x
Although rarely used within a template, you can access the value with:
@y
Although rarely used within a template, you can access the value with:
@z

@x
```go-html-template
{{ .Weight }} → 42
```
@y
```go-html-template
{{ .Weight }} → 42
```
@z
