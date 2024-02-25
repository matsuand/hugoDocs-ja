%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Code block render hooks
linkTitle: Code blocks
description: Create a code block render hook to override the rendering of Markdown code blocks to HTML.
categories: [render hooks]
keywords: []
menu:
  docs:
    parent: render-hooks
    weight: 30
weight: 30
toc: true
---
@y
---
title: Code block render hooks
linkTitle: Code blocks
description: Create a code block render hook to override the rendering of Markdown code blocks to HTML.
categories: [render hooks]
keywords: []
menu:
  docs:
    parent: render-hooks
    weight: 30
weight: 30
toc: true
---
@z

@x
## Markdown
@y
## Markdown
@z

@x
This Markdown example contains a fenced code block:
@y
This Markdown example contains a fenced code block:
@z

@x
{{< code file=content/example.md lang=text >}}
```bash {class="my-class" id="my-codeblock" lineNos=inline tabWidth=2}
declare a=1
echo "$a"
exit
```
{{< /code >}}
@y
{{< code file=content/example.md lang=text >}}
```bash {class="my-class" id="my-codeblock" lineNos=inline tabWidth=2}
declare a=1
echo "$a"
exit
```
{{< /code >}}
@z

@x
A fenced code block consists of:
@y
A fenced code block consists of:
@z

@x
- A leading [code fence]
- An optional [info string]
- A code sample
- A trailing code fence
@y
- A leading [code fence]
- An optional [info string]
- A code sample
- A trailing code fence
@z

@x
[code fence]: https://spec.commonmark.org/0.31.2/#code-fence
[info string]: https://spec.commonmark.org/0.31.2/#info-string
@y
[code fence]: https://spec.commonmark.org/0.31.2/#code-fence
[info string]: https://spec.commonmark.org/0.31.2/#info-string
@z

@x
In the previous example, the info string contains:
@y
In the previous example, the info string contains:
@z

@x
- The language of the code sample (the first word)
- An optional space-delimited or comma-delimited list of attributes (everything within braces)
@y
- The language of the code sample (the first word)
- An optional space-delimited or comma-delimited list of attributes (everything within braces)
@z

@x
The attributes in the info string can be generic attributes or highlighting options.
@y
The attributes in the info string can be generic attributes or highlighting options.
@z

@x
In the example above, the _generic attributes_ are `class` and `id`. In the absence of special handling within a code block render hook, Hugo adds each generic attribute to the HTML element surrounding the rendered code block. Consistent with its content security model, Hugo removes HTML event attributes such as `onclick` and `onmouseover`. Generic attributes are typically global HTML attributes, but you may include custom attributes as well.
@y
In the example above, the _generic attributes_ are `class` and `id`. In the absence of special handling within a code block render hook, Hugo adds each generic attribute to the HTML element surrounding the rendered code block. Consistent with its content security model, Hugo removes HTML event attributes such as `onclick` and `onmouseover`. Generic attributes are typically global HTML attributes, but you may include custom attributes as well.
@z

@x
In the example above, the _highlighting options_ are `lineNos` and `tabWidth`. Hugo uses the [Chroma] syntax highlighter to render the code sample. You can control the appearance of the rendered code by specifying one or more [highlighting options].
@y
In the example above, the _highlighting options_ are `lineNos` and `tabWidth`. Hugo uses the [Chroma] syntax highlighter to render the code sample. You can control the appearance of the rendered code by specifying one or more [highlighting options].
@z

@x
[Chroma]: https://github.com/alecthomas/chroma/
[highlighting options]: /functions/transform/highlight/#options
@y
[Chroma]: https://github.com/alecthomas/chroma/
[highlighting options]: /functions/transform/highlight/#options
@z

@x
{{% note %}}
Although `style` is a global HTML attribute, when used in an info string it is a highlighting option.
{{% /note %}}
@y
{{% note %}}
Although `style` is a global HTML attribute, when used in an info string it is a highlighting option.
{{% /note %}}
@z

@x
## Context
@y
## Context
@z

@x
Code block render hook templates receive the following [context]:
@y
Code block render hook templates receive the following [context]:
@z

@x
[context]: /getting-started/glossary/#context
@y
[context]: /getting-started/glossary/#context
@z

@x
###### Attributes
@y
###### Attributes
@z

@x
(`map`) The generic attributes from the info string.
@y
(`map`) The generic attributes from the info string.
@z

@x
###### Inner
@y
###### Inner
@z

@x
(`string`) The content between the leading and trailing code fences, excluding the info string.
@y
(`string`) The content between the leading and trailing code fences, excluding the info string.
@z

@x
###### Options
@y
###### Options
@z

