%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: fmt.Warnf
description: Log a WARNING from a template.
categories: []
keywords: []
action:
  aliases: [warnf]
  related:
    - functions/fmt/Errorf
    - functions/fmt/Erroridf
    - functions/fmt/Warnidf
  returnType: string
  signatures: ['fmt.Warnf FORMAT [INPUT]']
aliases: [/functions/warnf]
---
@y
---
title: fmt.Warnf
description: Log a WARNING from a template.
categories: []
keywords: []
action:
  aliases: [warnf]
  related:
    - functions/fmt/Errorf
    - functions/fmt/Erroridf
    - functions/fmt/Warnidf
  returnType: string
  signatures: ['fmt.Warnf FORMAT [INPUT]']
aliases: [/functions/warnf]
---
@z

@x
{{% include "functions/fmt/_common/fmt-layout.md" %}}
@y
{{% include "functions/fmt/_common/fmt-layout.md" %}}
@z

@x
The `warnf` function evaluates the format string, then prints the result to the WARNING log. Hugo prints each unique message once to avoid flooding the log with duplicate warnings.
@y
The `warnf` function evaluates the format string, then prints the result to the WARNING log. Hugo prints each unique message once to avoid flooding the log with duplicate warnings.
@z

@x
```go-html-template
{{ warnf "The %q shortcode was unable to find %s. See %s" .Name $file .Position }}
```
@y
```go-html-template
{{ warnf "The %q shortcode was unable to find %s. See %s" .Name $file .Position }}
```
@z

@x
To prevent suppression of duplicate messages when using `warnf` for debugging, make each message unique with the [`math.Counter`] function. For example:
@y
To prevent suppression of duplicate messages when using `warnf` for debugging, make each message unique with the [`math.Counter`] function. For example:
@z

@x
```go-html-template
{{ range site.RegularPages }}
  {{ .Section | warnf "%#[2]v [%[1]d]" math.Counter }}
{{ end }}
```
@y
```go-html-template
{{ range site.RegularPages }}
  {{ .Section | warnf "%#[2]v [%[1]d]" math.Counter }}
{{ end }}
```
@z

@x
[`math.Counter`]: /functions/math/counter/
@y
[`math.Counter`]: /functions/math/counter/
@z
