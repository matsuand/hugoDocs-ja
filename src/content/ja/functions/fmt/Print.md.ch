%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: fmt.Print
description: Prints the default representation of the given arguments using the standard `fmt.Print` function.
categories: []
keywords: []
action:
  aliases: [print]
  related:
    - functions/fmt/Printf
    - functions/fmt/Println
  returnType: string
  signatures: [fmt.Print INPUT]
aliases: [/functions/print]
---
@y
---
title: fmt.Print
description: Prints the default representation of the given arguments using the standard `fmt.Print` function.
categories: []
keywords: []
action:
  aliases: [print]
  related:
    - functions/fmt/Printf
    - functions/fmt/Println
  returnType: string
  signatures: [fmt.Print INPUT]
aliases: [/functions/print]
---
@z

@x
```go-html-template
{{ print "foo" }} → foo
{{ print "foo" "bar" }} → foobar
{{ print (slice 1 2 3) }} → [1 2 3]
```
@y
```go-html-template
{{ print "foo" }} → foo
{{ print "foo" "bar" }} → foobar
{{ print (slice 1 2 3) }} → [1 2 3]
```
@z
