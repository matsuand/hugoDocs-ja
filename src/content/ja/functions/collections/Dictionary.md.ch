%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Dictionary
description: Creates a map from a list of key and value pairs.
categories: []
keywords: []
action:
  aliases: [dict]
  related:
    - functions/collections/Slice
  returnType: mapany
  signatures: ['collections.Dictionary KEY VALUE [VALUE...]']
aliases: [/functions/dict]
---
@y
---
title: collections.Dictionary
description: Creates a map from a list of key and value pairs.
categories: []
keywords: []
action:
  aliases: [dict]
  related:
    - functions/collections/Slice
  returnType: mapany
  signatures: ['collections.Dictionary KEY VALUE [VALUE...]']
aliases: [/functions/dict]
---
@z

@x
```go-html-template
{{ $m := dict "a" 1 "b" 2 }}
```
@y
```go-html-template
{{ $m := dict "a" 1 "b" 2 }}
```
@z

@x
The above produces this data structure:
@y
The above produces this data structure:
@z

@x
```json
{
  "a": 1,
  "b": 2
}
```
@y
```json
{
  "a": 1,
  "b": 2
}
```
@z

@x
Note that the `key` can be either a `string` or a `string slice`. The latter is useful to create a deeply nested structure, e.g.:
@y
Note that the `key` can be either a `string` or a `string slice`. The latter is useful to create a deeply nested structure, e.g.:
@z

@x
```go-html-template
{{ $m := dict (slice "a" "b" "c") "value" }}
```
@y
```go-html-template
{{ $m := dict (slice "a" "b" "c") "value" }}
```
@z

@x
The above produces this data structure:
@y
The above produces this data structure:
@z

@x
```json
{
  "a": {
    "b": {
      "c": "value"
    }
  }
}
```
@y
```json
{
  "a": {
    "b": {
      "c": "value"
    }
  }
}
```
@z

@x
## Pass values to a partial template
@y
## Pass values to a partial template
@z

@x
The partial below creates an SVG and expects `fill`, `height` and `width` from the caller:
@y
The partial below creates an SVG and expects `fill`, `height` and `width` from the caller:
@z

@x
### Partial definition
@y
### Partial definition
@z

@x
{{< code file=layouts/partials/svgs/external-links.svg >}}
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
fill="{{ .fill }}" width="{{ .width }}" height="{{ .height }}" viewBox="0 0 32 32" aria-label="External Link">
<path d="M25.152 16.576v5.696q0 2.144-1.504 3.648t-3.648 1.504h-14.848q-2.144 0-3.648-1.504t-1.504-3.648v-14.848q0-2.112 1.504-3.616t3.648-1.536h12.576q0.224 0 0.384 0.16t0.16 0.416v1.152q0 0.256-0.16 0.416t-0.384 0.16h-12.576q-1.184 0-2.016 0.832t-0.864 2.016v14.848q0 1.184 0.864 2.016t2.016 0.864h14.848q1.184 0 2.016-0.864t0.832-2.016v-5.696q0-0.256 0.16-0.416t0.416-0.16h1.152q0.256 0 0.416 0.16t0.16 0.416zM32 1.152v9.12q0 0.48-0.352 0.8t-0.8 0.352-0.8-0.352l-3.136-3.136-11.648 11.648q-0.16 0.192-0.416 0.192t-0.384-0.192l-2.048-2.048q-0.192-0.16-0.192-0.384t0.192-0.416l11.648-11.648-3.136-3.136q-0.352-0.352-0.352-0.8t0.352-0.8 0.8-0.352h9.12q0.48 0 0.8 0.352t0.352 0.8z"></path>
</svg>
{{< /code >}}
@y
{{< code file=layouts/partials/svgs/external-links.svg >}}
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
fill="{{ .fill }}" width="{{ .width }}" height="{{ .height }}" viewBox="0 0 32 32" aria-label="External Link">
<path d="M25.152 16.576v5.696q0 2.144-1.504 3.648t-3.648 1.504h-14.848q-2.144 0-3.648-1.504t-1.504-3.648v-14.848q0-2.112 1.504-3.616t3.648-1.536h12.576q0.224 0 0.384 0.16t0.16 0.416v1.152q0 0.256-0.16 0.416t-0.384 0.16h-12.576q-1.184 0-2.016 0.832t-0.864 2.016v14.848q0 1.184 0.864 2.016t2.016 0.864h14.848q1.184 0 2.016-0.864t0.832-2.016v-5.696q0-0.256 0.16-0.416t0.416-0.16h1.152q0.256 0 0.416 0.16t0.16 0.416zM32 1.152v9.12q0 0.48-0.352 0.8t-0.8 0.352-0.8-0.352l-3.136-3.136-11.648 11.648q-0.16 0.192-0.416 0.192t-0.384-0.192l-2.048-2.048q-0.192-0.16-0.192-0.384t0.192-0.416l11.648-11.648-3.136-3.136q-0.352-0.352-0.352-0.8t0.352-0.8 0.8-0.352h9.12q0.48 0 0.8 0.352t0.352 0.8z"></path>
</svg>
{{< /code >}}
@z

@x
### Partial call
@y
### Partial call
@z

@x
The `fill`, `height` and `width` values can be stored in one object with `dict` and passed to the partial:
@y
The `fill`, `height` and `width` values can be stored in one object with `dict` and passed to the partial:
@z

@x
{{< code file=layouts/_default/list.html >}}
{{ partial "svgs/external-links.svg" (dict "fill" "#01589B" "width" 10 "height" 20 ) }}
{{< /code >}}
@y
{{< code file=layouts/_default/list.html >}}
{{ partial "svgs/external-links.svg" (dict "fill" "#01589B" "width" 10 "height" 20 ) }}
{{< /code >}}
@z

@x
[partials]: /templates/partials/
@y
[partials]: /templates/partials/
@z
