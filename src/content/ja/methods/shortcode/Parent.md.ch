%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Parent
description:  Returns the parent shortcode context in nested shortcodes.
categories: []
keywords: []
action:
  related: []
  returnType: hugolib.ShortcodeWithPage
  signatures: [SHORTCODE.Parent]
---
@y
---
title: Parent
description:  Returns the parent shortcode context in nested shortcodes.
categories: []
keywords: []
action:
  related: []
  returnType: hugolib.ShortcodeWithPage
  signatures: [SHORTCODE.Parent]
---
@z

@x
This is useful for inheritance of common shortcode arguments from the root.
@y
This is useful for inheritance of common shortcode arguments from the root.
@z

@x
In this contrived example, the "greeting" shortcode is the parent, and the "now" shortcode is child.
@y
In this contrived example, the "greeting" shortcode is the parent, and the "now" shortcode is child.
@z

@x
{{< code file=content/welcome.md lang=md >}}
{{</* greeting dateFormat="Jan 2, 2006" */>}}
Welcome. Today is {{</* now */>}}.
{{</* /greeting */>}}
{{< /code >}}
@y
{{< code file=content/welcome.md lang=md >}}
{{</* greeting dateFormat="Jan 2, 2006" */>}}
Welcome. Today is {{</* now */>}}.
{{</* /greeting */>}}
{{< /code >}}
@z

@x
{{< code file=layouts/shortcodes/greeting.html  >}}
<div class="greeting">
  {{ trim .Inner "\r\n" | .Page.RenderString }}
</div>
{{< /code >}}
@y
{{< code file=layouts/shortcodes/greeting.html  >}}
<div class="greeting">
  {{ trim .Inner "\r\n" | .Page.RenderString }}
</div>
{{< /code >}}
@z

@x
{{< code file=layouts/shortcodes/now.html  >}}
{{- $dateFormat := "January 2, 2006 15:04:05" }}
@y
{{< code file=layouts/shortcodes/now.html  >}}
{{- $dateFormat := "January 2, 2006 15:04:05" }}
@z

@x
{{- with .Params }}
  {{- with .dateFormat }}
    {{- $dateFormat = . }}
  {{- end }}
{{- else }}
  {{- with .Parent.Params }}
    {{- with .dateFormat }}
      {{- $dateFormat = . }}
    {{- end }}
  {{- end }}
{{- end }}
@y
{{- with .Params }}
  {{- with .dateFormat }}
    {{- $dateFormat = . }}
  {{- end }}
{{- else }}
  {{- with .Parent.Params }}
    {{- with .dateFormat }}
      {{- $dateFormat = . }}
    {{- end }}
  {{- end }}
{{- end }}
@z

@x
{{- now | time.Format $dateFormat -}}
{{< /code >}}
@y
{{- now | time.Format $dateFormat -}}
{{< /code >}}
@z

@x
The "now" shortcode formats the current time using:
@y
The "now" shortcode formats the current time using:
@z

@x
1. The `dateFormat` argument passed to the "now" shortcode, if present
2. The `dateFormat` argument passed to the "greeting" shortcode, if present
3. The default layout string defined at the top of the shortcode
@y
1. The `dateFormat` argument passed to the "now" shortcode, if present
2. The `dateFormat` argument passed to the "greeting" shortcode, if present
3. The default layout string defined at the top of the shortcode
@z
