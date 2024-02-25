%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: math.Rand
description: Returns a pseudo-random number in the half-open interval [0.0, 1.0).
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: float64
  signatures: [math.Rand]
---
@y
---
title: math.Rand
description: Returns a pseudo-random number in the half-open interval [0.0, 1.0).
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: float64
  signatures: [math.Rand]
---
@z

@x
{{< new-in 0.121.2 >}}
@y
{{< new-in 0.121.2 >}}
@z

@x
The `math.Rand` function returns a pseudo-random number in the [half-open interval] [0.0, 1.0).
@y
The `math.Rand` function returns a pseudo-random number in the [half-open interval] [0.0, 1.0).
@z

@x
```go-html-template
{{ math.Rand }} → 0.6312770459590062
```
@y
```go-html-template
{{ math.Rand }} → 0.6312770459590062
```
@z

@x
To generate a random integer in the [closed interval] [0, 5]:
@y
To generate a random integer in the [closed interval] [0, 5]:
@z

@x
```go-html-template
{{ math.Rand | mul 6 | math.Floor }}
```
@y
```go-html-template
{{ math.Rand | mul 6 | math.Floor }}
```
@z

@x
To generate a random integer in the closed interval [1, 6]:
@y
To generate a random integer in the closed interval [1, 6]:
@z

@x
```go-html-template
{{ math.Rand | mul 6 | math.Ceil }}
```
@y
```go-html-template
{{ math.Rand | mul 6 | math.Ceil }}
```
@z

@x
To generate a random float, with one digit after the decimal point, in the closed interval [0, 4.9]:
@y
To generate a random float, with one digit after the decimal point, in the closed interval [0, 4.9]:
@z

@x
```go-html-template
{{ div (math.Rand | mul 50 | math.Floor) 10 }}
```
@y
```go-html-template
{{ div (math.Rand | mul 50 | math.Floor) 10 }}
```
@z

@x
To generate a random float, with one digit after the decimal point, in the closed interval [0.1, 5.0]:
@y
To generate a random float, with one digit after the decimal point, in the closed interval [0.1, 5.0]:
@z

@x
```go-html-template
{{ div (math.Rand | mul 50 | math.Ceil) 10 }}
```
@y
```go-html-template
{{ div (math.Rand | mul 50 | math.Ceil) 10 }}
```
@z

@x
[closed interval]: /getting-started/glossary/#interval
[half-open interval]: /getting-started/glossary/#interval
@y
[closed interval]: /getting-started/glossary/#interval
[half-open interval]: /getting-started/glossary/#interval
@z
