%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: fmt.Warnidf
description: Log a suppressable WARNING from a template.
categories: []
keywords: []
action:
  aliases: [warnidf]
  related:
    - functions/fmt/Errorf
    - functions/fmt/Erroridf
    - functions/fmt/Warnf
  returnType: string
  signatures: ['fmt.Warnidf ID FORMAT [INPUT]']
aliases: [/functions/warnidf]
---
@y
---
title: fmt.Warnidf
description: Log a suppressable WARNING from a template.
categories: []
keywords: []
action:
  aliases: [warnidf]
  related:
    - functions/fmt/Errorf
    - functions/fmt/Erroridf
    - functions/fmt/Warnf
  returnType: string
  signatures: ['fmt.Warnidf ID FORMAT [INPUT]']
aliases: [/functions/warnidf]
---
@z

@x
{{< new-in 0.123.0 >}}
@y
{{< new-in 0.123.0 >}}
@z

@x
{{% include "functions/fmt/_common/fmt-layout.md" %}}
@y
{{% include "functions/fmt/_common/fmt-layout.md" %}}
@z

@x
The `warnidf` function evaluates the format string, then prints the result to the WARNING log. Unlike the [`warnf`] function, you may suppress warnings logged by the `warnidf` function by adding the message ID to the `ignoreLogs` array in your site configuration.
@y
The `warnidf` function evaluates the format string, then prints the result to the WARNING log. Unlike the [`warnf`] function, you may suppress warnings logged by the `warnidf` function by adding the message ID to the `ignoreLogs` array in your site configuration.
@z

@x
This template code:
@y
This template code:
@z

@x
```go-html-template
{{ warnidf "warning-42" "You should consider fixing this." }}
```
@y
```go-html-template
{{ warnidf "warning-42" "You should consider fixing this." }}
```
@z

@x
Produces this console log:
@y
Produces this console log:
@z

@x
```text
WARN You should consider fixing this.
You can suppress this warning by adding the following to your site configuration:
ignoreLogs = ['warning-42']
```
@y
```text
WARN You should consider fixing this.
You can suppress this warning by adding the following to your site configuration:
ignoreLogs = ['warning-42']
```
@z

@x
To suppress this message:
@y
To suppress this message:
@z

@x
{{< code-toggle file=hugo >}}
ignoreLogs = ["warning-42"]
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
ignoreLogs = ["warning-42"]
{{< /code-toggle >}}
@z

@x
[`warnf`]: /functions/fmt/warnf/
@y
[`warnf`]: /functions/fmt/warnf/
@z
