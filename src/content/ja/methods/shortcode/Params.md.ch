%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Params
description: Returns a collection of the shortcode parameters.
categories: []
keywords: []
action:
  related:
    - methods/shortcode/Get
  returnType: any
  signatures: [SHORTCODE.Params]
---
@y
---
title: Params
description: Returns a collection of the shortcode parameters.
categories: []
keywords: []
action:
  related:
    - methods/shortcode/Get
  returnType: any
  signatures: [SHORTCODE.Params]
---
@z

@x
When you call a shortcode using positional parameters, the `Params` method returns a slice.
@y
When you call a shortcode using positional parameters, the `Params` method returns a slice.
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
{{< code file=layouts/shortcodes/myshortcode.html  >}}
{{ index .Params 0 }} → Hello
{{ index .Params 1 }} → world
{{< /code >}}
@y
{{< code file=layouts/shortcodes/myshortcode.html  >}}
{{ index .Params 0 }} → Hello
{{ index .Params 1 }} → world
{{< /code >}}
@z

@x
When you call a shortcode using named parameters, the `Params` method returns a map.
@y
When you call a shortcode using named parameters, the `Params` method returns a map.
@z

@x
{{< code file=content/about.md lang=md >}}
{{</* myshortcode greeting="Hello" name="world" */>}}
{{< /code >}}
@y
{{< code file=content/about.md lang=md >}}
{{</* myshortcode greeting="Hello" name="world" */>}}
{{< /code >}}
@z

@x
{{< code file=layouts/shortcodes/myshortcode.html  >}}
{{ .Params.greeting }} → Hello
{{ .Params.name }} → world
{{< /code >}}
@y
{{< code file=layouts/shortcodes/myshortcode.html  >}}
{{ .Params.greeting }} → Hello
{{ .Params.name }} → world
{{< /code >}}
@z
