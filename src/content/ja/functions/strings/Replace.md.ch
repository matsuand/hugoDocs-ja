%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.Replace
description: Returns a copy of INPUT, replacing all occurrences of OLD with NEW.
categories: []
keywords: []
action:
  aliases: [replace]
  related:
    - functions/strings/FindRE
    - functions/strings/FindRESubmatch
    - functions/strings/ReplaceRE
  returnType: string
  signatures: ['strings.Replace INPUT OLD NEW [LIMIT]']
aliases: [/functions/replace]
---
@y
---
title: strings.Replace
description: 入力文字列 INPUT の中の OLD を NEW に置き換えた文字列のコピーを返します。
categories: []
keywords: []
action:
  aliases: [replace]
  related:
    - functions/strings/FindRE
    - functions/strings/FindRESubmatch
    - functions/strings/ReplaceRE
  returnType: string
  signatures: ['strings.Replace INPUT OLD NEW [LIMIT]']
aliases: [/functions/replace]
---
@z

@x
```go-html-template
{{ $s := "Batman and Robin" }}
{{ replace $s "Robin" "Catwoman" }} → Batman and Catwoman
```
@y
```go-html-template
{{ $s := "Batman and Robin" }}
{{ replace $s "Robin" "Catwoman" }} → Batman and Catwoman
```
@z

@x
Limit the number of replacements using the `LIMIT` argument:
@y
置き換え回数を制限するには `LIMIT` 引数を使います。
@z

@x
```go-html-template
{{ replace "aabbaabb" "a" "z" 2 }} → zzbbaabb
```
@y
```go-html-template
{{ replace "aabbaabb" "a" "z" 2 }} → zzbbaabb
```
@z