@x
(`map`) The highlighting options from the info string.
@y
(`map`) The highlighting options from the info string.
@z

@x
###### Ordinal
@y
###### Ordinal
@z

@x
(`int`) The zero-based ordinal of the code block on the page.
@y
(`int`) The zero-based ordinal of the code block on the page.
@z

@x
###### Page
@y
###### Page
@z

@x
(`page`) A reference to the page containing the code block.
@y
(`page`) A reference to the page containing the code block.
@z

@x
###### Position
@y
###### Position
@z

@x
(`text.Position`) The position of the code block within the page content.
@y
(`text.Position`) The position of the code block within the page content.
@z

@x
###### Type
@y
###### Type
@z

@x
(`string`) The first word of the info string, typically the code language.
@y
(`string`) The first word of the info string, typically the code language.
@z

@x
## Examples
@y
## Examples
@z

@x
In its default configuration, Hugo renders fenced code blocks by passing the code sample through the Chroma syntax highlighter and wrapping the result. To create a render hook that does the same thing:
@y
In its default configuration, Hugo renders fenced code blocks by passing the code sample through the Chroma syntax highlighter and wrapping the result. To create a render hook that does the same thing:
@z

@x
[CommonMark specification]: https://spec.commonmark.org/current/
@y
[CommonMark specification]: https://spec.commonmark.org/current/
@z

@x
{{< code file=layouts/_default/_markup/render-codeblock.html copy=true >}}
{{ $result := transform.HighlightCodeBlock . }}
{{ $result.Wrapped }}
{{< /code >}}
@y
{{< code file=layouts/_default/_markup/render-codeblock.html copy=true >}}
{{ $result := transform.HighlightCodeBlock . }}
{{ $result.Wrapped }}
{{< /code >}}
@z

@x
Although you can use one template with conditional logic to control the behavior on a per-language basis, you can also create language-specific templates.
@y
Although you can use one template with conditional logic to control the behavior on a per-language basis, you can also create language-specific templates.
@z

@x
```text
layouts/
└── _default/
    └── _markup/
        ├── render-codeblock-mermaid.html
        ├── render-codeblock-python.html
        └── render-codeblock.html
```
@y
```text
layouts/
└── _default/
    └── _markup/
        ├── render-codeblock-mermaid.html
        ├── render-codeblock-python.html
        └── render-codeblock.html
```
@z

@x
For example, to create a code block render hook to render [Mermaid] diagrams:
@y
For example, to create a code block render hook to render [Mermaid] diagrams:
@z

@x
[Mermaid]: https://mermaid.js.org/
@y
[Mermaid]: https://mermaid.js.org/
@z

@x
{{< code file=layouts/_default/_markup/render-codeblock-mermaid.html copy=true >}}
<pre class="mermaid">
  {{- .Inner | safeHTML }}
</pre>
{{ .Page.Store.Set "hasMermaid" true }}
{{< /code >}}
@y
{{< code file=layouts/_default/_markup/render-codeblock-mermaid.html copy=true >}}
<pre class="mermaid">
  {{- .Inner | safeHTML }}
</pre>
{{ .Page.Store.Set "hasMermaid" true }}
{{< /code >}}
@z

@x
Then include this snippet at the bottom of the your base template:
@y
Then include this snippet at the bottom of the your base template:
@z

@x
{{< code file=layouts/_default/baseof.html copy=true >}}
{{ if .Store.Get "hasMermaid" }}
  <script type="module">
    import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid/dist/mermaid.esm.min.mjs';
    mermaid.initialize({ startOnLoad: true });
  </script>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/baseof.html copy=true >}}
{{ if .Store.Get "hasMermaid" }}
  <script type="module">
    import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid/dist/mermaid.esm.min.mjs';
    mermaid.initialize({ startOnLoad: true });
  </script>
{{ end }}
{{< /code >}}
@z

@x
See the [diagrams] page for details.
@y
See the [diagrams] page for details.
@z

@x
[diagrams]: /content-management/diagrams/#mermaid-diagrams
@y
[diagrams]: /content-management/diagrams/#mermaid-diagrams
@z

@x
## Embedded
@y
## Embedded
@z

@x
Hugo includes an [embedded code block render hook] to render [GoAT diagrams].
@y
Hugo includes an [embedded code block render hook] to render [GoAT diagrams].
@z

@x
[embedded code block render hook]: {{% eturl render-codeblock-goat %}}
[GoAT diagrams]: /content-management/diagrams/#goat-diagrams-ascii
@y
[embedded code block render hook]: {{% eturl render-codeblock-goat %}}
[GoAT diagrams]: /content-management/diagrams/#goat-diagrams-ascii
@z
