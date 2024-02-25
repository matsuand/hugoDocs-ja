%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: HasShortcode
description: Reports whether the given shortcode is called by the given page.
categories: []
keywords: []
action:
  related: []
  returnType: bool
  signatures: [PAGE.HasShortcode NAME]
---
@y
---
title: HasShortcode
description: Reports whether the given shortcode is called by the given page.
categories: []
keywords: []
action:
  related: []
  returnType: bool
  signatures: [PAGE.HasShortcode NAME]
---
@z

@x
By example, let's use [Plotly] to render a chart:
@y
By example, let's use [Plotly] to render a chart:
@z

@x
[Plotly]: https://plotly.com/javascript/
@y
[Plotly]: https://plotly.com/javascript/
@z

@x
{{< code file=contents/example.md lang=markdown >}}
{{</* plotly */>}}
{
  "data": [
    {
      "x": ["giraffes", "orangutans", "monkeys"],
      "y": [20, 14, 23],
      "type": "bar"
    }
  ],
}
{{</* /plotly */>}}
{{< /code >}}
@y
{{< code file=contents/example.md lang=markdown >}}
{{</* plotly */>}}
{
  "data": [
    {
      "x": ["giraffes", "orangutans", "monkeys"],
      "y": [20, 14, 23],
      "type": "bar"
    }
  ],
}
{{</* /plotly */>}}
{{< /code >}}
@z

@x
The shortcode is simple:
@y
The shortcode is simple:
@z

@x
{{< code file=layouts/shortcodes/plotly.html  >}}
{{ $id := printf "plotly-%02d" .Ordinal }}
<div id="{{ $id }}"></div>
<script>
  Plotly.newPlot(document.getElementById({{ $id }}), {{ .Inner | safeJS }});
</script>
{{< /code >}}
@y
{{< code file=layouts/shortcodes/plotly.html  >}}
{{ $id := printf "plotly-%02d" .Ordinal }}
<div id="{{ $id }}"></div>
<script>
  Plotly.newPlot(document.getElementById({{ $id }}), {{ .Inner | safeJS }});
</script>
{{< /code >}}
@z

@x
Now we can selectively load the required JavaScript on pages that call the "plotly" shortcode:
@y
Now we can selectively load the required JavaScript on pages that call the "plotly" shortcode:
@z

@x
{{< code file=layouts/baseof.html  >}}
<head>
  ...
  {{ if .HasShortcode "plotly" }}
    <script src="https://cdn.plot.ly/plotly-2.28.0.min.js"></script>
  {{ end }}
  ...
</head>
{{< /code >}}
@y
{{< code file=layouts/baseof.html  >}}
<head>
  ...
  {{ if .HasShortcode "plotly" }}
    <script src="https://cdn.plot.ly/plotly-2.28.0.min.js"></script>
  {{ end }}
  ...
</head>
{{< /code >}}
@z
