%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Name
description: Returns the shortcode file name, excluding the file extension.
categories: []
keywords: []
action:
  related:
    - methods/shortcode/Position
    - functions/fmt/Errorf
  returnType: string
  signatures: [SHORTCODE.Name]
---
@y
---
title: Name
description: Returns the shortcode file name, excluding the file extension.
categories: []
keywords: []
action:
  related:
    - methods/shortcode/Position
    - functions/fmt/Errorf
  returnType: string
  signatures: [SHORTCODE.Name]
---
@z

@x
The `Name` method is useful for error reporting. For example, if your shortcode requires a "greeting" argument:
@y
The `Name` method is useful for error reporting. For example, if your shortcode requires a "greeting" argument:
@z

@x
{{< code file=layouts/shortcodes/myshortcode.html  >}}
{{ $greeting := "" }}
{{ with .Get "greeting" }}
  {{ $greeting = . }}
{{ else }}
  {{ errorf "The %q shortcode requires a 'greeting' argument. See %s" .Name .Position }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/shortcodes/myshortcode.html  >}}
{{ $greeting := "" }}
{{ with .Get "greeting" }}
  {{ $greeting = . }}
{{ else }}
  {{ errorf "The %q shortcode requires a 'greeting' argument. See %s" .Name .Position }}
{{ end }}
{{< /code >}}
@z

@x
In the absence of a "greeting" argument, Hugo will throw an error message and fail the build:
@y
In the absence of a "greeting" argument, Hugo will throw an error message and fail the build:
@z

@x
```text
ERROR The "myshortcode" shortcode requires a 'greeting' argument. See "/home/user/project/content/about.md:11:1"
```
@y
```text
ERROR The "myshortcode" shortcode requires a 'greeting' argument. See "/home/user/project/content/about.md:11:1"
```
@z
