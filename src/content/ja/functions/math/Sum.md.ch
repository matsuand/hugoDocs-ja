%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: math.Sum
description: Returns the sum of all numbers. Accepts scalars, slices, or both.
categories: []
action:
  aliases: []
  related:
    - functions/math/Add
    - functions/math/Div
    - functions/math/Mul
    - functions/math/Product
    - functions/math/Sub
  returnType: float64
  signatures: [math.Sum VALUE...]
---
@y
---
title: math.Sum
description: Returns the sum of all numbers. Accepts scalars, slices, or both.
categories: []
action:
  aliases: []
  related:
    - functions/math/Add
    - functions/math/Div
    - functions/math/Mul
    - functions/math/Product
    - functions/math/Sub
  returnType: float64
  signatures: [math.Sum VALUE...]
---
@z

@x
{{< new-in 0.114.0 >}}
@y
{{< new-in 0.114.0 >}}
@z

@x
```go-html-template
{{ math.Sum 1 (slice 2 3) 4 }} → 10
```
@y
```go-html-template
{{ math.Sum 1 (slice 2 3) 4 }} → 10
```
@z
