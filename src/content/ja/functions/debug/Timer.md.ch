%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: debug.Timer
description: Creates a named timer that reports elapsed time to the console.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: debug.Timer
  signatures: [debug.Timer NAME] 
---
@y
---
title: debug.Timer
description: Creates a named timer that reports elapsed time to the console.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: debug.Timer
  signatures: [debug.Timer NAME] 
---
@z

@x
{{< new-in 0.120.0 >}}
@y
{{< new-in 0.120.0 >}}
@z

@x
Use the `debug.Timer` function to determine execution time for a block of code, useful for finding performance bottle necks in templates.
@y
Use the `debug.Timer` function to determine execution time for a block of code, useful for finding performance bottle necks in templates.
@z

@x
The timer starts when you instantiate it, and stops when you call its `Stop` method.
@y
The timer starts when you instantiate it, and stops when you call its `Stop` method.
@z

@x
```go-html-template
{{ $t := debug.Timer "TestSqrt" }}
{{ range seq 2000 }}
  {{ $f := math.Sqrt . }}
{{ end }}
{{ $t.Stop }}
```
@y
```go-html-template
{{ $t := debug.Timer "TestSqrt" }}
{{ range seq 2000 }}
  {{ $f := math.Sqrt . }}
{{ end }}
{{ $t.Stop }}
```
@z

@x
Use the `--logLevel info` command line flag when you build the site.
@y
Use the `--logLevel info` command line flag when you build the site.
@z

@x
```sh
hugo --logLevel info
```
@y
```sh
hugo --logLevel info
```
@z

@x
The results are displayed in the console at the end of the build. You can have as many timers as you want and if you don't stop them, they will be stopped at the end of build.
@y
The results are displayed in the console at the end of the build. You can have as many timers as you want and if you don't stop them, they will be stopped at the end of build.
@z

@x
```text
INFO  timer:  name TestSqrt total 12.429355ms
```
@y
```text
INFO  timer:  name TestSqrt total 12.429355ms
```
@z
