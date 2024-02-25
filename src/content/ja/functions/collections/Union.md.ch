%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Union
description: Given two arrays or slices, returns a new array that contains the elements that belong to either or both arrays/slices.
categories: []
keywords: []
action:
  aliases: [union]
  related:
    - functions/collections/Complement
    - functions/collections/Intersect
    - functions/collections/SymDiff
    - functions/collections/Union
  returnType: any
  signatures: [collections.Union SET1 SET2]
aliases: [/functions/union] 
---
@y
---
title: collections.Union
description: Given two arrays or slices, returns a new array that contains the elements that belong to either or both arrays/slices.
categories: []
keywords: []
action:
  aliases: [union]
  related:
    - functions/collections/Complement
    - functions/collections/Intersect
    - functions/collections/SymDiff
    - functions/collections/Union
  returnType: any
  signatures: [collections.Union SET1 SET2]
aliases: [/functions/union] 
---
@z

@x
Given two arrays (or slices) A and B, this function will return a new array that contains the elements or objects that belong to either A or to B or to both.
@y
Given two arrays (or slices) A and B, this function will return a new array that contains the elements or objects that belong to either A or to B or to both.
@z

@x
```go-html-template
{{ union (slice 1 2 3) (slice 3 4 5) }}
<!-- returns [1 2 3 4 5] -->
@y
```go-html-template
{{ union (slice 1 2 3) (slice 3 4 5) }}
<!-- returns [1 2 3 4 5] -->
@z

@x
{{ union (slice 1 2 3) nil }}
<!-- returns [1 2 3] -->
@y
{{ union (slice 1 2 3) nil }}
<!-- returns [1 2 3] -->
@z

@x
{{ union nil (slice 1 2 3) }}
<!-- returns [1 2 3] -->
@y
{{ union nil (slice 1 2 3) }}
<!-- returns [1 2 3] -->
@z

@x
{{ union nil nil }}
<!-- returns an error because both arrays/slices have to be of the same type -->
```
@y
{{ union nil nil }}
<!-- returns an error because both arrays/slices have to be of the same type -->
```
@z

@x
## OR filter in where query
@y
## OR filter in where query
@z

@x
This is also very useful to use as `OR` filters when combined with where:
@y
This is also very useful to use as `OR` filters when combined with where:
@z

@x
```go-html-template
{{ $pages := where .Site.RegularPages "Type" "not in" (slice "page" "about") }}
{{ $pages = $pages | union (where .Site.RegularPages "Params.pinned" true) }}
{{ $pages = $pages | intersect (where .Site.RegularPages "Params.images" "!=" nil) }}
```
@y
```go-html-template
{{ $pages := where .Site.RegularPages "Type" "not in" (slice "page" "about") }}
{{ $pages = $pages | union (where .Site.RegularPages "Params.pinned" true) }}
{{ $pages = $pages | intersect (where .Site.RegularPages "Params.images" "!=" nil) }}
```
@z

@x
The above fetches regular pages not of `page` or `about` type unless they are pinned. And finally, we exclude all pages with no `images` set in Page parameters.
@y
The above fetches regular pages not of `page` or `about` type unless they are pinned. And finally, we exclude all pages with no `images` set in Page parameters.
@z

@x
See [intersect](/functions/collections/intersect) for `AND`.
@y
See [intersect](/functions/collections/intersect) for `AND`.
@z
