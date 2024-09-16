%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Table render hooks
linkTitle: Tables
description: Create a table render hook to override the rendering of Markdown tables to HTML.
categories: [render hooks]
keywords: []
menu:
  docs:
    parent: render-hooks
    weight: 90
weight: 90
toc: true
---
@y
---
title: Table render hooks
linkTitle: Tables
description: Create a table render hook to override the rendering of Markdown tables to HTML.
categories: [render hooks]
keywords: []
menu:
  docs:
    parent: render-hooks
    weight: 90
weight: 90
toc: true
---
@z

@x
{{< new-in 0.134.0 >}}
@y
{{< new-in 0.134.0 >}}
@z

@x
## Context
@y
## Context
@z

@x
Table render hook templates receive the following [context]:
@y
Table render hook templates receive the following [context]:
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
(`map`) The [Markdown attributes], available if you configure your site as follows:
@y
(`map`) The [Markdown attributes], available if you configure your site as follows:
@z

@x
[Markdown attributes]: /content-management/markdown-attributes/
@y
[Markdown attributes]: /content-management/markdown-attributes/
@z

@x
{{< code-toggle file=hugo >}}
[markup.goldmark.parser.attribute]
block = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup.goldmark.parser.attribute]
block = true
{{< /code-toggle >}}
@z

@x
###### Ordinal
@y
###### Ordinal
@z

@x
(`int`) The zero-based ordinal of the table on the page.
@y
(`int`) The zero-based ordinal of the table on the page.
@z

@x
###### Page
@y
###### Page
@z

@x
(`page`) A reference to the current page.
@y
(`page`) A reference to the current page.
@z

@x
###### PageInner
@y
###### PageInner
@z

@x
(`page`) A reference to a page nested via the [`RenderShortcodes`] method. [See details](#pageinner-details).
@y
(`page`) A reference to a page nested via the [`RenderShortcodes`] method. [See details](#pageinner-details).
@z

@x
[`RenderShortcodes`]: /methods/page/rendershortcodes
@y
[`RenderShortcodes`]: /methods/page/rendershortcodes
@z

@x
###### Position
@y
###### Position
@z

@x
(`string`) The position of the table within the page content.
@y
(`string`) The position of the table within the page content.
@z

@x
###### THead
(`slice`) A slice of table header rows, where each element is a slice of table cells.
@y
###### THead
(`slice`) A slice of table header rows, where each element is a slice of table cells.
@z

@x
###### TBody
(`slice`) A slice of table body rows, where each element is a slice of table cells.
@y
###### TBody
(`slice`) A slice of table body rows, where each element is a slice of table cells.
@z

@x
## Table cells
@y
## Table cells
@z

@x
Each table cell within the slice of slices returned by the `THead` and `TBody` methods has the following fields:
@y
Each table cell within the slice of slices returned by the `THead` and `TBody` methods has the following fields:
@z

@x
###### Alignment
(`string`) The alignment of the text within the table cell, one of `left`, `center`, or `right`.
@y
###### Alignment
(`string`) The alignment of the text within the table cell, one of `left`, `center`, or `right`.
@z

@x
###### Text
(`template.HTML`) The text within the table cell.
@y
###### Text
(`template.HTML`) The text within the table cell.
@z

@x
## Example
@y
## Example
@z

@x
In its default configuration, Hugo renders Markdown tables according to the [GitHub Flavored Markdown specification]. To create a render hook that does the same thing:
@y
In its default configuration, Hugo renders Markdown tables according to the [GitHub Flavored Markdown specification]. To create a render hook that does the same thing:
@z

@x
[GitHub Flavored Markdown specification]: https://github.github.com/gfm/#tables-extension-
@y
[GitHub Flavored Markdown specification]: https://github.github.com/gfm/#tables-extension-
@z

@x
{{< code file=layouts/_default/_markup/render-table.html copy=true >}}
<table
  {{- range $k, $v := .Attributes }}
    {{- if $v }}
      {{- printf " %s=%q" $k $v | safeHTMLAttr }}
    {{- end }}
  {{- end }}>
  <thead>
    {{- range .THead }}
      <tr>
        {{- range . }}
          <th {{ printf "style=%q" (printf "text-align: %s" .Alignment) | safeHTMLAttr }}>
            {{- .Text -}}
          </th>
        {{- end }}
      </tr>
    {{- end }}
  </thead>
  <tbody>
    {{- range .TBody }}
      <tr>
        {{- range . }}
          <td {{ printf "style=%q" (printf "text-align: %s" .Alignment) | safeHTMLAttr }}>
            {{- .Text -}}
          </td>
        {{- end }}
      </tr>
    {{- end }}
  </tbody>
</table>
{{< /code >}}
@y
{{< code file=layouts/_default/_markup/render-table.html copy=true >}}
<table
  {{- range $k, $v := .Attributes }}
    {{- if $v }}
      {{- printf " %s=%q" $k $v | safeHTMLAttr }}
    {{- end }}
  {{- end }}>
  <thead>
    {{- range .THead }}
      <tr>
        {{- range . }}
          <th {{ printf "style=%q" (printf "text-align: %s" .Alignment) | safeHTMLAttr }}>
            {{- .Text -}}
          </th>
        {{- end }}
      </tr>
    {{- end }}
  </thead>
  <tbody>
    {{- range .TBody }}
      <tr>
        {{- range . }}
          <td {{ printf "style=%q" (printf "text-align: %s" .Alignment) | safeHTMLAttr }}>
            {{- .Text -}}
          </td>
        {{- end }}
      </tr>
    {{- end }}
  </tbody>
</table>
{{< /code >}}
@z

@x
{{% include "/render-hooks/_common/pageinner.md" %}}
@y
{{% include "/render-hooks/_common/pageinner.md" %}}
@z
