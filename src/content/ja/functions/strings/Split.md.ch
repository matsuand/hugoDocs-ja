%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.Split
description: Returns a slice of strings by splitting the given string by a delimiter.
categories: []
keywords: []
action:
  aliases: [split]
  related:
    - functions/collections/Delimit
  returnType: string
  signatures: [strings.Split STRING DELIM]
aliases: [/functions/split]
---
@y
---
title: strings.Split
description: Returns a slice of strings by splitting the given string by a delimiter.
categories: []
keywords: []
action:
  aliases: [split]
  related:
    - functions/collections/Delimit
  returnType: string
  signatures: [strings.Split STRING DELIM]
aliases: [/functions/split]
---
@z

@x
Examples:
@y
Examples:
@z

@x
```go-html-template
{{ split "tag1,tag2,tag3" "," }} → ["tag1", "tag2", "tag3"]
{{ split "abc" "" }} → ["a", "b", "c"]
```
@y
```go-html-template
{{ split "tag1,tag2,tag3" "," }} → ["tag1", "tag2", "tag3"]
{{ split "abc" "" }} → ["a", "b", "c"]
```
@z

@x
{{% note %}}
The `strings.Split` function essentially does the opposite of the [`collections.Delimit`] function. While `split` creates a slice from a string, `delimit` creates a string from a slice.
@y
{{% note %}}
The `strings.Split` function essentially does the opposite of the [`collections.Delimit`] function. While `split` creates a slice from a string, `delimit` creates a string from a slice.
@z

@x
[`collections.Delimit`]: /functions/collections/delimit/
{{% /note %}}
@y
[`collections.Delimit`]: /functions/collections/delimit/
{{% /note %}}
@z
