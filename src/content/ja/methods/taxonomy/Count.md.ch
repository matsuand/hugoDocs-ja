%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Count
description: Returns the number of number of weighted pages to which the given term has been assigned.
categories: []
keywords: []
action:
  related: []
  returnType: int
  signatures: [TAXONOMY.Count TERM]
toc: true
---
@y
---
title: Count
description: Returns the number of number of weighted pages to which the given term has been assigned.
categories: []
keywords: []
action:
  related: []
  returnType: int
  signatures: [TAXONOMY.Count TERM]
toc: true
---
@z

@x
The `Count` method on a `Taxonomy` object returns the number of number of [weighted pages] to which the given [term] has been assigned.
@y
The `Count` method on a `Taxonomy` object returns the number of number of [weighted pages] to which the given [term] has been assigned.
@z

@x
{{% include "methods/taxonomy/_common/get-a-taxonomy-object.md" %}}
@y
{{% include "methods/taxonomy/_common/get-a-taxonomy-object.md" %}}
@z

@x
## Count the weighted pages
@y
## Count the weighted pages
@z

@x
Now that we have captured the "genres" `Taxonomy` object, let's count the number of weighted pages to which the "suspense" term has been assigned:
@y
Now that we have captured the "genres" `Taxonomy` object, let's count the number of weighted pages to which the "suspense" term has been assigned:
@z

@x
```go-html-template
{{ $taxonomyObject.Count "suspense" }} → 3
```
@y
```go-html-template
{{ $taxonomyObject.Count "suspense" }} → 3
```
@z

@x
[weighted pages]: /getting-started/glossary/#weighted-page
[term]: /getting-started/glossary/#term
@y
[weighted pages]: /getting-started/glossary/#weighted-page
[term]: /getting-started/glossary/#term
@z
