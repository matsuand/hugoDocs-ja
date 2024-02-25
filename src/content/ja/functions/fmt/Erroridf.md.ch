%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: fmt.Erroridf
description: Log a suppressable ERROR from a template.
categories: []
keywords: []
action:
  aliases: [erroridf]
  related:
    - functions/fmt/Errorf
    - functions/fmt/Warnf
    - functions/fmt/Warnidf
  returnType: string
  signatures: ['fmt.Erroridf ID FORMAT [INPUT]']
aliases: [/functions/erroridf]
---
@y
---
title: fmt.Erroridf
description: Log a suppressable ERROR from a template.
categories: []
keywords: []
action:
  aliases: [erroridf]
  related:
    - functions/fmt/Errorf
    - functions/fmt/Warnf
    - functions/fmt/Warnidf
  returnType: string
  signatures: ['fmt.Erroridf ID FORMAT [INPUT]']
aliases: [/functions/erroridf]
---
@z

@x
{{% include "functions/fmt/_common/fmt-layout.md" %}}
@y
{{% include "functions/fmt/_common/fmt-layout.md" %}}
@z

@x
The `erroridf` function evaluates the format string, then prints the result to the ERROR log and fails the build. Unlike the [`errorf`] function, you may suppress errors logged by the `erroridf` function by adding the message ID to the `ignoreLogs` array in your site configuration.
@y
The `erroridf` function evaluates the format string, then prints the result to the ERROR log and fails the build. Unlike the [`errorf`] function, you may suppress errors logged by the `erroridf` function by adding the message ID to the `ignoreLogs` array in your site configuration.
@z

@x
This template code:
@y
This template code:
@z

@x
```go-html-template
{{ erroridf "error-42" "You should consider fixing this." }}
```
@y
```go-html-template
{{ erroridf "error-42" "You should consider fixing this." }}
```
@z

@x
Produces this console log:
@y
Produces this console log:
@z

@x
```text
ERROR You should consider fixing this.
You can suppress this error by adding the following to your site configuration:
ignoreLogs = ['error-42']
```
@y
```text
ERROR You should consider fixing this.
You can suppress this error by adding the following to your site configuration:
ignoreLogs = ['error-42']
```
@z

@x
To suppress this message:
@y
To suppress this message:
@z

@x
{{< code-toggle file=hugo >}}
ignoreLogs = ["error-42"]
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
ignoreLogs = ["error-42"]
{{< /code-toggle >}}
@z

@x
[`errorf`]: /functions/fmt/errorf/
@y
[`errorf`]: /functions/fmt/errorf/
@z
