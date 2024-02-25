%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Intersect
description: Returns the common elements of two arrays or slices, in the same order as the first array.
categories: []
keywords: []
action:
  aliases: [intersect]
  related:
    - functions/collections/Complement
    - functions/collections/SymDiff
    - functions/collections/Union
  returnType: any
  signatures: [collections.Intersect SET1 SET2]
aliases: [/functions/intersect]
---
@y
---
title: collections.Intersect
description: Returns the common elements of two arrays or slices, in the same order as the first array.
categories: []
keywords: []
action:
  aliases: [intersect]
  related:
    - functions/collections/Complement
    - functions/collections/SymDiff
    - functions/collections/Union
  returnType: any
  signatures: [collections.Intersect SET1 SET2]
aliases: [/functions/intersect]
---
@z

@x
A useful example is to use it as `AND` filters when combined with where:
@y
A useful example is to use it as `AND` filters when combined with where:
@z

@x
```go-html-template
{{ $pages := where .Site.RegularPages "Type" "not in" (slice "page" "about") }}
{{ $pages := $pages | union (where .Site.RegularPages "Params.pinned" true) }}
{{ $pages := $pages | intersect (where .Site.RegularPages "Params.images" "!=" nil) }}
```
@y
```go-html-template
{{ $pages := where .Site.RegularPages "Type" "not in" (slice "page" "about") }}
{{ $pages := $pages | union (where .Site.RegularPages "Params.pinned" true) }}
{{ $pages := $pages | intersect (where .Site.RegularPages "Params.images" "!=" nil) }}
```
@z

@x
The above fetches regular pages not of `page` or `about` type unless they are pinned. And finally, we exclude all pages with no `images` set in Page parameters.
@y
The above fetches regular pages not of `page` or `about` type unless they are pinned. And finally, we exclude all pages with no `images` set in Page parameters.
@z

@x
See [union](/functions/collections/union) for `OR`.
@y
See [union](/functions/collections/union) for `OR`.
@z

@x
[partials]: /templates/partials/
[single]: /templates/single-page-templates/
@y
[partials]: /templates/partials/
[single]: /templates/single-page-templates/
@z
