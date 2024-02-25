%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Get
description: Returns the value of the given parameter.
categories: []
keywords: []
action:
  related:
    - methods/shortcode/IsNamedParams
    - methods/shortcode/Params
  returnType: any
  signatures: [SHORTCODE.Get PARAM]
toc: true
---
@y
---
title: Get
description: Returns the value of the given parameter.
categories: []
keywords: []
action:
  related:
    - methods/shortcode/IsNamedParams
    - methods/shortcode/Params
  returnType: any
  signatures: [SHORTCODE.Get PARAM]
toc: true
---
@z

@x
Specify the parameter by position or by name. When calling a shortcode within Markdown, use either positional or named parameters, but not both.
@y
Specify the parameter by position or by name. When calling a shortcode within Markdown, use either positional or named parameters, but not both.
@z

@x
{{% note %}}
Some shortcodes support positional parameters, some support named parameters, and others support both. Refer to the shortcode's documentation for usage details.
{{% /note %}}
@y
{{% note %}}
Some shortcodes support positional parameters, some support named parameters, and others support both. Refer to the shortcode's documentation for usage details.
{{% /note %}}
@z

@x
## Positional parameters
@y
## Positional parameters
@z

@x
This shortcode call uses positional parameters:
@y
This shortcode call uses positional parameters:
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
To retrieve parameters by position:
@y
To retrieve parameters by position:
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
## Named parameters
@y
## Named parameters
@z

@x
This shortcode call uses named parameters:
@y
This shortcode call uses named parameters:
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
To retrieve parameters by name:
@y
To retrieve parameters by name:
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
Parameter names are case-sensitive.
{{% /note %}}
@y
{{% note %}}
Parameter names are case-sensitive.
{{% /note %}}
@z
