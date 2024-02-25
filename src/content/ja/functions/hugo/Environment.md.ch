%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: hugo.Environment
description: Returns the current running environment.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/hugo/IsDevelopment
    - functions/hugo/IsProduction
  returnType: string
  signatures: [hugo.Environment]
---
@y
---
title: hugo.Environment
description: Returns the current running environment.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/hugo/IsDevelopment
    - functions/hugo/IsProduction
  returnType: string
  signatures: [hugo.Environment]
---
@z

@x
The `hugo.Environment` function returns the current running [environment] as defined through the `--environment` command line flag.
@y
The `hugo.Environment` function returns the current running [environment] as defined through the `--environment` command line flag.
@z

@x
```go-html-template
{{ hugo.Environment }} → production
```
@y
```go-html-template
{{ hugo.Environment }} → production
```
@z

@x
Command line examples:
@y
Command line examples:
@z

@x
Command|Environment
:--|:--
`hugo`|`production`
`hugo --environment staging`|`staging`
`hugo server`|`development`
`hugo server --environment staging`|`staging`
@y
Command|Environment
:--|:--
`hugo`|`production`
`hugo --environment staging`|`staging`
`hugo server`|`development`
`hugo server --environment staging`|`staging`
@z

@x
[environment]: /getting-started/glossary/#environment
@y
[environment]: /getting-started/glossary/#environment
@z
