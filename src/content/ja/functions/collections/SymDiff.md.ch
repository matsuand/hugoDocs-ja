%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.SymDiff
description: Returns the symmetric difference of two collections.
categories: []
keywords: []
action:
  aliases: [symdiff]
  related:
    - functions/collections/Complement
    - functions/collections/Intersect
    - functions/collections/SymDiff
    - functions/collections/Union
  returnType: any
  signatures: [COLLECTION | collections.SymDiff COLLECTION]
aliases: [/functions/symdiff]
---
@y
---
title: collections.SymDiff
description: Returns the symmetric difference of two collections.
categories: []
keywords: []
action:
  aliases: [symdiff]
  related:
    - functions/collections/Complement
    - functions/collections/Intersect
    - functions/collections/SymDiff
    - functions/collections/Union
  returnType: any
  signatures: [COLLECTION | collections.SymDiff COLLECTION]
aliases: [/functions/symdiff]
---
@z

@x
Example:
@y
Example:
@z

@x
```go-html-template
{{ slice 1 2 3 | symdiff (slice 3 4) }} → [1 2 4]
```
@y
```go-html-template
{{ slice 1 2 3 | symdiff (slice 3 4) }} → [1 2 4]
```
@z

@x
Also see <https://en.wikipedia.org/wiki/Symmetric_difference>.
@y
Also see <https://en.wikipedia.org/wiki/Symmetric_difference>.
@z
