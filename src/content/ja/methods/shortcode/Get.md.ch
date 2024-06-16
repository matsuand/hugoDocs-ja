%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Get
description: Returns the value of the given argument.
categories: []
keywords: []
action:
  related:
    - methods/shortcode/IsNamedParams
    - methods/shortcode/Params
  returnType: any
  signatures: [SHORTCODE.Get ARG]
toc: true
---
@y
---
title: Get
description: Returns the value of the given argument.
categories: []
keywords: []
action:
  related:
    - methods/shortcode/IsNamedParams
    - methods/shortcode/Params
  returnType: any
  signatures: [SHORTCODE.Get ARG]
toc: true
---
@z

@x
Specify the argument by position or by name. When calling a shortcode within Markdown, use either positional or named argument, but not both.
@y
Specify the argument by position or by name. When calling a shortcode within Markdown, use either positional or named argument, but not both.
@z

@x
{{% note %}}
Some shortcodes support positional arguments, some support named arguments, and others support both. Refer to the shortcode's documentation for usage details.
{{% /note %}}
@y
{{% note %}}
Some shortcodes support positional arguments, some support named arguments, and others support both. Refer to the shortcode's documentation for usage details.
{{% /note %}}
@z

@x
## Positional arguments
@y
## Positional arguments
@z

@x
This shortcode call uses positional arguments:
@y
This shortcode call uses positional arguments:
@z

@x
{{< code file=content/about.md lang=md >}}
{{</* myshortcode "Hello" "world" */>}}
{{< /code >}}
@y
{{< code file=content/about.md lang=md >}}
{{</* myshortcode "Hello" "world" */>}}
{{< /code >}}
@z

@x
To retrieve arguments by position:
@y
To retrieve arguments by position:
@z

@x
{{< code file=layouts/shortcodes/myshortcode.html  >}}
{{ printf "%s %s." (.Get 0) (.Get 1) }} → Hello world.
{{< /code >}}
@y
{{< code file=layouts/shortcodes/myshortcode.html  >}}
{{ printf "%s %s." (.Get 0) (.Get 1) }} → Hello world.
{{< /code >}}
@z

@x
## Named arguments
@y
## Named arguments
@z

@x
This shortcode call uses named arguments:
@y
This shortcode call uses named arguments:
@z

@x
{{< code file=content/about.md lang=md >}}
{{</* myshortcode greeting="Hello" firstName="world" */>}}
{{< /code >}}
@y
{{< code file=content/about.md lang=md >}}
{{</* myshortcode greeting="Hello" firstName="world" */>}}
{{< /code >}}
@z

@x
To retrieve arguments by name:
@y
To retrieve arguments by name:
@z

@x
{{< code file=layouts/shortcodes/myshortcode.html  >}}
{{ printf "%s %s." (.Get "greeting") (.Get "firstName") }} → Hello world.
{{< /code >}}
@y
{{< code file=layouts/shortcodes/myshortcode.html  >}}
{{ printf "%s %s." (.Get "greeting") (.Get "firstName") }} → Hello world.
{{< /code >}}
@z

@x
{{% note %}}
Argument names are case-sensitive.
{{% /note %}}
@y
{{% note %}}
Argument names are case-sensitive.
{{% /note %}}
@z
