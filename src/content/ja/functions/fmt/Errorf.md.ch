%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: fmt.Errorf
description: Log an ERROR from a template.
categories: []
keywords: []
action:
  aliases: [errorf]
  related:
    - functions/fmt/Erroridf
    - functions/fmt/Warnf
    - functions/fmt/Warnidf
  returnType: string
  signatures: ['fmt.Errorf FORMAT [INPUT]']
aliases: [/functions/errorf]
---
@y
---
title: fmt.Errorf
description: Log an ERROR from a template.
categories: []
keywords: []
action:
  aliases: [errorf]
  related:
    - functions/fmt/Erroridf
    - functions/fmt/Warnf
    - functions/fmt/Warnidf
  returnType: string
  signatures: ['fmt.Errorf FORMAT [INPUT]']
aliases: [/functions/errorf]
---
@z

@x
{{% include "functions/fmt/_common/fmt-layout.md" %}}
@y
{{% include "functions/fmt/_common/fmt-layout.md" %}}
@z

@x
The `errorf` function evaluates the format string, then prints the result to the ERROR log and fails the build.
@y
The `errorf` function evaluates the format string, then prints the result to the ERROR log and fails the build.
@z

@x
```go-html-template
{{ errorf "The %q shortcode requires a src parameter. See %s" .Name .Position }}
```
@y
```go-html-template
{{ errorf "The %q shortcode requires a src parameter. See %s" .Name .Position }}
```
@z

@x
Use the [`erroridf`] function to allow optional suppression of specific errors.
@y
Use the [`erroridf`] function to allow optional suppression of specific errors.
@z

@x
[`erroridf`]: /functions/fmt/erroridf/
@y
[`erroridf`]: /functions/fmt/erroridf/
@z
