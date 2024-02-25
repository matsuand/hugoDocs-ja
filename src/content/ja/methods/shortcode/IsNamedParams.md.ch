%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: IsNamedParams
description: Reports whether the shortcode call uses named parameters.
categories: []
keywords: []
action:
  related:
    - methods/shortcode/Get
  returnType: bool
  signatures: [SHORTCODE.IsNamedParams]
---
@y
---
title: IsNamedParams
description: Reports whether the shortcode call uses named parameters.
categories: []
keywords: []
action:
  related:
    - methods/shortcode/Get
  returnType: bool
  signatures: [SHORTCODE.IsNamedParams]
---
@z

@x
To support both positional and named parameters when calling a shortcode, use the `IsNamedParams` method to determine how the shortcode was called.
@y
To support both positional and named parameters when calling a shortcode, use the `IsNamedParams` method to determine how the shortcode was called.
@z

@x
With this shortcode template:
@y
With this shortcode template:
@z

@x
{{< code file=layouts/shortcodes/myshortcode.html  >}}
{{ if .IsNamedParams }}
  {{ printf "%s %s." (.Get "greeting") (.Get "firstName") }}
{{ else }}
  {{ printf "%s %s." (.Get 0) (.Get 1) }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/shortcodes/myshortcode.html  >}}
{{ if .IsNamedParams }}
  {{ printf "%s %s." (.Get "greeting") (.Get "firstName") }}
{{ else }}
  {{ printf "%s %s." (.Get 0) (.Get 1) }}
{{ end }}
{{< /code >}}
@z

@x
Both of these calls return the same value:
@y
Both of these calls return the same value:
@z

@x
{{< code file=content/about.md lang=md >}}
{{</* myshortcode greeting="Hello" firstName="world" */>}}
{{</* myshortcode "Hello" "world" */>}}
{{< /code >}}
@y
{{< code file=content/about.md lang=md >}}
{{</* myshortcode greeting="Hello" firstName="world" */>}}
{{</* myshortcode "Hello" "world" */>}}
{{< /code >}}
@z
