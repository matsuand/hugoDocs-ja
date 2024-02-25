%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Position
description: Returns the filename and position from which the shortcode was called.
categories: []
keywords: []
action:
  related:
    - methods/shortcode/Name
    - functions/fmt/Errorf
  returnType: text.Position
  signatures: [SHORTCODE.Position]
---
@y
---
title: Position
description: Returns the filename and position from which the shortcode was called.
categories: []
keywords: []
action:
  related:
    - methods/shortcode/Name
    - functions/fmt/Errorf
  returnType: text.Position
  signatures: [SHORTCODE.Position]
---
@z

@x
The `Position` method is useful for error reporting. For example, if your shortcode requires a "greeting" parameter:
@y
The `Position` method is useful for error reporting. For example, if your shortcode requires a "greeting" parameter:
@z

@x
{{< code file=layouts/shortcodes/myshortcode.html  >}}
{{ $greeting := "" }}
{{ with .Get "greeting" }}
  {{ $greeting = . }}
{{ else }}
  {{ errorf "The %q shortcode requires a 'greeting' parameter. See %s" .Name .Position }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/shortcodes/myshortcode.html  >}}
{{ $greeting := "" }}
{{ with .Get "greeting" }}
  {{ $greeting = . }}
{{ else }}
  {{ errorf "The %q shortcode requires a 'greeting' parameter. See %s" .Name .Position }}
{{ end }}
{{< /code >}}
@z

@x
In the absence of a "greeting" parameter, Hugo will throw an error message and fail the build:
@y
In the absence of a "greeting" parameter, Hugo will throw an error message and fail the build:
@z

@x
```text
ERROR The "myshortcode" shortcode requires a 'greeting' parameter. See "/home/user/project/content/about.md:11:1"
```
@y
```text
ERROR The "myshortcode" shortcode requires a 'greeting' parameter. See "/home/user/project/content/about.md:11:1"
```
@z

@x
{{% note %}}
The position can be expensive to calculate. Limit its use to error reporting.
{{% /note %}}
@y
{{% note %}}
The position can be expensive to calculate. Limit its use to error reporting.
{{% /note %}}
@z
